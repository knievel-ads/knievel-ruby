# frozen_string_literal: true

require "monitor"

module Knievel
  module Auth
    # File-backed bearer-token source for k8s ServiceAccount
    # tokens (kubelet rewrites the file every few minutes;
    # see "Recommended path: Kubernetes SA tokens" in
    # `MIGRATION_RX.md`).
    #
    # Re-reads the file at most once per `ttl_seconds` so we
    # don't hit disk on every API call. The cached value is
    # invalidated on TTL expiry, but file rewrites in between
    # are not picked up — `ttl_seconds` is the upper bound on
    # how stale a token can be when the rotation happens.
    # 30 s matches what the rx initializer was doing manually
    # and is well under the typical kubelet rotation window.
    class JwtFileTokenSource
      DEFAULT_TTL_SECONDS = 30

      def initialize(path, ttl_seconds: DEFAULT_TTL_SECONDS, clock: -> { Process.clock_gettime(Process::CLOCK_MONOTONIC) })
        @path = path
        @ttl_seconds = ttl_seconds
        @clock = clock
        @cached_token = nil
        @cached_at = nil
        @monitor = Monitor.new
      end

      attr_reader :path

      def token
        @monitor.synchronize do
          now = @clock.call
          if @cached_at.nil? || (now - @cached_at) >= @ttl_seconds
            @cached_token = File.read(@path).strip
            @cached_at = now
          end
          @cached_token
        end
      end

      # Returns a `Proc` suitable for assignment to
      # `Knievel::Configuration#access_token_getter`.
      def to_proc
        method(:token).to_proc
      end
    end
  end
end
