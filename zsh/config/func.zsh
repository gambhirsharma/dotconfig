alias hack="docker run --rm -it bcbcarl/hollywood"

# search
alias ff="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}' | xargs lz"

# get weather
alias weather="curl wttr.in/duliajan"

# -----------------------------------------------------------------------------------
## setting up pomodoro timer.
alias work="timer 60m && terminal-notifier -message 'Pomodoro'\
        -title 'Work Timer is up! Take a Break 😊'\
        -appIcon '~/Pictures/pumpkin.png'\
        -sound Crystal"

alias rest="timer 10m && terminal-notifier -message 'Pomodoro'\
        -title 'Break is over! Get back to work 😬'\
        -appIcon '~/Pictures/pumpkin.png'\
        -sound Crystal"

alias sat="timer 2h30m && terminal-notifier -message 'Pomodoro'\
        -title 'Break is over! Get back to work 😬'\
        -appIcon '~/Pictures/pumpkin.png'\
        -sound Crystal"


# ---------------------------------------------------------------------
# switching config in neovim
alias nvim-lazy="NVIM_APPNAME=LazyVim nvim"
alias lz="NVIM_APPNAME=LazyVim nvim"
alias nvim-kick="NVIM_APPNAME=kickstart nvim"
alias nvim-chad="NVIM_APPNAME=NvChad nvim"
alias nv="NVIM_APPNAME=NvChad nvim"
alias nvim-astro="NVIM_APPNAME=AstroNvim nvim"

# alias nv-test="NVIM_APPNAME=NvChadTest nvim"
alias nvim-prime="NVIM_APPNAME=NvimPrime nvim"

function nvims() {
  items=("default" "kickstart" "LazyVim" "NvChad" "AstroNvim" "NvimPrime")
  config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
  if [[ -z $config ]]; then
    echo "Nothing selected"
    return 0
  elif [[ $config == "default" ]]; then
    config=""
  fi
  NVIM_APPNAME=$config nvim $@
}
bindkey -s ^n "nvims\n"
# ----------------------------------------------------------------------

## opening Applications
function apps() {
  local apps
  apps=$(ls /Applications)
  selected_app=$(echo "$apps" | fzf --prompt="🚀 Open Application 🚀 " --height=~50% --layout=reverse --border --exit-0)
  if [[ -z $selected_app ]]; then
    echo "Nothing selected"
    return 0
  fi
  open -a "$selected_app"
}
bindkey -s ^a "apps\n"
# ------------------------------------------------------------------------
# Notes 
function note(){
  cd ~/Documents//Notes
  lz ~/Documents/Notes/
}

# Rustvibes 
function rv() { 
  local soundpack
  soundpack=$(find ~/Music/Soundpacks/ -maxdepth 1 -type d -exec basename {} \; | fzf --height 50% --preview 'ls -l {}')

  if [ -n "$soundpack" ]; then
    local soundpack_path
    soundpack_path=~/Music/Soundpacks/"$soundpack" #My soundpack are in ~/Mucic/Soundpacks/
    echo "Selected Soundpack: $soundpack"
    rustyvibes "$soundpack_path" -v 100 # -v <volume> (0-100 | optional)
  else
    echo "No Soundpack selected."
  fi
}
