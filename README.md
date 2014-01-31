# Omniauth::Vitae

[![Build Status](https://travis-ci.org/PeopleAdmin/omniauth-vitae)](https://travis-ci.org/PeopleAdmin/omniauth-vitae)

An OmniAuth strategy for authenticating with
[Vitae](https://chroniclevitae.com) via OAuth2.

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-vitae'

And then execute:

    $ bundle

## Usage

```ruby
use OmniAuth::Builder do
  vitae_app_id = ENV.fetch 'VITAE_OAUTH_APP_ID'
  vitae_secret = ENV.fetch 'VITAE_OAUTH_SECRET'
  provider :vitae, vitae_app_id, vitae_secret
end
```

