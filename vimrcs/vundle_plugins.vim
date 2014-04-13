"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Plugin: 
"      https://github.com/gmarik/Vundle.vim/
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
"Plugin 'tpope/vim-fugitive'
"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
"Plugin 'FuzzyFinder'
" scripts not on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" ...


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custome Plugin: 
"       install from http://vim-scripts.org/vim/scripts.html
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if !exists('g:spf13_bundle_groups')
    let g:spf13_bundle_groups=['general', 'writing', 'neocomplcache', 'programming', 'php', 'ruby', 'python', 'twig', 'javascript', 'html', 'misc',]
    " let g:spf13_use_powerline=['use']
endif



""""""""""""""""""""""""""""""
" => Deps 
""""""""""""""""""""""""""""""
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
if executable('ag')
    Bundle 'mileszs/ack.vim'
    let g:ackprg = 'ag --nogroup --nocolor --column --smart-case'
elseif executable('ack-grep')
    let g:ackprg="ack-grep -H --nocolor --nogroup --column"
    Bundle 'mileszs/ack.vim'
elseif executable('ack')
    Bundle 'mileszs/ack.vim'
endif
        
""""""""""""""""""""""""""""""
" => Color Schemes
""""""""""""""""""""""""""""""
"Bundle 'spf13/vim-colors'
"Bundle 'peaksea'  
"Bundle 'altercation/vim-colors-solarized'
"Bundle 'wgibbs/vim-irblack'
"Bundle 'mayansmoke' 
"Bundle 'therubymug/vim-pyte' 


""""""""""""""""""""""""""""""
" => General 
""""""""""""""""""""""""""""""
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-surround'
"Bundle 'spf13/vim-autoclose'
Bundle 'kien/ctrlp.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'vim-scripts/sessionman.vim'
"Bundle 'matchit.zip'

if (has("python") || has("python3")) && exists('g:spf13_use_powerline') && !exists('g:spf13_use_old_powerline')
    Bundle 'Lokaltog/powerline', {'rtp':'/powerline/bindings/vim'}
elseif exists('g:spf13_use_powerline') && exists('g:spf13_use_old_powerline')
    Bundle 'Lokaltog/vim-powerline'
else
    Bundle 'bling/vim-airline'
endif
"Bundle 'bling/vim-bufferline'
Bundle 'Lokaltog/vim-easymotion'
"Bundle 'godlygeek/csapprox'
Bundle 'jistr/vim-nerdtree-tabs'
"Bundle 'flazz/vim-colorschemes'
Bundle 'mbbill/undotree'
Bundle 'nathanaelkane/vim-indent-guides'
if !exists('g:spf13_no_views')
    Bundle 'vim-scripts/restore_view.vim'
endif
"Bundle 'mhinz/vim-signify'
"Bundle 'tpope/vim-abolish.git'
"Bundle 'osyo-manga/vim-over'
"Bundle 'justinmk/vim-sneak'
"Bundle 'kana/vim-textobj-user'
"Bundle 'kana/vim-textobj-indent'


""""""""""""""""""""""""""""""
" => From amix
""""""""""""""""""""""""""""""
Bundle 'YankRing.vim'
Bundle 'bufexplorer.zip'
Bundle 'mru.vim'
Bundle 'amix/open_file_under_cursor.vim'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'terryma/vim-expand-region'
Bundle 'junegunn/goyo.vim'
Bundle 'amix/vim-zenroom2'
Bundle 'tpope/vim-commentary'
"Use the repeat command (.) with supported plugins
Bundle 'repeat.vim' 


""""""""""""""""""""""""""""""
" => Others 
""""""""""""""""""""""""""""""
Bundle 'Conque-Shell'


""""""""""""""""""""""""""""""
" => Writing 
""""""""""""""""""""""""""""""
"Bundle 'reedes/vim-litecorrect'
"Bundle 'reedes/vim-textobj-sentence'
"Bundle 'reedes/vim-textobj-quote'
""Bundle 'reedes/vim-wordy'


