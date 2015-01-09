# OmniAuth Vimeo

Completely rewritten to work with current Vimeo API (v 3.2).

This is an OmniAuth strategy for authenticating to Vimeo using OAuth2 to work with Vimeo's current API. To
use it, you'll need to sign up for an OAuth2 Application ID and Secret
on the [Vimeo Applications Page](https://developer.vimeo.com/apps).
You can read more about Vimdeo's OAuth2 at the [developer page](https://developer.vimeo.com/api/authentication)


## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-vimeo', github: "accidental/omniauth-vimeo"

And then execute:

    $ bundle install

## Usage

If omniauth-vimeo is ready to go, you need to add the following lines to your `config/initializers/omniauth.rb`:

    Rails.application.config.middleware.use OmniAuth::Builder do
        provider :vimeo, VIMEO_KEY, VIMEO_SECRET
    end

If you need other permissions use the following lines (omitting permissions you don't need):

    Rails.application.config.middleware.use OmniAuth::Builder do
        provider :vimeo, VIMEO_KEY, VIMEO_SECRET, authorize_params: {scope: "public private purchased create edit delete interact upload"}
    end

You need to replace the VIMEO_KEY and VIMEO_SECRET with your own credentials, you can get them at the Vimeo's developer page as mentioned above.

Open the following URL and connect your Vimeo account with your application:

    /auth/vimeo

## Supported Rubies

OmniAuth Vimeo is tested under 1.9.3 and 2.1.2 with Rails 4.1

## TODO

- Rewrite Spec tests.

## License

Copyright (c) 2014 Peter Gerard.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
