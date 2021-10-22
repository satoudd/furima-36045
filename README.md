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
|nickname           | string     |null: false |
|email              | string     |unique: true|
|encrypted_password |  string    |null: false |
|last_name          | string     |null: false |
|first_name         | string     |null: false |
|last_name_kana     | string     |null: false |
|first_name_kana    | string     |null: false |
|birth_date         | date       |null: false |

### Association
has_many :items
has_one  :purchase record
has_one  address

## itemsテーブル

|Column             |Type        |Options|
|-------------------|------------|------------|
|product_name       | string     |null: false |
|category           |  string    |null:false  |
|prices             |  string    |null: false |
|seller             |  string    |null:false  |
|product description|  text      |null:false  |
|product condition  |  date      |null:false  |
|shipping charges   |  date      |null:false  |
|Days to ship       |  date      |null:false  |
|Sales commission   |  string    |null:false  |
|Sales profit       |  string    |null:false  |

### Association
belongs_to :user
has_one :purchase record
has_one :address

## Purchase record

|Column             |Type        |Options|
|-----------------|------------|------------|
| buyer_name      | string     |null: false |


### Association

belongs_to :user
belongs_to :item
has_one    :address

## address
|Column             |Type        |Options|
|-----------------|------------|------------|
| shipping_address| string     |null: false |

### Association
belongs_to :user
belongs_to :item
belongs_to :purchase record