# 「工夫Factory」
自分の工夫を投稿したり、他人の工夫を見るWEBサイトです
<img src="https://github.com/tomykyou/ingenuity-factory-webapp/blob/master/app/assets/images/readme_image.png">


##  サイトURL
https://ingenuity-factory-webapp.herokuapp.com/


## 作成目的
工夫を発信することで、誰かの生活をより良いものに変える。  
他の人の工夫を使うことで、自分の生活をより良いものに変える。  
上記を実現するための場として作成しました。  


## テスト用アカウント
メールアドレス:test@gmail.com  
パスワード:testpass


## 使用技術
・HTML  
・Ruby 3.0  
・Ruby on Rails 6.1    
・SQLite3  
・Puma 
・Heroku  
・Rspec


## 機能一覧
・ログイン機能(devise)  
・ユーザー登録機能(devise)  
　アイコン登録(CarrierWave)   
・投稿機能  
　画像投稿(CarrierWave)  
・コメント機能  
・ランク機能  
・いいね＆使いますボタン機能  
・ページネーション機能(kaminari)  


## テスト
・RSpec


## このサイトでこだわった点
1:ランク機能  
いいねや使いますを押されるだけだと、自分が貢献できていることを  
感じにくいと考え、ランク機能を作りました。  

2:使いますボタン機能  
実際に工夫した投稿が使われていることを体感できた方が  
良いと考え、いいね機能だけでなくこの機能を作成しました。


## 今後の計画
・技術  
　javascriptで動的な画面表示に変更  
　AWS EC2上にデプロイ  

・機能  
　問い合わせフォーム作成  
　各種ランキング機能一覧の作成  


