# Tech-Decor DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false|
### Association
- has_many :tweets 
- has_many :comments

## tweetsテーブル
|Column|Type|Options|
|------|----|-------|
|image|string||
|text|text||
|user|references|null: false, foreign_key: true|
### Association
- belongs_to :user 
- has_many :comments

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user|references|null: false, foreign_key: true|
|tweet|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :tweet
