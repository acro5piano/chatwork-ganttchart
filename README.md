# Chatwork Ganttchart

Backlogのガントチャートを生成します。課題を任意に選択できるので、例えばメインの担当者別にガントチャートを作成するということができます。

# インストール

```sh
git clone https://github.com/acro5piano/chatwork-ganttchart.git
cd chatwork-ganttchart
bundle install --path vendor/bundle
```

下記のような設定ファイルを作り、`app.rb`と同じ場所に置いてください。

```rb
API_KEY  = '******'
SPACE_ID = '******'
ISSUE_KEYS = ['*****', '******']
```

その後、`ruby app.rb`とするとガントチャート生成サーバーが起動します。

http://localhost:4567/をブラウザで開いてください。

# Thanks

- http://taitems.github.io/jQuery.Gantt/
- https://github.com/emsk/backlog_kit
