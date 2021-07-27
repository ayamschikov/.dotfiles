" Install vim-plug if not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin()
    """""""""""""""""""""""""""""""""""""
    " Utility
    """""""""""""""""""""""""""""""""""""
    Plug 'benmills/vimux'
    Plug 'christoomey/vim-tmux-navigator'
    "" Usage: cp{motion} - copy to system clipboard
    "" Usage: cv{motion} - paste from system clipboard
    Plug 'christoomey/vim-system-copy'
    Plug 'roxma/vim-tmux-clipboard'
    Plug 'easymotion/vim-easymotion'
    Plug 'itchyny/lightline.vim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'preservim/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
    "Plug 'skwp/greplace.vim'
    "Plug 'tmux-plugins/vim-tmux' | Plug 'tmux-plugins/vim-tmux-focus-events'
    "" tags
    "" Plug 'ludovicchabant/vim-gutentags'
    "" Plug 'preservim/tagbar'
    Plug 'tpope/vim-abolish'
    Plug 'tpope/vim-commentary'
    "Plug 'tpope/vim-dadbod'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-endwise'
    "Plug 'tpope/vim-sleuth'
    "Plug 'tpope/vim-dispatch'
    "Plug 'tpope/vim-obsession'
    "Plug 'tpope/vim-sensible'
    "Plug 'tpope/vim-unimpaired'
    Plug 'dense-analysis/ale'
    Plug 'KabbAmine/zeavim.vim'
    "Plug 'stephpy/vim-yaml'
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install()  }  }
    "Plug 'chr4/nginx.vim'
    Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }

    "" autocomplete
    "Plug 'neoclide/coc.nvim', {'branch': 'release'}
    if has('nvim')
      Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    else
      Plug 'Shougo/deoplete.nvim'
      Plug 'roxma/nvim-yarp'
      Plug 'roxma/vim-hug-neovim-rpc'
    endif
    Plug 'Shougo/neosnippet.vim'
    Plug 'Shougo/neosnippet-snippets'

    """"""""""""""""""""""""""""""""""""""
    "" Git Support
    """"""""""""""""""""""""""""""""""""""
    Plug 'junegunn/gv.vim'
    Plug 'tpope/vim-fugitive'
    " TODO: check it, maybe i dont need this plugin anymore
    Plug 'airblade/vim-gitgutter'
    Plug 'xuyuanp/nerdtree-git-plugin', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
    Plug 'sodapopcan/vim-twiggy'

    """"""""""""""""""""""""""""""""""""""
    "" Rails Support
    """"""""""""""""""""""""""""""""""""""
    "Plug 'vim-ruby/vim-ruby'
    Plug 'tpope/vim-rails'
    "Plug 'ngmy/vim-rubocop'
    " Plug 'activebridge/rails-snippets'
    Plug 'honza/vim-snippets'
    "Plug 'slim-template/vim-slim'

    """"""""""""""""""""""""""""""""""""""
    "" Elixir Support
    """"""""""""""""""""""""""""""""""""""
    "Plug 'elixir-editors/vim-elixir'
    "Plug 'slashmili/alchemist.vim'

    """"""""""""""""""""""""""""""""""""""
    "" Theme / Interface
    """"""""""""""""""""""""""""""""""""""
    Plug 'nanotech/jellybeans.vim'
call plug#end()
