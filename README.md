# Shoes for runners
<img width="1051" alt="スクリーンショット 2022-05-06 8 36 35" src="https://user-images.githubusercontent.com/90697671/167044178-23935da0-1c71-4a4c-8fc4-58e7471c7029.png">


# アプリURL
https://shoes-for-runners.app

# サービス概要
ランニングシューズについて何を買えば良いかわからない人におすすめのシューズを提案するアプリです。簡単な質問に答えることで自分に合ったシューズを知ることができます。

# 使用技術
- Ruby 3.0.3
- Rails 6.1.4
- MySQL 8.0.28
- Puma
- Nginx
- Sorcery
- Rspec
- AWS
  - VPC
  - EC2
  - RDS
  - IAM
  - Route53
  - ACM


# 機能一覧
- ユーザー登録、ログイン、ログアウト機能(Sorcery)
- パスワードリセット機能(Sorcery)
- ゲストログイン機能
- シューズ一覧・詳細機能
- ブックマーク機能(Ajax)
- コメント投稿、編集、削除機能
- 検索機能
- プロフィール編集機能
- お問い合わせ機能
- 管理画面機能
  - シューズのCRUD機能
  - ユーザーのCRUD機能

# テスト
- 単体テスト(model)
- 結合テスト(system)

# 機能説明
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; トップページ | ゲストログイン |
| :---: | :---: |
| <img width="600" alt="トップページ" src="https://user-images.githubusercontent.com/90697671/167283481-5751456b-f739-4257-a919-cf85ad4153db.png"> | ![demo](https://gyazo.com/fafc3366481369ff8a077168bad485d0/raw) |
| サービス説明 | ゲストログインリンクをクリックするとゲストログインできる |


| おすすめシューズ検索 |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; シューズ詳細画面 |
| :---: | :---: |
| ![demo](https://gyazo.com/7b35326b5c2f73df9f368defab228415/raw) | <img width="500" alt="スクリーンショット 2022-05-06 22 47 27" src="https://user-images.githubusercontent.com/90697671/167284877-bbb7f89e-625e-4262-8891-20645de8865a.png"> | ![demo](https://gyazo.com/795a50e91560f22bca4dc70009040d87/raw) | <img width="918" alt="マイページ画面" src="https://user-images.githubusercontent.com/90697671/167285646-f0423d2b-585a-4995-8345-401a5b74b2ea.png"> |
| 簡単な質問に回答するとおすすめシューズが表示される | シューズの詳細説明を見ることができる。また、この画面からコメントやお気に入り登録ができる |

| コメント投稿・編集・削除機能 | お気に入り機能 |
| :---: | :---: |
|![demo](https://gyazo.com/795a50e91560f22bca4dc70009040d87/raw)| ![demo](https://gyazo.com/71d99b2b2c4c19ffbcedc72032619eb0/raw) |
| シューズに対してコメントの投稿・編集・削除ができる | お気に入り登録ボタンを押すとお気に入り登録される |

| マイページ | アカウント編集機能 |
| :---: | :---: |
| <img width="918" alt="マイページ画面" src="https://user-images.githubusercontent.com/90697671/167285646-f0423d2b-585a-4995-8345-401a5b74b2ea.png"> |![demo](https://gyazo.com/96a883e129352a1f785285ba7eb8e00b/raw)|
| 名前やメールアドレス、お気に入りした数やコメント数が表示される | 登録したユーザー名やメールアドレスを編集することができる |


|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; お問い合わせ機能 | [管理画面]シューズ追加 |
| :---: | :---: |
|![demo](https://gyazo.com/3f0a4f3bad1520677f191c147d2eeabc/raw)|![demo](https://gyazo.com/59c9359823503d7ee186459637a241bb/raw)|
|お問い合わせ内容を記入することでお問い合わせができる|管理者が新しいシューズを登録することができる|


| [管理画面]シューズ編集・削除機能 | [管理画面]ユーザー編集・削除機能 |
| :---: | :---: |
|![demo](https://gyazo.com/c743dd7f34db9e67b135a1ce6a2e1de5/raw)|![demo](https://gyazo.com/9065bbf1c703b17ebc8707416ea4ad31/raw)|
| 管理者がシューズの登録内容の編集や削除ができる | 管理者がユーザーの登録内容の編集や削除ができる |


# ER図
![Shoes for runners ER図](https://user-images.githubusercontent.com/90697671/167069876-1c5699f3-cfeb-4eaa-92e6-e7ba4a325db0.svg)

