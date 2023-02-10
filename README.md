- misskeyのディレクトリ名をmisskey，コンテナ名をmisskey-web，ネットワーク名をexternal_networkとする．

- Cloudflare側でhttpsリダイレクトをオンに，sslをstrict，Authenticated origin pullをオン，Auto Minifyをオフにする．

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
