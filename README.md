# Made by Me
![logo1](https://user-images.githubusercontent.com/68390854/97403037-07d18780-1937-11eb-9c4d-aa9b54e02aa1.png)

## サイト概要
DIYレシピの投稿型コミュニティサイトです。

## URL
http://madebyme.work/<br>
【ゲストログイン】ボタンからテストユーザーとしてログインできます。<br>
 管理者側へは、ログインページの【管理者ログインはこちら】のページから<br>
 メールアドレス：made@com<br>
 パスワード    ：madebyme<br>
 でログインできます。

### サイトテーマ
DIYレシピを投稿し、モノづくりの楽しさを共有することで
個々人の生活の充実、DIY人口の増加、周辺業界の活性化を目的とします。

### テーマを選んだ理由
以前、接着剤の会社に勤めており、DIY業界の製品や知識に馴染みがある為選択しました。
また、自分で作るという行為は充実した時間を過ごすことに繋がり、物事や世の中の仕組みを知る
きっかけにもなります。このサイトを通じてDIY文化に触れる人を一人でも増やしたいと思い製作に至りました。


### ターゲットユーザ
ハンドメイドや、リフォームに興味のある一般ユーザー

### 主な利用シーン
家具やアクセサリーの製作や、家屋のリフォームを個人で行いたい時

### 機能一覧
・ユーザー認証機能<br>
・レシピ投稿機能<br>
　動的フォームによるレシピの新規作成、更新、削除ができます。<br>
・コメント機能<br>
　投稿されたレシピに対してコメントすることができます<br>
・お気に入り機能(非同期処理)<br>
　投稿されたレシピに対してお気に入り登録することができます。<br>
・タイトル検索機能<br>
　投稿されたレシピのタイトルで検索することができます。<br>
・ジャンル検索機能<br>
　投稿されたレシピをジャンルごとに表示することができます。
・画像アップロード機能<br>
・画像プレビュー機能<br>
・レスポンシブデザイン<br>


詳細は下記をご覧下さい。
https://docs.google.com/spreadsheets/d/1WAnpi1uCh2AO7If5Z9gd8fyW9XAfGKFeTVHEfGWNF3A/edit?usp=sharing

## 環境・使用技術
- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails、Bootstrap
- JSライブラリ：jQuery
- 仮想環境：Vagrant,VirtualBox
- 本番環境：AWS (EC2、RDS for MySQL、Route53、CloudWatch)<br>
Capistranoにより自動デプロイ
- インフラ構成図
![made by me インフラ構成図](https://user-images.githubusercontent.com/68390854/103155504-f2b49000-47e3-11eb-861e-fba89344d881.png)

## 設計書
ER図<br>
![made by me ER図](https://user-images.githubusercontent.com/68390854/103165437-5fb73c80-485b-11eb-8c42-190d53bd2d76.png)<br>
ワイヤーフレーム<br>
https://drive.google.com/file/d/1I7HQsEuvZGF9uf-sNHFA3aPNnupChoOT/view?usp=sharing<br>
テーブル定義書<br>
https://drive.google.com/file/d/1Vfi8hPgs_1fJhwBeaXgLXxXFt3ug9YKa/view?usp=sharing<br>
アプリケーション設計書<br>
https://drive.google.com/file/d/1MwXmeIpjtqh-x2Vvo2VZWS4RoigtNPCH/view?usp=sharing<br>
WBSシート<br>
https://docs.google.com/spreadsheets/d/1hr2Y4wU_j3SqFvmSXkTC-Iqp4PHgPASlxOQVwQjxpEM/edit?usp=sharing<br>

## 使用させて頂いた素材
O-DAN(フリーフォト)
https://o-dan.net/ja/

写真AC（金曜大工プロフィールページ）
https://www.photo-ac.com/profile/938477

DesignEvo(フリーロゴメーカー)
https://www.designevo.com/jp/