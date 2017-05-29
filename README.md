# k3screenctrl_sh
此项目是 [k3screenctrl](https://github.com/updateing/k3screenctrl) 输出脚本的优化改良版  
推荐搭配 [luci-app-k3screenctrl](https://github.com/Hill-98/luci-app-k3screenctrl) 使用

```
basic.sh
# 屏幕第一页脚本，增加 CPU 温度显示支持，优化硬件版本显示。
host.sh
# 屏幕第五页脚本，完美可用，需 BusyBox 的 arp 命令支持。
wifi.sh
# 屏幕第四页脚本，增加隐藏无线密码，需配合 luci 使用。
```
第一页和第四页脚本配合 luci 界面使用更佳，如果单独使用，请注意删除关于 luci 的部分命令。
