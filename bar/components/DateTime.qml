import QtQuick
import Quickshell

import qs.common
import qs.common.components

Rectangle {
    implicitHeight: 30
    implicitWidth: 160
    color: Colors.surface_container_low
    radius: implicitHeight
    CText {
        id: text
        fontSize: 16
        anchors.centerIn: parent
        color: Colors.on_surface
        text: Qt.formatDateTime(clock.date, "hh:mmAP | MMM dd")
    }
    SystemClock {
        id: clock
        precision: SystemClock.Minutes
    }
}
