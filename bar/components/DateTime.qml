import QtQuick
import Quickshell

import qs.common

Rectangle {
    id: container
    implicitHeight: label.implicitHeight + 10
    implicitWidth: label.implicitWidth + 15
    color: Colors.surface_container
    radius: container.implicitWidth
    Text {
        id: label
        text: Qt.formatDateTime(clock.date, "hh:mm A | MMM dd")
        color: Colors.on_surface
        anchors {
            centerIn: parent
        }
        font {
            pixelSize: 18
            family: Constants.fontFamily
        }
    }
    SystemClock {
        id: clock
        precision: SystemClock.Minutes
    }
}
