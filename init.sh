# 書き込みに失敗したら下のコマンドを実行する。
mkdir -p ./data ./logs ./pgadmin-data
# 権限（必要なら）
sudo chown -R 999:999 ./data ./logs
chmod 700 ./data
chmod 750 ./logs

