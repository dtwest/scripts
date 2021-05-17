function backup {
  old_dir=$(pwd)
  cd ~/projects/scripts
  . ./init.sh && backup_mac
  cd $old_dir
}
