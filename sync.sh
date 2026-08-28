# directories to watch
dirs=("ghostty" "kitty" "wezterm" "nvim" "tmux" "lazygit" "herdr")
cfg_path="$HOME/.config"
# copy the config files to here
dist="./"
for dir in "${dirs[@]}"; do
  rsync -a --delete --exclude='.git' "$cfg_path/$dir/" "$dist/$dir/"
done
