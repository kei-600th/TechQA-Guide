# HTTP 通信におけるリクエストとレスポンスとは

## リクエスト

クライアントからサーバに対する要求のこと

リクエストライン:HTTP リクエストの 1 行目のこと

リクエストラインの例:GET
https://littleforest.jp/webtext/http/index.html HTTP/1.1

## レスポンス

サーバからクライアントに対する応答のこと
基本的に HTML を返す

ステータスライン:HTTP レスポンスの 1 行目のこと

ステータスラインの例:HTTP/1.1 200 OK

メッセージボディ:レスポンスで返す一番メインの内容のこと
HTML ファイルの要求の場合は HTML ファイルが格納されている

メッセージボディの例:

```
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ja">
<head>
	<title>HTTP通信チェック テストページ</title>
</head>
<body>
	<h1>HTTP通信チェック テストページ</h1>
</body>
</html>
```

## 参考

『プロになるための Web 技術入門』およびサポートサイトをさんこうにしました。

https://littleforest.jp/webtext/
