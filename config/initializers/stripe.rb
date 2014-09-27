if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV["STRIPE_PKEY"] ,
    :secret_key      => ENV["STRIPE_SKEY"]
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_FGc1902hlBEyix1uLWduK3Is',
    :secret_key      => 'sk_test_ck67ceRROcTBXaYIuROgIqPT'
  }
end
Stripe.api_key = Rails.configuration.stripe[:secret_key]