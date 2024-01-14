# sqq-postal
A simple script developed and running on qbcore framework
There are more than 7 script languages, including... ar, en, zh, fr, es, de, ru,
This script was created by Snnacqq

[Discord](https://discord.gg/PWnxxHcpbr)
[Original script](https://github.com/DevBlocky/nearest-postal)

# Preview
![Facecam1](https://github.com/SNACKGYG/sqq-postal/assets/97559522/d37b7b21-c66a-497d-9d7d-a68278bc3632)


### INSTALLATION التثبيت

### Add the script to the server resources  اضف السكربت الى ملف موارد الخادم

- add `ensure sqq-postal` AFTER your other scripts in your server.cfg

- server.cfg في موارد الخادم `ensure sqq-postal` أضف

### To add a radialmenu icon
- Follow the next `qb-radialmenu > html > ui.html` folder

```HTML
<i data-fa-symbol="general-blips" class="fa fa-route"></i>
```

### To add a menu button
- Follow the next `qb-radialmenu > config > rootMenuConfig` folder

```LUA
    ['generalblips:open'] = {
        title = "احداثيات",
        icon = "#general-blips",
        functionName = "sqq-postal:start"
    },
```

### Commands
`/postal` - Open menu command.
`/postald` - blips removal command.
`/postalt` - Display postal at the beginning of the script.

### Idle usage

![image](https://github.com/SNACKGYG/sqq-postal/assets/97559522/61ec56c1-485e-42a2-9f5b-a2f82b0d1148)

