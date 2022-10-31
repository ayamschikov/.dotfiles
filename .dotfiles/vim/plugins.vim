" Install vim-plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif

  silent !\curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')
    """""""""""""""""""""""""""""""""""""
    " Utility
    """""""""""""""""""""""""""""""""""""
    if has('nvim')
      Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    else
      Plug 'Shougo/deoplete.nvim'
      Plug 'roxma/nvim-yarp'
      Plug 'roxma/vim-hug-neovim-rpc'
    endif
    Plug 'deoplete-plugins/deoplete-tag'
    Plug 'benmills/vimux'
    Plug 'christoomey/vim-tmux-navigator'
    " Usage: cp{motion} - copy to system clipboard
    " Usage: cv{motion} - paste from system clipboard
    Plug 'christoomey/vim-system-copy'
    Plug 'roxma/vim-tmux-clipboard'
    Plug 'easymotion/vim-easymotion'
    Plug 'itchyny/lightline.vim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    " Plug 'skanehira/docker.vim'
    " Plug 'skanehira/docker-compose.vim'
    " Plug 'junegunn/vim-lengthmatters'
    " Plug 'kevinhui/vim-docker-tools'
    " Plug 'majutsushi/tagbar'
    Plug 'preservim/nerdtree', { 'tag': '6.9.2', 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
    Plug 'skwp/greplace.vim'
    Plug 'vim-scripts/ReplaceWithRegister'
    Plug 'tmux-plugins/vim-tmux' | Plug 'tmux-plugins/vim-tmux-focus-events'
    " Plug 'ludovicchabant/vim-gutentags'
    Plug 'tpope/vim-abolish'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-dadbod'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-endwise'
    Plug 'tpope/vim-sleuth'
    Plug 'tpope/vim-dispatch'
    Plug 'tpope/vim-obsession'
    Plug 'tpope/vim-sensible'
    Plug 'tpope/vim-unimpaired'
    Plug 'tpope/vim-abolish'
    Plug 'w0rp/ale'
    Plug 'KabbAmine/zeavim.vim'
    Plug 'stephpy/vim-yaml'
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install()  }  }
    Plug 'chr4/nginx.vim'

    """""""""""""""""""""""""""""""""""""
    " Git Support
    """""""""""""""""""""""""""""""""""""
    Plug 'gregsexton/gitv', { 'on': ['Gitv'] }
    Plug 'tpope/vim-fugitive'
    " TODO: check it, maybe i dont need this plugin anymore
    Plug 'airblade/vim-gitgutter'
    Plug 'xuyuanp/nerdtree-git-plugin', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
    Plug 'sodapopcan/vim-twiggy'

    """""""""""""""""""""""""""""""""""""
    " Rails Support
    """""""""""""""""""""""""""""""""""""
    Plug 'vim-ruby/vim-ruby'
    Plug 'tpope/vim-rails'
    " Plug 'ngmy/vim-rubocop'
    Plug 'uplus/deoplete-solargraph'

    """""""""""""""""""""""""""""""""""""
    " Elixir Support
    """""""""""""""""""""""""""""""""""""
    Plug 'elixir-editors/vim-elixir'
    Plug 'slashmili/alchemist.vim'

    """""""""""""""""""""""""""""""""""""
    " JS/Node Support
    """""""""""""""""""""""""""""""""""""
    Plug 'moll/vim-node'

    """""""""""""""""""""""""""""""""""""
    " Theme / Interface
    """""""""""""""""""""""""""""""""""""
    Plug 'nanotech/jellybeans.vim'
call plug#end()
