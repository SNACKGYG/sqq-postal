config = {
    -- Development mode to activate print
    SystemDebug = false, -- print وضع التطوير لتفعيل الـ

    -- Script language
    Lang = "en", -- لغة البرنامج النصي

    -- Basic system settings
    Settings = { -- الإعدادات الأساسية لنظامك
        prefix = "QBCore",
        Core = 'TB-core',
        Input = 'TB-input',    
    },

    -- Display postal at the beginning of the script
    toggleui = true, -- عرض المربع في بداية تشغيل السكربت
    -- toggle menu command
    CommandPostalt = true, -- أمر تبديل شاشة المربع
    -- Command name
    CommandPostaltName = "postalt", -- أسم الكوماند

    -- Open menu command
    CommandPostal = true, -- أمر فتح القائمة 
    -- Command name
    CommandPostalName = "postal", -- أسم الكوماند

    -- blips removal command
    CommandPostald = true, -- أمر ازالة البلبز
    -- Command name
    CommandPostaldName = "postald", -- أسم الكوماند

    -- How often in milliseconds the postal code is updated on each client.
    updateDelay = nil, -- I wouldn't recommend anything lower than 50ms for performance reasons

    Notifs = {
        ["ar"] = {
            -- ui text
            ["format"] = " %s :ﻊﺑﺮﻣ ﺏﺮﻗﺍ~w~ (~g~%.2fm~w~)",  
            -- blip
            ["blipText"] = "<FONT FACE = 'space'>"..'%s ﺏﻮﻠﻄﻤﻟﺍ ﻊﺑﺮﻤﻟﺍ', 
            -- Notify
            ["deleteText"] = "تم حذف المسار",  
            ["drawRouteText"] = "تم تحديد المسار الى مربع ",  
            ["notExistText"] = "هذا المربع  غير موجود, يرجى كتابته جيدا",  
            ["destination"] = "لقد وصلت إلى وجهتك",  
            ["toggleStart"] = "تم تشغيل أقرب مربع",  
            ["toggleStop"] = "تم إطفاء أقرب مربع",  
            -- Command name
            ["postal"] = "فتح قائمة تحديد المربع",  
            ["postald"] = "احذف تحديد المربع",
            ["postalt"] = "تشغيل / إطفاء اقرب مربع",  
            -- Input
            ["InputTextHeader"] = "الإحداثيات",  
            ["InputTextsubmit"] = "تأكيد",  
            ["InputText"] = "ادخل رقم المربع", 
            },
        ["en"] = {
            -- ui text
            ["format"] = "~y~Nearest Postal~w~: %s (~g~%.2fm~w~)",
            -- blip
            ["blipText"] = "Postal Route %s", 
            -- Notify
            ["deleteText"] = "Route deleted",  
            ["drawRouteText"] = "Drawing a route to ",  
            ["notExistText"] = "That postal doesn't exist",  
            ["destination"] = "You've reached your destination!", 
            ["toggleStart"] = "Postal has started",  
            ["toggleStop"] = "Postal has stopped",  
            -- Command name
            ["postal"] = "Open the postal menu",  
            ["postald"] = "Delete the postal",  
            ["postalt"] = "Turn on/off Nearest postal",  
            -- Input
            ["InputTextHeader"] = "Coordinates",  
            ["InputTextsubmit"] = "Confirm",  
            ["InputText"] = "Enter the postal number", 
            },
        ["zh"] = {
            -- UI文本
            ["format"] = "~y~最近的邮政编码~w~： %s （~g~%.2f米~w~）",
            -- 标记
            ["blipText"] = "邮政路线 %s",
            -- 通知
            ["deleteText"] = "路线已删除",
            ["drawRouteText"] = "绘制到邮政的路线 ",
            ["notExistText"] = "该邮政编码不存在",
            ["destination"] = "您已到达目的地！",
            ["toggleStart"] = "邮政已启动",
            ["toggleStop"] = "邮政已停止",
            -- 命令名称
            ["postal"] = "打开邮政菜单",
            ["postald"] = "删除邮政",
            ["postalt"] = "打开/关闭最近的邮政",
            -- 输入
            ["InputTextHeader"] = "坐标",
            ["InputTextsubmit"] = "确认",
            ["InputText"] = "输入邮政编码",
            },
        ["fr"] = {
             -- Texte de l'interface utilisateur
             ["format"] = "~y~Code postal le plus proche~w~ : %s (~g~%.2fm~w~)",
             -- Blip
             ["blipText"] = "Itinéraire postal %s",
             -- Notification
             ["deleteText"] = "Itinéraire supprimé",
             ["drawRouteText"] = "Tracé d'un itinéraire vers ",
             ["notExistText"] = "Ce code postal n'existe pas",
             ["destination"] = "Vous avez atteint votre destination !",
             ["toggleStart"] = "Le service postal a démarré",
             ["toggleStop"] = "Le service postal s'est arrêté",
             -- Nom de la commande
             ["postal"] = "Ouvrir le menu postal",
             ["postald"] = "Supprimer le code postal",
             ["postalt"] = "Activer/désactiver le code postal le plus proche",
             -- Entrée
             ["InputTextHeader"] = "Coordonnées",
             ["InputTextsubmit"] = "Confirmer",
             ["InputText"] = "Saisissez le numéro postal",
            },
        ["es"] = {
                -- Texto de la interfaz de usuario
            ["format"] = "~y~Código Postal más cercano~w~: %s (~g~%.2fm~w~)",
            -- Marcador
            ["blipText"] = "Ruta postal %s",
            -- Notificación
            ["deleteText"] = "Ruta eliminada",
            ["drawRouteText"] = "Dibujando una ruta hacia ",
            ["notExistText"] = "Ese código postal no existe",
            ["destination"] = "¡Has llegado a tu destino!",
            ["toggleStart"] = "El servicio postal ha comenzado",
            ["toggleStop"] = "El servicio postal se ha detenido",
            -- Nombre del comando
            ["postal"] = "Abrir el menú postal",
            ["postald"] = "Eliminar el código postal",
            ["postalt"] = "Activar/desactivar el código postal más cercano",
            -- Entrada
            ["InputTextHeader"] = "Coordenadas",
            ["InputTextsubmit"] = "Confirmar",
            ["InputText"] = "Ingresa el número postal",
            },
        ["de"] = {
            -- UI-Text
            ["format"] = "~y~Nächste Postleitzahl~w~: %s (~g~%.2fm~w~)",
            -- Blip
            ["blipText"] = "Postleitzahl-Route %s",
            -- Benachrichtigung
            ["deleteText"] = "Route gelöscht",
            ["drawRouteText"] = "Zeichne eine Route nach ",
            ["notExistText"] = "Diese Postleitzahl existiert nicht",
            ["destination"] = "Du hast dein Ziel erreicht!",
            ["toggleStart"] = "Der Postdienst wurde gestartet",
            ["toggleStop"] = "Der Postdienst wurde gestoppt",
            -- Befehlsname
            ["postal"] = "Öffne das Postmenü",
            ["postald"] = "Lösche die Postleitzahl",
            ["postalt"] = "Aktiviere/deaktiviere die nächstgelegene Postleitzahl",
            -- Eingabe
            ["InputTextHeader"] = "Koordinaten",
            ["InputTextsubmit"] = "Bestätigen",
            ["InputText"] = "Gib die Postleitzahl ein",
            },
        ["ru"] = {
            -- Текст интерфейса
            ["format"] = "~y~Ближайший почтовый индекс~w~: %s (~g~%.2fm~w~)",
            -- Метка
            ["blipText"] = "Маршрут почтового индекса %s",
            -- Уведомление
            ["deleteText"] = "Маршрут удален",
            ["drawRouteText"] = "Построение маршрута к ",
            ["notExistText"] = "Такого почтового индекса не существует",
            ["destination"] = "Вы достигли вашей цели!",
            ["toggleStart"] = "Почта запущена",
            ["toggleStop"] = "Почта остановлена",
            -- Название команды
            ["postal"] = "Открыть почтовое меню",
            ["postald"] = "Удалить почтовый индекс",
            ["postalt"] = "Включить/выключить ближайший почтовый индекс",
            -- Ввод
            ["InputTextHeader"] = "Координаты",
            ["InputTextsubmit"] = "Подтвердить",
            ["InputText"] = "Введите почтовый индекс",
            },
        },

    text = {
        -- vMenu PLD Position
        posX = 0.22,
        posY = 0.963
    },

    blip = {
 
        -- blip display
        sprite = 8, -- عرض البلبز

        -- blip color
        color = 3, -- لون البلبز

        -- When the player is this close (in meters) to the destination, 
        distToDelete = 100.0, -- عدد الامتار في حين الوصول لها ازالة البلبز 

        -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        },
    
    text = {
        -- vMenu PLD Position
        posX = 0.22,
        posY = 0.963
    },
}
