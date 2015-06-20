# backtrack-api
A web service to find information about products and manufacturers &amp; manage a blacklist

Backtrack is using [Factual](http://www.factual.com/) to find informations about products.
The idea is to manage a blacklist of non-ethical manufacturers and make it really easy to spot their products to influence consumers choices.

**example:**  
*An iphone app using backtrack-api to provide a barcode scanner that tells you if the product you want to buy is "evil" or not.*

## Install & run

```bash
$ bundle install
$ rails s
```

(requires [blunder](http://bundler.io/) to be installed)

## API

routes               | result (json)            
---------------------|--------------------------
GET  /products/:upc  | name, brand, manufacturer, blacklisted, image_urls

## Contribute

This is just a proof a concept, but it would be interesting and worth going further. The API itself doesn't need much work but it would be interesting to create multiple clients for it (Android, iOS, browser plugins, etc...)

## Clients

[backtrack-ios](https://github.com/nsarno/backtrack-ios) is a very basic example of an iOS app to check if a product is blacklisted or not.
