# frozen_string_literal: true

require "faraday"
require "faraday_middleware"

module Infusionsoft
  module REST
    autoload :Client, "infusionsoft/rest/client"
    autoload :Collection, "infusionsoft/rest/collection"
    autoload :Configurable, "infusionsoft/rest/configurable"
    autoload :Connection, "infusionsoft/rest/connection"
    autoload :Default, "infusionsoft/rest/default"
    autoload :Error, "infusionsoft/rest/error"
    autoload :Object, "infusionsoft/rest/object"
    autoload :Resource, "infusionsoft/rest/resource"

    # High-level categories of API calls
    autoload :AccountResource, "infusionsoft/rest/resources/account_resource"
    autoload :AffiliatesResource, "infusionsoft/rest/resources/affiliates_resource"
    autoload :CampaignsResource, "infusionsoft/rest/resources/campaigns_resource"
    autoload :CompaniesResource, "infusionsoft/rest/resources/companies_resource"
    autoload :ContactsResource, "infusionsoft/rest/resources/contacts_resource"
    autoload :EmailAddressesResource, "infusionsoft/rest/resources/email_addresses_resource"
    autoload :EmailsResource, "infusionsoft/rest/resources/emails_resource"
    autoload :FilesResource, "infusionsoft/rest/resources/files_resource"
    autoload :HooksResource, "infusionsoft/rest/resources/hooks_resource"
    autoload :LocaleResource, "infusionsoft/rest/resources/locale_resource"
    autoload :MerchantsResource, "infusionsoft/rest/resources/merchants_resource"
    autoload :NotesResource, "infusionsoft/rest/resources/notes_resource"
    autoload :OpportunitiesResource, "infusionsoft/rest/resources/opportunities_resource"
    autoload :OrdersResource, "infusionsoft/rest/resources/orders_resource"
    autoload :ProductsResource, "infusionsoft/rest/resources/products_resource"
    autoload :SettingsResource, "infusionsoft/rest/resources/settings_resource"
    autoload :SubscriptionsResource, "infusionsoft/rest/resources/subscriptions_resource"
    autoload :TagsResource, "infusionsoft/rest/resources/tags_resource"
    autoload :TasksResource, "infusionsoft/rest/resources/tasks_resource"
    autoload :TransactionsResource, "infusionsoft/rest/resources/transactions_resource"
    autoload :UserInfoResource, "infusionsoft/rest/resources/user_info_resource"
    autoload :UsersResource, "infusionsoft/rest/resources/users_resource"

    # Classes used to return a nicer object wrapping the response data
    autoload :Account, "infusionsoft/rest/objects/account"
    autoload :Affiliate, "infusionsoft/rest/objects/affiliate"
    autoload :AffiliateClawback, "infusionsoft/rest/objects/affiliate_clawback"
    autoload :AffiliateCommission, "infusionsoft/rest/objects/affiliate_commission"
    autoload :AffiliatePayment, "infusionsoft/rest/objects/affiliate_payment"
    autoload :AffiliateProgram, "infusionsoft/rest/objects/affiliate_program"
    autoload :AffiliateRedirect, "infusionsoft/rest/objects/affiliate_redirect"
    autoload :AffiliateSummary, "infusionsoft/rest/objects/affiliate_summary"
    autoload :Appointment, "infusionsoft/rest/objects/appointment"
    autoload :Campaign, "infusionsoft/rest/objects/campaign"
    autoload :Company, "infusionsoft/rest/objects/company"
    autoload :Contact, "infusionsoft/rest/objects/contact"
    autoload :Email, "infusionsoft/rest/objects/email"
    autoload :EmailAddress, "infusionsoft/rest/objects/email_address"
    autoload :File, "infusionsoft/rest/objects/file"
    autoload :HookSubscription, "infusionsoft/rest/objects/hook_subscription"
    autoload :Merchant, "infusionsoft/rest/objects/merchant"
    autoload :Note, "infusionsoft/rest/objects/note"
    autoload :Opportunity, "infusionsoft/rest/objects/opportunity"
    autoload :Order, "infusionsoft/rest/objects/order"
    autoload :OrderItem, "infusionsoft/rest/objects/order_item"
    autoload :OrderPayPlan, "infusionsoft/rest/objects/order_pay_plan"
    autoload :OrderPayment, "infusionsoft/rest/objects/order_payment"
    autoload :OrderTransaction, "infusionsoft/rest/objects/order_transaction"
    autoload :Product, "infusionsoft/rest/objects/product"
    autoload :ProductImage, "infusionsoft/rest/objects/product_image"
    autoload :ProductSubscription, "infusionsoft/rest/objects/product_subscription"
    autoload :Stage, "infusionsoft/rest/objects/stage"
    autoload :Subscription, "infusionsoft/rest/objects/subscription"
    autoload :Tag, "infusionsoft/rest/objects/tag"
    autoload :TagCategory, "infusionsoft/rest/objects/tag_category"
    autoload :Task, "infusionsoft/rest/objects/task"
    autoload :User, "infusionsoft/rest/objects/user"
    autoload :UserInfo, "infusionsoft/rest/objects/user_info"

    class << self
      include Infusionsoft::REST::Configurable

      def client
        return @client if defined?(@client) && @client.same_options?(options)
        @client = Infusionsoft::REST::Client.new(options)
      end
    end
  end
end

Infusionsoft::REST.setup
