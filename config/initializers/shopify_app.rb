ShopifyApp.configure do |config|
  config.api_key = ENV['SHOPIFY_API_KEY']
  config.secret = ENV['SHOPIFY_API_SECRET']
  config.scope = [
    :read_customers, :write_customers,
    :read_products, :write_products,
    :read_script_tags, :write_script_tags
  ].join(', ')
  config.embedded_app = true
end

ActiveSupport.on_load(:after_initialize) do
  ShopifyApp.configure do |config|
    config.scripttags = [
      {
        event: 'onload', display_scope: 'online_store',
        src: ActionController::Base.helpers.asset_url('shopify/test.js')
      }
    ]
  end
end
