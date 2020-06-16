# Cosusume
## 使用技術

Ruby on Rails 5.2.4.2  
Haml / Scss  
devise  
carrierwave / mini-magick

## 概要


## 本番環境

https://oooooo 
テストアカウント  
メールアドレス :  
パスワード : 

## 制作背景


## DEMO

## 工夫したポイント



## 課題や今後実装したい機能


## DB設計
### usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
#### Association
- has_one :personal
- has_many :items

### personalsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|foreign_key: true|
|age|string|null: false|
|skin_color|string|null: false|
|skin_condition|string|null: false|
#### Association
- belongs_to :user, optional: true

### itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|brand|string|null: false|
|detail|text||
|age|string||
|skin_color|string||
|skin_condition|string||
|user_id|references|null: false, foreign_key: true|
#### Association
- belongs_to :user
- has_many :item_images

### item_imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|text||
|items_id|references|null: false, foreign_key :true|
#### Association
- belongs_to :item
