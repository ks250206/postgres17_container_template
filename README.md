## 個人用postgresqlコンテナテンプレート保管場所
<p>コンテナの構成</p>

- postgresql17
- pgadmin4
  

## ディレクトリ構成
```sh
.
├── compose.yml
├── data
├── init.sh
├── logs
├── pgadmin_servers.json
├── pgadmin-data
└── postgresql.conf
```

## 使い方
- .env作成
  - env.exampleを参考にする。 
- pgadmin_servers.jsonを修正する。
  - DB名(MaintenanceDB)、ユーザー名(Username)は.envの値に合わせること。
    
```sh
# コンテナ立ち上げ
docker compose up -v

# コンテナのログを確認
docker compose logs -f db
docker compose logs -f pgadmin4

# コンテナ内に入ってpsql起動
docker compose exec -it db /bin/sh -lc 'psql -U "$POSTGRES_USER" -d "$POSTGRES_DB"'
```
- pgAdminでdbに接続する
pgAdminは、postgresql専用GUI制御ソフト
http://localhost:8083/browser/
Servers>dbを選択。ログインパスワードが求められるので.envのパスワードを入れる。

## Third-Party
This template uses official Docker images:
- PostgreSQL — PostgreSQL License (https://www.postgresql.org/about/licence/)
- pgAdmin 4 — PostgreSQL License (https://www.pgadmin.org/licence/)

Images are pulled at runtime; no third-party binaries are bundled in this repository.

