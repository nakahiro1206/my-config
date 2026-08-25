# directories to watch
dirs=("ghostty" "kitty" "wezterm" "nvim" "tmux" "lazygit")
cfg_path="$HOME/.config"
# copy the config files to here
dist="./"
for dir in "${dirs[@]}"; do
  cp -r "$cfg_path/$dir" "$dist"
done
