@echo off
rem 既定のブラウザでシミュレーターを開きます
rem
rem あわせて、GitHub の自動チェック（毎月18日）が進めた「税制データの
rem 最終確認日」を裏で取り込みます。開くのを待たせないように別プロセスで
rem 走らせるので、手元の表示に反映されるのは次に開いたときです。
rem 取り込みに失敗しても（ネットにつながらない・git が無い・手元に未反映の
rem 変更がある）開く動作には影響しません。--ff-only なので手元の変更が
rem 勝手に書き換わることもありません。
start "" "%~dp0index.html"
set GIT_TERMINAL_PROMPT=0
start "" /min cmd /c git -C "%~dp0." pull --ff-only --quiet
