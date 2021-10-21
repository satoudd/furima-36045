# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
## usersテーブル
|Column             |Type        |Options|
|-------------------|------------|------------|
|name               | string     |null: false |
|email              | string     |unique: true|
|encrypted_password |  string    |null: false |

### Association
has_many :items
has_one :buyer

## itemsテーブル

|Column             |Type        |Options|
|-------------------|------------|------------|
|product_name      |string      |null: false |
|category           | string     |null:false  |
|prices             |  string    |null: false |
|seller             |  string    |null:false  |

### Association
belongs_to :users
has_one :buyers

## buyer

|Column             |Type        |Options|
|-----------------|------------|------------|
| buyer_name      | string     |null: false |
| shipping_address| text       |null:false  |

### Association

belongs_to :users
belongs_to :items