# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

## Screenshots from the App

Homepage of the app, which displays products that are for sale
![Alt text](https://raw.githubusercontent.com/daniel-cy-lu/jungle-rails/master/screenshots/Screen%20Shot%202022-02-11%20at%2010.51.58%20AM.png)

Vistor could add products to My Cart, which displays a list of items selected and sum up the total cost of all the items
![Alt text](https://raw.githubusercontent.com/daniel-cy-lu/jungle-rails/master/screenshots/Screen%20Shot%202022-02-11%20at%2011.04.30%20AM.png)

Visitor could pay for the products by a credit card
![Alt text](https://raw.githubusercontent.com/daniel-cy-lu/jungle-rails/master/screenshots/Screen%20Shot%202022-02-11%20at%2011.05.07%20AM.png)

If the product has no inventories left, a SOLD OUT badged is attached to the product's display
![Alt text](https://raw.githubusercontent.com/daniel-cy-lu/jungle-rails/master/screenshots/Screen%20Shot%202022-02-11%20at%2010.52.38%20AM.png)

Visitor could click on a product on the home page to access to the product detail page for more information on it
![Alt text](https://raw.githubusercontent.com/daniel-cy-lu/jungle-rails/master/screenshots/Screen%20Shot%202022-02-11%20at%2010.52.50%20AM.png)

Administrator could add new products and categories to the app
![Alt text](https://raw.githubusercontent.com/daniel-cy-lu/jungle-rails/master/screenshots/Screen%20Shot%202022-02-11%20at%2010.53.05%20AM.png)
![Alt text](https://raw.githubusercontent.com/daniel-cy-lu/jungle-rails/master/screenshots/Screen%20Shot%202022-02-11%20at%2010.53.15%20AM.png)

## Additional Steps for Apple M1 Machines

1. Make sure that you are runnning Ruby 2.6.6 (`ruby -v`)
1. Install ImageMagick `brew install imagemagick imagemagick@6 --build-from-source`
2. Remove Gemfile.lock
3. Replace Gemfile with version provided [here](https://gist.githubusercontent.com/FrancisBourgouin/831795ae12c4704687a0c2496d91a727/raw/ce8e2104f725f43e56650d404169c7b11c33a5c5/Gemfile)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
* sass-rails 5.0
* uglifier 1.3.0
* jquery-rails
* turbolinks
* jbuilder 2.0
* sdoc 0.4.0
* bcrypt 3.1.7
* puma
* bootstrap-sass 3.3.6
* font-awesome-rails
* money-rails
* carrierwave
* rmagick
* faker