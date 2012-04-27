" // ----------------------------------
"  Gvimの設定。
"  基本はvimrcだけどGUIで必要なものはこちらに集めてある
" ---------------------------------- //
" ----------------------------------
"  基本設定 Basics
" ----------------------------------
" OSのクリップボードを使用する
set clipboard+=unnamed
set guioptions+=a
" ヤンクした文字は、システムのクリップボードに入れる
set clipboard=unnamed
" 挿入モードでCtrl+kを押すとクリップボードの内容を貼り付けられるようにする
imap <C-K>  <ESC>"*pa
" マウスポインタを表示する。(表示しない場合は mousehide にする)
set nomousehide
" ----------------------------------
"  表示全般の設定
" ----------------------------------
" GVimのカラーテーマの設定
:colorscheme evening

" メニューバーを表示しない。
set guioptions-=m
" ツールバーを表示しない。& 文字化け対策
set guioptions-=T
" メニューを強制的に EUC-JP にする
source $VIMRUNTIME/delmenu.vim
set langmenu=ja_JP.euc-jp.vim
source $VIMRUNTIME/menu.vim

" フォントをConsolasにする。
set guifont=Consolas:h8:cSHIFTJIS

" 半透明に表示する（Mac,Win向け）
gui
set transparency=224

" ----------------------------------
"  GVim のときのみ必要そうになりそうなコマンドマクロ
" ----------------------------------
" GEv/GRvでvimrcの編集と反映
command! Egv edit $MYGVIMRC
command! Rgv source $MYGVIMRC
