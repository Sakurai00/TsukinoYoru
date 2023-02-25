- misskeyのディレクトリ名をmisskey,ネットワーク名をexternal_networkとする．
  - nginx側のネットワークをmisskey_external_networkに入れるため

- misskeyのコンテナ名をmisskey-webとする
  - proxy_passを http://misskey-web:3000 に固定するため

- Cloudflare側でhttpsリダイレクトをオンに，sslをstrict，Authenticated origin pullをオン，Auto Minifyをオフにする．
  - Cloudflare側でhttpsにリダイレクトさせたいとき，nginxで80番ポートをリダイレクトさせるとループに入る．（confから消す）
  - Auto Minifyが入ってるとおかしくなるらしい

```
.
├── cloudflare
│   ├── cloudflare.crt
│   └── tsukiyo.dev
│       ├── tsukiyo.dev.pem
│       └── tsukiyo.dev.priv.pem
├── config
│   └── misskey.conf
├── docker-compose.yml
└── README.md
```
