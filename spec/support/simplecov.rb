require 'simplecov'
SimpleCov.start 'rails' do
  add_filter %w[bin db config spec test]
  add_filter ["app/channels", "app/helpers"]

  add_group "Businesses", "app/businesses"
  add_group "Models", "app/models"
  add_group "Controllers", "app/controllers"
  add_group "Helpers", "app/helpers"

end
