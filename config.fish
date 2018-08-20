set -x GOPATH $HOME/go
set -x PATH /usr/local/var/nodebrew/current/bin /usr/local/Cellar/git/2.17.0/bin $PATH $GOPATH/bin
set -x NODEBREW_ROOT /usr/local/var/nodebrew

#set -x PATH "/usr/local/opt/libxml2/bin $PATH"
#set -x PATH "/usr/local/opt/libxslt/bin $PATH"

# vi_mode
#fish_vi_key_bindings

#function fish_mode_prompt
#end

set -x RBENV_ROOT /usr/local/var/rbenv
#if which rbenv > /dev/null
#  eval "$(rbenv init -)"
#end


function fish_user_key_bindings
        # ghq を選択
        bind \cl peco_select_ghq_repository
        # gh-open
        bind \cx\cl peco_open_gh_repository
        # コマンド履歴を見る
        bind \cr peco_select_history
        # プロセスをキルする
        bind \cx\ck peco_kill
        # 最近見たディレクトリに移動
        bind \cx\cr peco_recentd

        # fzf
        bind \cx\cf '__fzf_find_file'
        bind \ctr '__fzf_reverse_isearch'
        bind \ex '__fzf_find_and_execute'
        bind \ed '__fzf_cd'
        bind \eD '__fzf_cd_with_hidden'
end

balias kube kubectl
balias vi nvim

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/yasu/google-cloud-sdk/path.fish.inc' ]; if type source > /dev/null; source '/Users/yasu/google-cloud-sdk/path.fish.inc'; else; . '/Users/yasu/google-cloud-sdk/path.fish.inc'; end; end

eval (direnv hook fish)
