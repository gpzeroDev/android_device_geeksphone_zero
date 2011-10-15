#!/system/bin/sh
if ! applypatch -c MTD:recovery:2048:1cc8d8caf48b26e9e6002618c6d56eebd1c0bae9; then
  log -t recovery "Installing new recovery image"
  applypatch MTD:boot:2490368:41dc478aab245c9ae27cbd8901605ee41e777097 MTD:recovery ebdb920fda8d7307a69aaa9605e2b58d17b4e67c 3672064 41dc478aab245c9ae27cbd8901605ee41e777097:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
