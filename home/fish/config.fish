if status --is-login
  if not functions -q fisher
    curl https://git.io/fisher --create-dirs -sLo $__fish_config_dir/functions/fisher.fish
    fish -c fisher
  end
  echo Hi sempai~
end
# update everything
alias update 'pkg upgrade -y; fisher self-update; fisher'
