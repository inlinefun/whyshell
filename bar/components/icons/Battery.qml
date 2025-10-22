import QtQuick
import QtQuick.Layouts

import qs.common
import qs.common.components
import qs.services

RowLayout {
    implicitHeight: Constants.barHeight
    implicitWidth: Constants.barHeight
    spacing: 1
    Rectangle {
        Layout.alignment: Qt.AlignVCenter
        implicitHeight: 18
        implicitWidth: 26
        radius: 3
        RowLayout {
            anchors.centerIn: parent
            spacing: 0
            implicitHeight: parent.implicitHeight
            implicitWidth: parent.implicitWidth
            CText {
                text: PowerService.charge
                color: Colors.surface
                bold: true
                fontSize: 12
            }
            Icon {
                id: icon
                icon: "󱐋"
                size: 12
                color: Colors.surface
                opacity: PowerService.charging ? 1 : 0
                visible: opacity > 0 ? true : false
            }
        }
    }
    Rectangle {
        Layout.alignment: Qt.AlignVCenter
        implicitHeight: 10
        implicitWidth: 2
        topRightRadius: 2
        bottomRightRadius: 2
    }
}
