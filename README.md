# Palworld-Server-Shell
**このスクリプトは、Debian/Ubuntu 22.04 (or Ubuntu Server 22.04)で動作します。**

このシェルを実行するだけで、Palworldの専用サーバを簡単に構築できます。

---
## 前提知識
Ubuntuの構築方法がわかる。少しだけ、英語が読める。


## 注意事項
>WSL(Windows Sub-system for Linux)では、動作未確認です。
>>万が一、未確認の動作環境で実行しても一切の責任を負いません。

仕様上、root権限(#)ではサーバーは稼働しません。user権限($)で実行してください。

## 前提環境
シェルを実行するために、curlをインストールしてください。インストールしていない場合は`sudo apt install curl` でインストールします。

## コマンド
以下のコマンドをコピペして実行してください。
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/TomXV/Palworld-Server-Shell/main/Palworld.sh)"
```
