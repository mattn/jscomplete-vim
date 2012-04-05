jscomplete-vim
==============

JavaScript complete script

既存の javascriptcomplete.vim がアレだったので...。

`omnifunc` に `jscomplete#CompleteJS` を設定すると動くよ。

    autocmd FileType javascript
      \ :setl omnifunc=jscomplete#CompleteJS

- 主目的
  - `.` や `[` 後のプロパティを補完する

拡張
----

`autoload/js/` 以下に拡張用スクリプトがある

`g:jscomplete_use` または `b:jscomplete_use` にリストをいれると読み込まれる。

    :let g:jscomplete_use = ['dom', 'moz']
    " => autoload/js/dom.vim と autoload/js/moz.vim が読まれる

- `dom.vim` : DOM 系の補完リストを追加するよ
- `moz.vim` : Mozilla JavaScript の追加リスト
- `xpcom.vim` : Mozilla の XPCOM コンポーネント(`Components`オブジェクト) 系のリストを追加

