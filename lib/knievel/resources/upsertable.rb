# frozen_string_literal: true

module Knievel
  module Resources
    # Single-row upsert-by-external-id helper. Builds a
    # `BatchUpsert*Request` carrying exactly one row and calls
    # the resource's `batch_upsert_*` endpoint — which is a
    # single Postgres transaction with the upsert keyed off
    # `external_id`. Returns the upserted row from
    # `result.items.first`.
    #
    # Per `MIGRATION_RX.md`: this is the path the rx-side
    # wrapper used to take by hand. Folding it into the gem
    # means callers stop reinventing the create/409/update
    # dance and the rx wrapper can be deleted.
    #
    # Subclasses configure:
    #   * `batch_upsert_method`  - method name on `api_class`
    #   * `batch_upsert_request_class`  - `BatchUpsert*Request` model
    #   * `batch_upsert_row_class`      - `BatchUpsert*Row` model
    module Upsertable
      def upsert(external_id:, **attrs)
        unless respond_to?(:batch_upsert_method) &&
               respond_to?(:batch_upsert_request_class) &&
               respond_to?(:batch_upsert_row_class)
          raise NotImplementedError, "#{self.class} did not configure Upsertable"
        end
        row = batch_upsert_row_class.new(attrs.merge(external_id: external_id))
        request = batch_upsert_request_class.new(items: [row])
        api = api_class.new(@api_client)
        result = api.public_send(batch_upsert_method, @project_id, request)
        result.items.first
      end
    end
  end
end
