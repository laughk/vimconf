" //
"  Gvimの設定。
"  基本はvimrcだけどGUIで必要なものはこちらに集めてある
"                                                       //


" ============================================================
"  基本設定 Basics
" ============================================================
" OSのクリップボードを使用する
set clipboard+=unnamed
set guioptions+=a
" ヤンクした文字は、システムのクリップボードに入れる
set clipboard=unnamed
" マウスポインタを表示する。(表示しない場合は mousehide にする)
set nomousehide

" ============================================================
"  表示全般の設定
" ============================================================
" GVimのカラーテーマの設定
colorscheme zenburn

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

" ============================================================
"  GVim のときのみ必要そうになりそうなコマンドマクロ
" ============================================================
" GEv/GRvでvimrcの編集と反映
command! Egv edit $MYGVIMRC
command! Rgv source $MYGVIMRC

" ============================================================
" GUI環境用プラグイン
" ============================================================

" +++++++++++++++++++++++++++++++++++++++++
" open-blowser.vim
" +++++++++++++++++++++++++++++++++++++++++
" カーソル下のURLをブラウザで開く
nmap fu <Plug>(openbrowser-open)
vmap fu <Plug>(openbrowser-open)

" ++++++++++++++++++++++++++++++++++++++++
" QFixHowm
" ++++++++++++++++++++++++++++++++++++++++
" 保存先の指定
set runtimepath+=~/vimfiles/bundle/qfixhowm
let howm_dir = $HOME.'/Dropbox/QFixHowm'

" 基本設定 ------------------------- + ---------------------
let QFixHowm_FileType = 'qfix_memo' "| ファイルタイプの拡張
let howm_fileencoding = 'utf-8'     "| utf8で作成する
let howm_fileformat = 'unix'        "| fileformat は unixで
let QFixHowm_RecentMode = 2         "| エントリのタイムスタンプを自動更新する

" super pre スクリプトの呼び出し
nnoremap <silent> g,. :<C-u>call HatenaSuperPreHighlight()<CR>
