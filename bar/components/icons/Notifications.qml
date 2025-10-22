import QtQuick 

import qs.common
import qs.icons

MouseArea {
    implicitHeight: Constants.barHeight
    implicitWidth: Constants.barHeight
    acceptedButtons: Qt.LeftButton | Qt.MiddleButton
    NotificationsIcon {
        anchors.centerIn: parent
        iconSize: 24
    }
    onClicked: (event) => {
        if (event.button == Qt.LeftButton) {

            return
        }
        if (event.button == Qt.MiddleButton) {

            return
        }
    }
}
