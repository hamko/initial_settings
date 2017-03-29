僕のgitをクローンして、Dropboxをインストールするスクリプトです。

run.shの
(1) your emailを適切に書き換え
(2) 32bitなら_64を削除
が必須です。
これによって、.zshrc, .bashrc, .vimrcが正常に動作するようになります。

*構造
initial_settings/run.shが、*rcを、~/.*rcにコピーします。
各rcは以下をsourceします。
~/.zshrc    ~/git/setting/rc/.zshrc, .commonrc  ~/Dropbox/setting/rc/.zshrc, .commonrc
~/.bashrc   ~/git/setting/rc/.bashrc, .commonrc ~/Dropbox/setting/rc/.bashrc, .commonrc
~/.vimrc    ~/git/setting/rc/.vimrc,            ~/Dropbox/setting/rc/.vimrc
gitは公開可能な設定、Dropboxは公開不可能な設定がかかれます。
commonはzshでもbashでもよい設定がかかれます。
