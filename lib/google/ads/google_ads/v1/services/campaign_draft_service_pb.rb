# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/google_ads/v1/services/campaign_draft_service.proto

require 'google/protobuf'

require 'google/ads/google_ads/v1/resources/campaign_draft_pb'
require 'google/api/annotations_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/field_mask_pb'
require 'google/rpc/status_pb'
require 'google/api/client_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.ads.googleads.v1.services.GetCampaignDraftRequest" do
    optional :resource_name, :string, 1
  end
  add_message "google.ads.googleads.v1.services.MutateCampaignDraftsRequest" do
    optional :customer_id, :string, 1
    repeated :operations, :message, 2, "google.ads.googleads.v1.services.CampaignDraftOperation"
    optional :partial_failure, :bool, 3
    optional :validate_only, :bool, 4
  end
  add_message "google.ads.googleads.v1.services.PromoteCampaignDraftRequest" do
    optional :campaign_draft, :string, 1
  end
  add_message "google.ads.googleads.v1.services.CampaignDraftOperation" do
    optional :update_mask, :message, 4, "google.protobuf.FieldMask"
    oneof :operation do
      optional :create, :message, 1, "google.ads.googleads.v1.resources.CampaignDraft"
      optional :update, :message, 2, "google.ads.googleads.v1.resources.CampaignDraft"
      optional :remove, :string, 3
    end
  end
  add_message "google.ads.googleads.v1.services.MutateCampaignDraftsResponse" do
    optional :partial_failure_error, :message, 3, "google.rpc.Status"
    repeated :results, :message, 2, "google.ads.googleads.v1.services.MutateCampaignDraftResult"
  end
  add_message "google.ads.googleads.v1.services.MutateCampaignDraftResult" do
    optional :resource_name, :string, 1
  end
  add_message "google.ads.googleads.v1.services.ListCampaignDraftAsyncErrorsRequest" do
    optional :resource_name, :string, 1
    optional :page_token, :string, 2
    optional :page_size, :int32, 3
  end
  add_message "google.ads.googleads.v1.services.ListCampaignDraftAsyncErrorsResponse" do
    repeated :errors, :message, 1, "google.rpc.Status"
    optional :next_page_token, :string, 2
  end
end

module Google::Ads::GoogleAds::V1::Services
  GetCampaignDraftRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v1.services.GetCampaignDraftRequest").msgclass
  MutateCampaignDraftsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v1.services.MutateCampaignDraftsRequest").msgclass
  PromoteCampaignDraftRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v1.services.PromoteCampaignDraftRequest").msgclass
  CampaignDraftOperation = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v1.services.CampaignDraftOperation").msgclass
  MutateCampaignDraftsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v1.services.MutateCampaignDraftsResponse").msgclass
  MutateCampaignDraftResult = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v1.services.MutateCampaignDraftResult").msgclass
  ListCampaignDraftAsyncErrorsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v1.services.ListCampaignDraftAsyncErrorsRequest").msgclass
  ListCampaignDraftAsyncErrorsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v1.services.ListCampaignDraftAsyncErrorsResponse").msgclass
end
