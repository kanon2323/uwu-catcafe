fx_version 'cerulean'
game 'gta5'

author 'Marttins#8421 (mt scripts)'
description 'mt-UwUCafe, Translated by [MT]Michel'
version '0.1'

-- ox_lib を使うための初期化
shared_script '@ox_lib/init.lua'

-- クライアントスクリプト
client_scripts {
    'client.lua',
    'targets.lua',

    -- PolyZone（qb-target 用）
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua'
}

-- 共有設定ファイル
shared_scripts {
    'config.lua',
}

-- サーバースクリプト
server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server.lua',
}

-- 依存関係（ox_lib / ox_target）
dependencies {
    'ox_lib',
    'ox_target'
}