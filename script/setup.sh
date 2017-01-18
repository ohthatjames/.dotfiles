
# Symlink files
ln -sf `pwd`/files/atom-snippets.cson ~/.atom/snippets.cson

# Git aliases

git config --global alias.st 'status'
git config --global alias.co 'checkout'
git config --global alias.ci 'commit'
git config --global alias.ld 'log --decorate'
git config --global alias.p 'pull'
git config --global alias.oops 'commit --amend --no-edit'
git config --global alias.praise 'blame'
git config --global alias.rba 'rebase --abort'
git config --global alias.rbc 'rebase --continue'
git config --global alias.rbi 'rebase -i --autosquash'
git config --global alias.w 'whatchanged'

# Other git defaults

git config --global commit.verbose true
git config --global core.excludesfile ~/.gitignore_global
git config --global core.editor "atom --wait"
git config --global log.decorate true
git config --global push.default simple
git config --global rebase.autosquash true
git config --global user.name "James Hunt"
git config --global user.email "`echo bugungwnzrf@tznvy.pbz | tr '[A-Za-z]' '[N-ZA-Mn-za-m]'`"


# Atom packages

apm install language-rust
apm install ohthatjames/letify
apm install pigments
apm install rails-rspec
apm install rspec-snippets
apm install ohthatjames/ruby-initializer-variables
