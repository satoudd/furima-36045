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
|-------------------|------------|------------------------|
|nickname           | string     |null: false             |
|email              | string     |unique: true, null:false|
|encrypted_password |  string    |null: false             |
|last_name          | string     |null: false             |
|first_name         | string     |null: false             |
|last_name_kana     | string     |null: false             |
|first_name_kana    | string     |null: false             |
|birth_date         | date       |null: false             |

### Association
has_many :items
has_many :purchase records


## itemsテーブル

|Column              |Type        |Options|
|--------------------|------------|------------------|
|product_name        | string     |null: false       |
|category_id         |  integer   |null:false        |
|prices              |  string    |null: false       |
|user                | references |foreign_key: true |
|product_description |  text      |null:false        |
|product_condition_id| integer    |null:false        |
|shipping_charges_id | integer    |null:false        |
|Days_to_ship_id     |  integer   |null:false        |
|prefecture_id       |  integer   |null:false        |


### Association
has_one :purchase_record


## Purchase_records

|Column             |Type        |Options|
|-----------------|------------|------------------|
| buyer_name      | references |foreign_kei: true |
| user_id         | references |foreign_kei: true |
| item_id         | references | foreign_kei: true|
### Association

belongs_to :user
belongs_to :item
has_one :address

## addresses
|Column             |Type        |Options|
|-----------------|------------|------------|
|postal_code      | string     |null: false |
|prefecture_id    | integer    |null: false |
|municipalities   | string     |null: false |
|address          | string     |null: false |
|Building_name    | string     |null: false |
|telephone_number | string     |null: false |
### Association
belongs_to :Purchase_record