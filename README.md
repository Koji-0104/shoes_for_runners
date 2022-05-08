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

# 機能説明
| トップページ | おすすめシューズ検索 | シューズ詳細画面 |
| :--- | :---: | ---: |
| <img width="500" alt="トップページ" src="https://user-images.githubusercontent.com/90697671/167283481-5751456b-f739-4257-a919-cf85ad4153db.png"> | ![demo](https://gyazo.com/9416e35038f239e21568043a55536d03/raw) | <img width="500" alt="スクリーンショット 2022-05-06 22 47 27" src="https://user-images.githubusercontent.com/90697671/167284877-bbb7f89e-625e-4262-8891-20645de8865a.png"> |
| サービス説明 | 簡単な質問に答えることでおすすめシューズが検索できる | TD |


| お気に入り機能 | コメント投稿・編集・削除機能 | マイページ |
| :--- | :---: | ---: |
| <img width="277" alt="トップページ" src="https://user-images.githubusercontent.com/90697671/167283481-5751456b-f739-4257-a919-cf85ad4153db.png"> | ![demo](https://gyazo.com/c743dd7f34db9e67b135a1ce6a2e1de5/raw) | TD |
| サービス説明 | 管理者がシューズの登録内容の編集や削除ができる | TD |

| アカウント編集機能 | お問い合わせ機能 | [管理画面]シューズ追加 |
| :--- | :---: | ---: |
| <img width="277" alt="トップページ" src="https://user-images.githubusercontent.com/90697671/167283481-5751456b-f739-4257-a919-cf85ad4153db.png"> |  | ![demo](https://gyazo.com/c743dd7f34db9e67b135a1ce6a2e1de5/raw) |
| サービス説明 | 管理者がシューズの登録内容の編集や削除ができる | TD |


| [管理画面]シューズ編集・削除機能 | [管理画面]ユーザー編集・削除機能 | [管理画面]シューズ追加 |
| :--- | :---: | ---: |
| <img width="277" alt="トップページ" src="https://user-images.githubusercontent.com/90697671/167283481-5751456b-f739-4257-a919-cf85ad4153db.png"> |  | ![demo](https://gyazo.com/c743dd7f34db9e67b135a1ce6a2e1de5/raw) |
| サービス説明 | 管理者がシューズの登録内容の編集や削除ができる | TD |

# テスト
- 単体テスト(model)
- 結合テスト(system)

# ER図
![Shoes for runners ER図](https://user-images.githubusercontent.com/90697671/167069876-1c5699f3-cfeb-4eaa-92e6-e7ba4a325db0.svg)

