# Palworld-Server-Shell
**このスクリプトは、Debian/Ubuntu 22.04 (or Ubuntu Server 22.04)で動作します。**

私は、Proxmox VE 8.1の仮想マシン上でUbuntu Server 22.04を動作させた環境で検証しています。

このシェルを実行するだけで、Palworldの専用サーバを簡単に構築できます。

---
## 前提知識
Ubuntuの構築方法がわかる。少しだけ、英語が読める。


## 注意事項
> [!WARNING]
>> WSL(Windows Sub-system for Linux)では、動作未確認です。
>>
>>  万が一、未確認の動作環境で実行しても一切の責任を負いません。

> [!CAUTION]
> 仕様上、root権限(#)ではサーバーは稼働しません。user権限($)で実行してください。

## 前提環境
シェルを実行するために、curlをインストールしてください。

インストールしていない場合は`sudo apt install curl` でインストールします。

## コマンド
以下のコマンドをコピペして実行してください。
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/TomXV/Palworld-Server-Shell/main/Palworld.sh)"
```

## トラブルシューティング
> [!NOTE]
> steamclient.soのシンボリックリンク先がPalServerに同梱されたものにしてありますが
>
> 万が一読み込めなかった場合は、以下の通りに操作してください

```sh
unlink ~/.steam/sdk64/steamclient.so
ln ~/Steam/steamapps/common/Steamworks\ SDK\ Redist/linux64/steamclient.so ~/.steam/sdk64/steamclient.so
```

> 起動時に１度エラーが表示されますが、 `.steam/sdk64/steamclient.so OK.  (First tried local 'steamclient.so')` が表示されていればこの操作は不要です。
