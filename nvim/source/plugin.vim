function Plugins()
	execute plug#begin('~/.config/nvim/packages/plugged')
		Plug 'tpope/vim-surround'
		Plug 'tpope/vim-fugitive'
		Plug 'preservim/nerdcommenter'
		Plug 'preservim/nerdtree'
		Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
		Plug 'junegunn/fzf.vim'
		Plug 'mbbill/undotree'
		Plug 'easymotion/vim-easymotion'
		Plug 'metakirby5/codi.vim'
		Plug 'vim-syntastic/syntastic'
		Plug 'preservim/tagbar'
	execute plug#end()
endfunction

function Basic()
	execute plug#begin('~/.config/nvim/packages/plugged')
		Plug 'preservim/nerdtree'
		Plug 'tpope/vim-fugitive'
	execute plug#end()
endfunction
