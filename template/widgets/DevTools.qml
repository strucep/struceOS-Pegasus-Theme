// struceOS
// Copyright (C) 2024 strucep

import QtQuick 2.15

Item { //devtools
    id: devtools

    anchors.top: parent.top
    anchors.bottom: parent.bottom
    anchors.right: parent.right

    width: parent.width / 3

    visible: settings.enableDevTools

    Rectangle { //log_window
        id: log_window

        anchors.top: parent.top
        anchors.bottom: button.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: vpx(12)

        color: addAlphaToHex(settings.consoleLogBackground,p.black)

        radius: vpx(12)

        Item{ //log_clip
            id: log_clip

            anchors.fill: parent
            anchors.margins: vpx(12)

            clip: true

            TextEdit{ //log_text
                id: log_text

                anchors.left: parent.left
                anchors.right: parent.right
                anchors.bottom: parent.bottom

                color: p.white

                wrapMode: TextEdit.WordWrap
            }
        }
    }

    Rectangle { //button
        id: button

        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.margins: vpx(24)

        height: vpx(48)
        width: vpx(48)

        radius: vpx(48)

        color: hovered ? p.launch : p.launch_hover

        visible: true

        property var hovered: false

        MouseArea { //button_click
            id: button_click
            enabled: true
            anchors.fill: parent
            hoverEnabled: true

            cursorShape: Qt.PointingHandCursor

            onEntered: {
                button.hovered = true
            }

            onExited: {
                button.hovered = false
            }

            onClicked: {
                audio.stopAll()
                audio.select.play()
                log("DEV-BUTTON", true)
                mouse.event = accepted
            }

            onDoubleClicked: {
                mouse.event = accepted
            }
        }
    }
    property Item log_text: log_text
}