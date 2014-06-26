# Example of using MailChimp's API with Ruby on Rails

When a new user is created the MailChimp list endpoint is called and the user's email address is added to the List ID that you provide.

* [Uses the Gibbon gem for MailChimp API](https://github.com/amro/gibbon)
* [Uses the Devise gem gor user creation/authentication](https://github.com/plataformatec/devise)
* [I used this tutorial to help to integrate Gibbon with Ruby on Rails User model](https://www.uludum.org/courses/120-ruby-on-rails-recipes/subsections/2180-integrating-mailchimp-with-your-rails-application)
## How to use

1. git clone [git@github.com:harrythree/mailchimp_subscribe_example.git](git@github.com:harrythree/mailchimp_subscribe_example.git)
2. Set up application.yml environment variables. You'll need to get your MailChimp API Key and the List ID you want to subscribe users to.
3. bundle install
4. rails s
