ShopifyApp.configure do |config|
  config.api_key = ENV['SHOPIFY_API_KEY']
  config.secret = ENV['SHOPIFY_API_SECRET']
  config.scope = 'read_orders, read_products'
  config.embedded_app = true

  config.scripttags = [
    {
      event: 'onload', src: (lambda do |_domain|
        ActionController::Base.helpers.asset_url('shopify/test.js')
      end)
    }
  ]
end
