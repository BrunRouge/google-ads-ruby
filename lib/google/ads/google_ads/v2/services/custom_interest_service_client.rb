# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# EDITING INSTRUCTIONS
# This file was generated from the file
# https://github.com/googleapis/googleapis/blob/master/google/ads/google_ads/v2/services/custom_interest_service.proto,
# and updates to that file get reflected here through a refresh process.
# For the short term, the refresh process will only be runnable by Google
# engineers.

require "json"
require "pathname"

require "google/gax"

require "google/ads/google_ads/v2/services/custom_interest_service_pb"
require "google/ads/google_ads/v2/services/credentials"

module Google
  module Ads
    module GoogleAds
      module V2
        module Services
          # Service to manage custom interests.
          #
          # @!attribute [r] custom_interest_service_stub
          #   @return [Google::Ads::GoogleAds::V2::Services::CustomInterestService::Stub]
          class CustomInterestServiceClient
            attr_reader :custom_interest_service_stub

            # The default address of the service.
            SERVICE_ADDRESS = "googleads.googleapis.com".freeze

            # The default port of the service.
            DEFAULT_SERVICE_PORT = 443

            # The default set of gRPC interceptors.
            GRPC_INTERCEPTORS = []

            DEFAULT_TIMEOUT = 30

            # The scopes needed to make gRPC calls to all of the methods defined in
            # this service.
            ALL_SCOPES = [
            ].freeze


            CUSTOM_INTEREST_PATH_TEMPLATE = Google::Gax::PathTemplate.new(
              "customers/{customer}/customInterests/{custom_interest}"
            )

            private_constant :CUSTOM_INTEREST_PATH_TEMPLATE

            # Returns a fully-qualified custom_interest resource name string.
            # @param customer [String]
            # @param custom_interest [String]
            # @return [String]
            def self.custom_interest_path customer, custom_interest
              CUSTOM_INTEREST_PATH_TEMPLATE.render(
                :"customer" => customer,
                :"custom_interest" => custom_interest
              )
            end

            # @param credentials [Google::Auth::Credentials, String, Hash, GRPC::Core::Channel, GRPC::Core::ChannelCredentials, Proc]
            #   Provides the means for authenticating requests made by the client. This parameter can
            #   be many types.
            #   A `Google::Auth::Credentials` uses a the properties of its represented keyfile for
            #   authenticating requests made by this client.
            #   A `String` will be treated as the path to the keyfile to be used for the construction of
            #   credentials for this client.
            #   A `Hash` will be treated as the contents of a keyfile to be used for the construction of
            #   credentials for this client.
            #   A `GRPC::Core::Channel` will be used to make calls through.
            #   A `GRPC::Core::ChannelCredentials` for the setting up the RPC client. The channel credentials
            #   should already be composed with a `GRPC::Core::CallCredentials` object.
            #   A `Proc` will be used as an updater_proc for the Grpc channel. The proc transforms the
            #   metadata for requests, generally, to give OAuth credentials.
            # @param scopes [Array<String>]
            #   The OAuth scopes for this service. This parameter is ignored if
            #   an updater_proc is supplied.
            # @param client_config [Hash]
            #   A Hash for call options for each method. See
            #   Google::Gax#construct_settings for the structure of
            #   this data. Falls back to the default config if not specified
            #   or the specified config is missing data points.
            # @param timeout [Numeric]
            #   The default timeout, in seconds, for calls made through this client.
            # @param metadata [Hash]
            #   Default metadata to be sent with each request. This can be overridden on a per call basis.
            # @param exception_transformer [Proc]
            #   An optional proc that intercepts any exceptions raised during an API call to inject
            #   custom error handling.
            def initialize \
                credentials: nil,
                scopes: ALL_SCOPES,
                client_config: {},
                timeout: DEFAULT_TIMEOUT,
                metadata: nil,
                exception_transformer: nil,
                lib_name: nil,
                lib_version: ""
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "google/gax/grpc"
              require "google/ads/google_ads/v2/services/custom_interest_service_services_pb"

              credentials ||= Google::Ads::GoogleAds::V2::Services::Credentials.default

              if credentials.is_a?(String) || credentials.is_a?(Hash)
                updater_proc = Google::Ads::GoogleAds::V2::Services::Credentials.new(credentials).updater_proc
              end
              if credentials.is_a?(GRPC::Core::Channel)
                channel = credentials
              end
              if credentials.is_a?(GRPC::Core::ChannelCredentials)
                chan_creds = credentials
              end
              if credentials.is_a?(Proc)
                updater_proc = credentials
              end
              if credentials.is_a?(Google::Auth::Credentials)
                updater_proc = credentials.updater_proc
              end

              package_version = Gem.loaded_specs['google-ads-googleads'].version.version

              google_api_client = "gl-ruby/#{RUBY_VERSION}"
              google_api_client << " #{lib_name}/#{lib_version}" if lib_name
              google_api_client << " gapic/#{package_version} gax/#{Google::Gax::VERSION}"
              google_api_client << " grpc/#{GRPC::VERSION}"
              google_api_client.freeze

              headers = { :"x-goog-api-client" => google_api_client }
              headers.merge!(metadata) unless metadata.nil?
              client_config_file = Pathname.new(__dir__).join(
                "custom_interest_service_client_config.json"
              )
              defaults = client_config_file.open do |f|
                Google::Gax.construct_settings(
                  "google.ads.googleads.v2.services.CustomInterestService",
                  JSON.parse(f.read),
                  client_config,
                  Google::Gax::Grpc::STATUS_CODE_NAMES,
                  timeout,
                  errors: Google::Gax::Grpc::API_ERRORS,
                  metadata: headers
                )
              end

              # Allow overriding the service path/port in subclasses.
              service_path = self.class::SERVICE_ADDRESS
              port = self.class::DEFAULT_SERVICE_PORT
              interceptors = self.class::GRPC_INTERCEPTORS
              @custom_interest_service_stub = Google::Gax::Grpc.create_stub(
                service_path,
                port,
                chan_creds: chan_creds,
                channel: channel,
                updater_proc: updater_proc,
                scopes: scopes,
                interceptors: interceptors,
                &Google::Ads::GoogleAds::V2::Services::CustomInterestService::Stub.method(:new)
              )

              @get_custom_interest = Google::Gax.create_api_call(
                @custom_interest_service_stub.method(:get_custom_interest),
                defaults["get_custom_interest"],
                exception_transformer: exception_transformer,
                params_extractor: proc do |request|
                  {'resource_name' => request.resource_name}
                end
              )
              @mutate_custom_interests = Google::Gax.create_api_call(
                @custom_interest_service_stub.method(:mutate_custom_interests),
                defaults["mutate_custom_interests"],
                exception_transformer: exception_transformer,
                params_extractor: proc do |request|
                  {'customer_id' => request.customer_id}
                end
              )
            end

            # Service calls

            # Returns the requested custom interest in full detail.
            #
            # @param resource_name [String]
            #   The resource name of the custom interest to fetch.
            # @param options [Google::Gax::CallOptions]
            #   Overrides the default settings for this call, e.g, timeout,
            #   retries, etc.
            # @yield [result, operation] Access the result along with the RPC operation
            # @yieldparam result [Google::Ads::GoogleAds::V2::Resources::CustomInterest]
            # @yieldparam operation [GRPC::ActiveCall::Operation]
            # @return [Google::Ads::GoogleAds::V2::Resources::CustomInterest]
            # @raise [Google::Gax::GaxError] if the RPC is aborted.
            # @example
            #   require "google/ads/google_ads"
            #
            #   custom_interest_client = Google::Ads::GoogleAds::CustomInterest.new(version: :v2)
            #   formatted_resource_name = Google::Ads::GoogleAds::V2::Services::CustomInterestServiceClient.custom_interest_path("[CUSTOMER]", "[CUSTOM_INTEREST]")
            #   response = custom_interest_client.get_custom_interest(formatted_resource_name)

            def get_custom_interest \
                resource_name,
                options: nil,
                &block
              req = {
                resource_name: resource_name
              }.delete_if { |_, v| v.nil? }
              req = Google::Gax::to_proto(req, Google::Ads::GoogleAds::V2::Services::GetCustomInterestRequest)
              @get_custom_interest.call(req, options, &block)
            end

            # Creates or updates custom interests. Operation statuses are returned.
            #
            # @param customer_id [String]
            #   The ID of the customer whose custom interests are being modified.
            # @param operations [Array<Google::Ads::GoogleAds::V2::Services::CustomInterestOperation | Hash>]
            #   The list of operations to perform on individual custom interests.
            #   A hash of the same form as `Google::Ads::GoogleAds::V2::Services::CustomInterestOperation`
            #   can also be provided.
            # @param validate_only [true, false]
            #   If true, the request is validated but not executed. Only errors are
            #   returned, not results.
            # @param options [Google::Gax::CallOptions]
            #   Overrides the default settings for this call, e.g, timeout,
            #   retries, etc.
            # @yield [result, operation] Access the result along with the RPC operation
            # @yieldparam result [Google::Ads::GoogleAds::V2::Services::MutateCustomInterestsResponse]
            # @yieldparam operation [GRPC::ActiveCall::Operation]
            # @return [Google::Ads::GoogleAds::V2::Services::MutateCustomInterestsResponse]
            # @raise [Google::Gax::GaxError] if the RPC is aborted.
            # @example
            #   require "google/ads/google_ads"
            #
            #   custom_interest_client = Google::Ads::GoogleAds::CustomInterest.new(version: :v2)
            #
            #   # TODO: Initialize `customer_id`:
            #   customer_id = ''
            #
            #   # TODO: Initialize `operations`:
            #   operations = []
            #   response = custom_interest_client.mutate_custom_interests(customer_id, operations)

            def mutate_custom_interests \
                customer_id,
                operations,
                validate_only: nil,
                options: nil,
                &block
              req = {
                customer_id: customer_id,
                operations: operations,
                validate_only: validate_only
              }.delete_if { |_, v| v.nil? }
              req = Google::Gax::to_proto(req, Google::Ads::GoogleAds::V2::Services::MutateCustomInterestsRequest)
              @mutate_custom_interests.call(req, options, &block)
            end
          end
        end
      end
    end
  end
end
