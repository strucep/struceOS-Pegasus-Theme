// struceOS
// Copyright (C) 2024 strucep

import QtQuick 2.0

Item {
    id: settings

    //fonts
    property string fontFamilyRegular: 
        "assets/fonts/Open Sans/OpenSans-Regular.ttf"
    property string fontFamilyBold: 
        "assets/fonts/Open Sans/OpenSans-Bold.ttf"

    //ui
    property int hover_speed: 100
    
    property string headerSize: api.memory.get("struceOS_ui_headerSize") || "m"

    property bool twelvehour: 
        api.memory.get("struceOS_ui_twelvehour") != undefined ?
            api.memory.get("struceOS_ui_twelvehour") : true

    //audio
        //video
        property bool videoMute:
            api.memory.get("struceOS_video_videoMute") != undefined ?
                api.memory.get("struceOS_video_videoMute") : true

        property real videoVolume: api.memory.get("struceOS_video_volume") || 0.40
    
        //ui
        property bool uiMute: 
            api.memory.get("struceOS_ui_Mute") != undefined ?
                api.memory.get("struceOS_ui_Mute") : false

        property real uiVolume: api.memory.get("struceOS_ui_volume") || 0.40

    //game_layout
    property int columns: api.memory.get("struceOS_gameLayout_columns") || 5

    property bool lastPlayed: 
        api.memory.get("struceOS_gameLayout_lastPlayed") != undefined ?
            api.memory.get("struceOS_gameLayout_lastPlayed") : true

    property bool allGames: 
        api.memory.get("struceOS_gameLayout_allGames") != undefined ?
            api.memory.get("struceOS_gameLayout_allGames") : true

    property bool showThumbs: 
        api.memory.get("struceOS_gameLayout_thumbnails") != undefined ?
            api.memory.get("struceOS_gameLayout_thumbnails") : true

    //background
    property bool bgOverlayOn:
        api.memory.get("struceOS_background_overlayOn") != undefined ?
            api.memory.get("struceOS_background_overlayOn") : true

    property real bgOverlayOpacity: api.memory.get("struceOS_background_overlayOpacity") || 0.75

    property string bgOverlaySource: "0002.png"

    //devtools
    property bool enableDevTools:
        api.memory.get("struceOS_dev_enableDevTools") != undefined ?
            api.memory.get("struceOS_dev_enableDevTools") : false


    property real consoleLogBackground: api.memory.get("struceOS_dev_log_opacity") || 0.6

    property string version: "1.5.0"
    property string author: "strucep"
    property string name: "struceOS"
    property string details: "struceOS v" + version + (working ? "-working" : "")

    property bool working: false

    //Colors
    property var theme: {
            "accent": "#011936",
            "accent_light": "#465362",
            "slider": "#FE3734",
            "slider_base": "#F1C8C7",
            "launch": "#1E824C",
            "launch_hover": "#1ba39c",
            "border": addAlphaToHex(0.6, "#ffffff"),
            "text": "#ffffff",
            "text_invert": "#000000",
            "black": "#000000",
            "white": "#ffffff",
            "t": "transparent"
        }
}