if not functions -q fisher
  curl https://git.io/fisher --create-dirs -sLo $HOME/.config/fish/functions/fisher.fish
  fish -c fisher
end
# update everything
alias update 'apt update; apt upgrade -y; fisher; fisher self-update'

echo Hi sempai~
