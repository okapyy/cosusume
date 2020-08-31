# Cosusume
## 使用技術

Ruby on Rails 5.2.4.2  
Haml / Scss  
devise  
carrierwave / mini-magick

## 概要

同じ肌質・肌色の人はどんなコスメを使っているんだろう。どんなコスメが似合うんだろう。
実際に使っている人のスウォッチや感想をみて自分にあったコスメに出会えます。
情報の共有として利用してください。

## 本番環境

https://cosusume.herokuapp.com/
テストアカウント  
メールアドレス :  test@gmail.com
パスワード : test1234

## 制作背景

コスメの情報を集める際によく動画サイトを利用していたのですが、大体の方がイエローベースでした。
私自身はブルーベースなので、動画をみて購入しても私の顔には合わないコスメが多くありました。
参考資料が少ないという状況でもっと似合うコスメに出会いたいという想いから制作しました。

## DEMO

## 工夫したポイント

投稿されたコスメを見やすく、探しやすくしました。

## 課題や今後実装したい機能

JavaScriptの知識不足
リファクタリング
コメント機能

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
|category|string|null: false|
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
