import QtQuick
import QtQuick.Layouts
import Quickshell

import qs.bar.components
import qs.common

PanelWindow {
    id: root
    anchors {
        top: true
        left: true
        right: true
    }
    color: Colors.surface
    implicitHeight: Constants.barHeight

    RowLayout {
        anchors {
            top: parent.top
            left: parent.left
            bottom: parent.bottom
        }
    }

    RowLayout {
        anchors {
            top: parent.top
            bottom: parent.bottom
            horizontalCenter: parent.horizontalCenter
        }
        DateTime {}
    }

    RowLayout {
        anchors {
            top: parent.top
            right: parent.right
            bottom: parent.bottom
        }
        Volume {}
        Battery {}
    }
}
