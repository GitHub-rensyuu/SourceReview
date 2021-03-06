# SourceReview   　![Visitor Count](https://profile-counter.glitch.me/{GitHub-rensyuu}/count.svg)

## サイト概要

### サイトテーマ
検索を豊かにする情報ソースレビューサイト

### テーマを選んだ理由
情報ソースレビューサイトがあれば、目的・取り組む難易度に対してのミスマッチが減り、情報を探しやすくなると思ったため。
[会社員が「調べもの」に費やす時間は毎日1.6時間(オウケイウェイヴ総研)。](https://it.impress.co.jp/articles/-/17720)

また新しいことに挑戦する時、どこから情報を得るかも分からないところからスタートすると思いますが、ネットから情報を得ることが多いと思います。
[2020年でネットから情報収集をする人は90.7%(ビデオリサーチ)。](https://news.mynavi.jp/article/20210311-1796912/#:~:text=%E3%82%A4%E3%83%B3%E3%82%BF%E3%83%BC%E3%83%8D%E3%83%83%E3%83%88%E3%81%A7%E6%83%85%E5%A0%B1%E5%8F%8E%E9%9B%86%E3%82%92,90.7%25%E3%81%A8%E3%81%AA%E3%81%A3%E3%81%A6%E3%81%84%E3%82%8B%E3%80%82)
![ネット利用調査](https://user-images.githubusercontent.com/98869960/166462776-e644ba93-d0b6-454e-a2c8-7f47e7d02cdc.png)  
新しいことに挑戦する人の道しるべとなることを目指して情報ソースレビューサイトを作りました。 
[新しいことや困難なことへの挑戦に対し、心理的ハードルを感じる人は84.0％(Unipos)。](https://b2b-ch.infomart.co.jp/news/detail.page?IMNEWS1=1477405)


### ターゲットユーザ
- 検索を便利にしたいと思うユーザー
- 新しいことに挑戦したいユーザー

### 主な利用シーン
- 目的（例:urlのハイパーリンク化）のために調べた情報ソースを備忘録として残す（非公開の下書き機能）
- 勉強会などの題材として参考urlを共有する
- 他の人の投稿の「参考にする上での注意点」を事前に知ることで、早期目的達成を目指す
- 他の人のレビューから新しい情報ソースの有用性を確認したり、取り入れたりする

## 機能説明
- 目的に対しての情報ソース備忘録登録(非公開の下書き機能、urlからサムネイル取得)
- 目的に対しての情報ソース評価(★評価、コメント、参考にする上での注意点、内容の難易度:初心者～上級者向け)
- 検索絞り込み（目的：キーワード、内容の難易度：初心者、中級者、上級者向け）
- 検索並び替え（いいねの多い順、評価が高い順、コメントが多い順、新着順等）

## 設計書
- [ER図、ワイヤーフレーム](https://app.diagrams.net/#G1OIfJLX5pATRCu_9R1gSc7iiXNCooW_-a)

## 開発環境
- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails(6.1.5)
- JSライブラリ：jQuery
- IDE：Cloud9

## 使用素材
- [ユーザー／アカウント／人型](https://kotonohaworks.com/free-icons/user/)
- [ノーイメージアイコンピクト編](https://www.shoshinsha-design.com/2020/05/%E3%83%8E%E3%83%BC%E3%82%A4%E3%83%A1%E3%83%BC%E3%82%B8%E3%82%A2%E3%82%A4%E3%82%B3%E3%83%B3%E3%83%94%E3%82%AF%E3%83%88%E7%B7%A8-no-image-icon/.html)

## テスト仕様書
- [スプレッドシート](https://docs.google.com/spreadsheets/d/1i3M7Ms6Sr0mfBhXV86w6c1s3K1wCwsKh/edit?usp=sharing&ouid=102603506775414694205&rtpof=true&sd=true)
