# Create test data

By gem Faker app create 50 fake cbooksustomer to your databse. You can change this number in file db/seeds.rb

`bundle exec rails db:seed`

# Google API integration

In app user can log in by google account. 
Use this tutorial https://richonrails.com/articles/google-authentication-in-ruby-on-rails/ to get your Google API credentials. I recomended to put it in a environment variables.
Add to your `.bashrc` this lines:
```
export COMPANYLIBRARY_GOOGLE_ID=xxxxxxxxxxxx
export COMPANYLIBRARY_GOOGLE_PASS=xxxxxxxxxxxx
```