# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/google_ads/v2/resources/geo_target_constant.proto

require 'google/protobuf'

require 'google/ads/google_ads/v2/enums/geo_target_constant_status_pb'
require 'google/protobuf/wrappers_pb'
require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.ads.googleads.v2.resources.GeoTargetConstant" do
    optional :resource_name, :string, 1
    optional :id, :message, 3, "google.protobuf.Int64Value"
    optional :name, :message, 4, "google.protobuf.StringValue"
    optional :country_code, :message, 5, "google.protobuf.StringValue"
    optional :target_type, :message, 6, "google.protobuf.StringValue"
    optional :status, :enum, 7, "google.ads.googleads.v2.enums.GeoTargetConstantStatusEnum.GeoTargetConstantStatus"
    optional :canonical_name, :message, 8, "google.protobuf.StringValue"
  end
end

module Google::Ads::GoogleAds::V2::Resources
  GeoTargetConstant = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v2.resources.GeoTargetConstant").msgclass
end
