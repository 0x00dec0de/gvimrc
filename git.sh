cd ~/.vim/bundle/
git clone git://github.com/Townk/vim-autoclose.git

wget "http://www.vim.org/scripts/download_script.php?src_id=8196" -O /tmp/matchit.zip
cd /tmp/
unzip matchit.zip
mkdir -p ~/.vim/bundle/matchit
mv plugin/matchit.vim ~/.vim/bundle/matchit/
cd ~/.vim/bundle/
mkdir -p ~/.vim/bundle/python
mkdir -p ~/.vim/bundle/vim-scripts

wget "http://www.vim.org/scripts/download_script.php?src_id=17430" -O ~/.vim/bundle/python/python0.3.vim
wget "http://www.vim.org/scripts/download_script.php?src_id=2366" -O  ~/.vim/bundle/python/python_match.vim
wget "http://www.vim.org/scripts/download_script.php?src_id=10872" -O ~/.vim/bundle/python/pythoncomplete.vim
wget "http://www.vim.org/scripts/download_script.php?src_id=10609" -O ~/.vim/bundle/vim-scripts/html_autoclosetag.vim

cd ~/.vim/bundle

git clone git://github.com/vim-scripts/Puppet-Syntax-Highlighting.git
git clone git://github.com/MarcWeber/vim-addon-mw-utils.git

# This library provides some utility functions. There isn't much need to
# install it unless another plugin requires you to do so.

git clone git://github.com/tomtom/tlib_vim.git

# This plugin is a front for the Perl module App::Ack.
# Ack can be used as a replacement for 99% of the uses of grep.
# This plugin will allow you to run ack from vim, and shows the results in a split window.
# apt-get install ack-grep
git clone git://github.com/mileszs/ack.vim.git
git clone git://github.com/scrooloose/nerdtree.git
git clone git://github.com/altercation/vim-colors-solarized.git
git clone git://github.com/tpope/vim-surround.git
git clone git://github.com/kien/ctrlp.vim.git
git clone git://github.com/vim-scripts/sessionman.vim.git
git clone git://github.com/Lokaltog/vim-easymotion.git
git clone git://github.com/godlygeek/csapprox.git
git clone git://github.com/jistr/vim-nerdtree-tabs.git
git clone git://github.com/corntrace/bufexplorer.git
git clone git://github.com/scrooloose/syntastic.git
git clone git://github.com/garbas/vim-snipmate.git
git clone git://github.com/tpope/vim-fugitive.git
git clone git://github.com/scrooloose/nerdcommenter.git
git clone git://github.com/godlygeek/tabular.git
git clone git://github.com/majutsushi/tagbar.git
git clone git://github.com/Shougo/neocomplcache.git
git clone git://github.com/spf13/PIV.git
git clone git://github.com/klen/python-mode.git
git clone git://github.com/leshill/vim-json.git
git clone git://github.com/groenewege/vim-less.git
git clone git://github.com/taxilian/vim-web-indent.git
git clone git://github.com/ChrisYip/Better-CSS-Syntax-for-Vim.git
git clone git://github.com/tpope/vim-rails.git
git clone git://github.com/spf13/vim-markdown.git
git clone git://github.com/spf13/vim-preview.git
git clone git://github.com/tpope/vim-cucumber.git
git clone git://github.com/tpope/vim-pathogen.git
git clone git://github.com/mattn/zencoding-vim.git
git clone git://github.com/vim-scripts/taglist.vim.git
git clone git://github.com/vim-scripts/dbext.vim
git clone git://github.com/jezcope/vim-align.git
git clone git://github.com/vim-scripts/SQLUtilities.git
git clone git://github.com/honza/snipmate-snippets.git
git clone git://github.com/vim-scripts/OmniCppComplete.git
git clone git://github.com/yko/mojo.vim.git
git clone git://github.com/benizi/perl-support.vim.git
git clone git://github.com/HenningM/cvim-pathogen.git

#####################################################
# the new
git clone https://github.com/kien/ctrlp.vim.git
git clone git://github.com/tpope/vim-endwise.git
git clone https://github.com/majutsushi/tagbar.git
git clone https://github.com/tpope/vim-fugitive.git
git clone git://github.com/tpope/vim-rake.git
git clone https://github.com/tpope/vim-bundler.git
git clone https://github.com/airblade/vim-gitgutter.git
git clone https://github.com/vim-ruby/vim-ruby.git
git clone https://github.com/tpope/vim-cucumber.git
git clone https://github.com/tpope/vim-haml.git
git clone git://github.com/jiangmiao/auto-pairs.git

cd /tmp/
git clone https://github.com/vim-scripts/ShowMarks.git
mkdir ~/.vim/bundle/ShowMarks
cp ShowMarks/plugin/showmarks.vim ~/.vim/bundle/ShowMarks/
cd ~/.vim/bundle/

