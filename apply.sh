# directories to watch
dirs=("kitty" "nvim" "lazygit" "herdr")
cfg_path="$HOME/.config"
# apply configuration files
dist="./"
for dir in "${dirs[@]}"; do
  rsync -a --delete --exclude='.git' "$dist/$dir/" "$cfg_path/$dir/"
done
