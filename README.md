# sqq postal

This script was created by Snnacqq
N7 Store Discord https://discord.gg/PWnxxHcpbr

# INSTALLATION التثبيت

## Add the script to the server resources
## اضف السكربت الى ملف موارد الخادم
- add `ensure sqq-postal` AFTER your other scripts in your server.cfg

- server.cfg في موارد الخادم `ensure sqq-postal` أضف

# To add a radialmenu icon اضافة ايقونة القائمة
- Follow the next `qb-radialmenu > html > ui.html` folder

```HTML
<i data-fa-symbol="general-blips" class="fa fa-route"></i>
```

# To add a menu button اضافة القائمة
- Follow the next `qb-radialmenu > config > rootMenuConfig` folder

```LUA
    ['generalblips:open'] = {
        title = "احداثيات",
        icon = "#general-blips",
        functionName = "sqq-postal:start"
    },
```
# Idle usage
![image](https://github.com/SNACKGYG/sqq-postal/assets/97559522/aebcb3df-bfcd-4343-8465-4dd3ec17f58b)

