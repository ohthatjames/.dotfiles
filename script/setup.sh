
echo "Symlinking..."

ln -sf `pwd`/files/atom-snippets.cson ~/.atom/snippets.cson
ln -sf `pwd`/files/atom-keymap.cson ~/.atom/keymap.cson

echo "Git aliases..."

git config --global alias.st 'status'
git config --global alias.ci 'commit -v'
git config --global alias.cia 'commit --amend -v'
git config --global alias.co 'checkout'
git config --global alias.cp 'cherry-pick'
git config --global alias.hop '! SKIP_HOOKUP=1 git checkout'
git config --global alias.ld 'log --decorate'
git config --global alias.p 'pull'
git config --global alias.pnp '!git pull -r && git push'
git config --global alias.oops 'commit --amend --no-edit'
git config --global alias.praise 'blame'
git config --global alias.rba 'rebase --abort'
git config --global alias.rbc 'rebase --continue'
git config --global alias.rbi 'rebase -i --autosquash'
git config --global alias.rbio 'rebase -i --autosquash origin/master'
git config --global alias.rbo 'rebase origin/master'
git config --global alias.w 'whatchanged'

echo "Other git defaults..."

git config --global branch.autosetuprebase always
git config --global commit.verbose true
git config --global core.attributesfile "~/.dotfiles/files/.gitattributes"
git config --global core.excludesfile ~/.gitignore_global
git config --global core.editor "atom --wait"
git config --global core.pager "/usr/local/share/git-core/contrib/diff-highlight/diff-highlight | less"
git config --global credential.helper 'osxkeychain'
git config --global fetch.prune true
git config --global log.decorate true
git config --global merge.railsschema.name 'newer Rails schema version'
git config --global merge.railsschema.driver "ruby -e 'system %(git), %(merge-file), %(--marker-size=%L), %(%A), %(%O), %(%B);
  b = File.read(%(%A));
  b.sub!(/^<+ .*\\nActiveRecord::Schema\\.define.version: ([\\d_]+). do\\n=+\\nActiveRecord::Schema\\.define.version: ([\\d_]+). do\\n>+ .*/) {
    %(ActiveRecord::Schema.define(version: #{[\$1, \$2].max}) do);
  };
  File.open(%(%A), %(w)) {|f| f.write(b)};
  exit 1 if b.include?(%(<)*%L)'"
git config --global pull.rebase true
git config --global push.default simple
git config --global rebase.autosquash true
git config --global user.name "James Hunt"
git config --global user.email "`echo bugungwnzrf@tznvy.pbz | tr '[A-Za-z]' '[N-ZA-Mn-za-m]'`"

echo "Git colours"

git config --global color.diff-highlight.oldNormal 'red bold'
git config --global color.diff-highlight.oldHighlight 'red bold 52'
git config --global color.diff-highlight.newNormal 'green bold'
git config --global color.diff-highlight.newHighlight 'green bold 22'

git config --global color.diff.commit 'green'
git config --global color.diff.meta 'yellow'
git config --global color.diff.frag 'cyan'
git config --global color.diff.old 'red'
git config --global color.diff.new 'green'
git config --global color.diff.whitespace 'red reverse'

echo "Atom packages..."

apm install jumpy
apm install language-haml
apm install language-rust
apm install ohthatjames/letify
apm install pigments
apm install rails-rspec
apm install rspec
apm install rspec-language
apm install ohthatjames/ruby-initializer-variables
apm install sort-lines
apm install symbol-gen
