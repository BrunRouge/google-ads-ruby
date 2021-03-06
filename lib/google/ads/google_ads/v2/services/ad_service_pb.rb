# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/google_ads/v2/services/ad_service.proto

require 'google/protobuf'

require 'google/ads/google_ads/v2/resources/ad_pb'
require 'google/api/annotations_pb'
require 'google/protobuf/field_mask_pb'
require 'google/api/client_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.ads.googleads.v2.services.GetAdRequest" do
    optional :resource_name, :string, 1
  end
  add_message "google.ads.googleads.v2.services.MutateAdsRequest" do
    optional :customer_id, :string, 1
    repeated :operations, :message, 2, "google.ads.googleads.v2.services.AdOperation"
  end
  add_message "google.ads.googleads.v2.services.AdOperation" do
    optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    oneof :operation do
      optional :update, :message, 1, "google.ads.googleads.v2.resources.Ad"
    end
  end
  add_message "google.ads.googleads.v2.services.MutateAdsResponse" do
    repeated :results, :message, 2, "google.ads.googleads.v2.services.MutateAdResult"
  end
  add_message "google.ads.googleads.v2.services.MutateAdResult" do
    optional :resource_name, :string, 1
  end
end

module Google::Ads::GoogleAds::V2::Services
  GetAdRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v2.services.GetAdRequest").msgclass
  MutateAdsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v2.services.MutateAdsRequest").msgclass
  AdOperation = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v2.services.AdOperation").msgclass
  MutateAdsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v2.services.MutateAdsResponse").msgclass
  MutateAdResult = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v2.services.MutateAdResult").msgclass
end
