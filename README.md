# loxygenK/dotfiles
僕が使ってるdotfilesです。そのうち管理めんどくさくなってPushするのをやめそう。

## 構成

- `vim`<br>
	nvimの設定ファイルです。`~/.config/nvim`はこのディレクトリへのリンクになっています。
	- `init.vim`<br>
		`init.vim`です。
	- `plugins/`<br>
		Deinで管理するプラグインのファイルです。
		- `lang/`<br>
			言語ごとのプラグインのファイルが入っています。
		- `misc.toml`<br>
			言語に関連しない便利プラグインのファイルが入っています。
		- `system.toml`<br>
			Vimの根幹に関わるプラグインのファイルが入っています。
- `zshrc`<br>
	`.zshrc`本体です。このスクリプトでは`zshrc.d`の中のファイルを`source`しています。
- `zshrc.d/`<br>
	実際にzshを設定するスクリプトが入ったディレクトリです。
- `unused/`<br>
  使われていないけど残しておきたいファイルが入ったディレクトリです。
