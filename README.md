# Shopping Cart Demo app

# Setup
1. Clone the application
```
git clone https://github.com/gohdaniel15/shopping-cart-demo.git
cd shopping-cart-demo
```

2. Install the gems
```
bundle
```

3. Setup the database
```
rake db:create db:migrate db:seed
```

This will create
- 1 user
  - username: "user@example.com"
  - password: "123123123"
- 20 products

# Guides

On the master branch, you can now follow these guides:

1. [Braintree Guide](https://gist.github.com/gohdaniel15/84f379aa05c16d28bbc2f42dd534f911)

On the feature/redis-cart branch, you can now follow these guides
2. [ActionMailer Guide](https://gist.github.com/gohdaniel15/57bb06f5046e9be8cba6bd0ee38a9c04)
