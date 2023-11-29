# HTTP 通信とは

Hyper Text Transfer Protocol による通信のこと。
Hyper Text とはリンクつきのテキストのこと。
Transfer Protocol とはそれを「どのようにして送るかを決める規約」のこと

# HTTPS とは

HTTP + Secure のこと。

HTTP が暗号化して通信が行われていることで
HTTP とは違って暗号化するための証明書(SSL 証明書)が有効になっている。

AWS でホスティングされた URL が HTTPS になっている場合は、
元々 HTTP リクエストを送信されていたものが AWS 側によって SSL の証明書をくっつけているものと考えれば良い。
