Run 으로 설치시
$ sudo /usr/bin/nvidia-uninstall
# sudo /usr/local/cuda/bin/cuda-uninstaller
# rm -rf /usr/local/cuda-10.0
$ sudo reboot

rpm으로 설치시
$ yum remove xorg-x11-drv-nvidia nvidia-kmod cuda-drivers
$ yum remove nvidia-diag-driver-local-repo-rhel7-410.104
# yum remove /usr/local/cuda-10.0
# rm -rf /usr/local/cuda-10.0
$ reboot