""""""""""""""""""""""""""""""
" => General Programming 
""""""""""""""""""""""""""""""
" Pick one of the checksyntax, jslint, or syntastic
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
"Bundle 'mattn/webapi-vim'
"Bundle 'mattn/gist-vim'
"Bundle 'scrooloose/nerdcommenter'
"Bundle 'godlygeek/tabular'
if executable('ctags')
    Bundle 'majutsushi/tagbar'
endif
Bundle 'taglist.vim'


""""""""""""""""""""""""""""""
" => Snippets & AutoComplete 
""""""""""""""""""""""""""""""
Bundle 'ervandew/supertab'
if count(g:spf13_bundle_groups, 'snipmate')
    Bundle 'garbas/vim-snipmate'
    Bundle 'honza/vim-snippets'
    " Source support_function.vim to support vim-snippets.
    if filereadable(expand("~/.vim/bundle/vim-snippets/snippets/support_functions.vim"))
        source ~/.vim/bundle/vim-snippets/snippets/support_functions.vim
    endif
elseif count(g:spf13_bundle_groups, 'youcompleteme')
    Bundle 'Valloric/YouCompleteMe'
    Bundle 'SirVer/ultisnips'
    Bundle 'honza/vim-snippets'
elseif count(g:spf13_bundle_groups, 'neocomplcache')
    Bundle 'Shougo/neocomplcache.vim'
    Bundle 'Shougo/neosnippet.vim'
    Bundle 'Shougo/neosnippet-snippets'
    Bundle 'honza/vim-snippets'
elseif count(g:spf13_bundle_groups, 'neocomplete')
    Bundle 'Shougo/neocomplete.vim'
    Bundle 'Shougo/neosnippet.vim'
    Bundle 'Shougo/neosnippet-snippets'
    Bundle 'honza/vim-snippets'
endif


""""""""""""""""""""""""""""""
" => Python plugin
""""""""""""""""""""""""""""""
" Pick either python-mode or pyflakes & pydoc
Bundle 'klen/python-mode'
Bundle 'python.vim'
Bundle 'python_match.vim'
Bundle 'pythoncomplete'


""""""""""""""""""""""""""""""
" => Javascript plugin
""""""""""""""""""""""""""""""
Bundle 'elzr/vim-json'
"Bundle 'groenewege/vim-less'
Bundle 'pangloss/vim-javascript'
Bundle 'briancollins/vim-jst'
"Bundle 'kchmck/vim-coffee-script'


""""""""""""""""""""""""""""""
" => HTML plugin
""""""""""""""""""""""""""""""
Bundle 'amirh/HTML-AutoCloseTag'
"Bundle 'hail2u/vim-css3-syntax'
Bundle 'gorodinskiy/vim-coloresque'
"Bundle 'tpope/vim-haml'


""""""""""""""""""""""""""""""
" => GoLang plugin
""""""""""""""""""""""""""""""
Bundle 'bradfitz/goimports'
Bundle 'dgryski/vim-godef'
Bundle 'Blackrush/vim-gocode'
Bundle 'cespare/vim-golang'
"Bundle 'fatih/vim-go'
"Bundle 'rjohnsondev/vim-compiler-go'


""""""""""""""""""""""""""""""
" => Misc plugin
""""""""""""""""""""""""""""""
Bundle 'tpope/vim-markdown'
Bundle 'spf13/vim-preview'
Bundle 'nginx.vim'
Bundle 'sophacles/vim-bundle-mako'
"Bundle 'tpope/vim-cucumber'
"Bundle 'quentindecock/vim-cucumber-align-pipes'
"Bundle 'Puppet-Syntax-Highlighting'

""""""""""""""""""""""""""""""
" => plugin End!
""""""""""""""""""""""""""""""

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line


