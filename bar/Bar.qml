import QtQuick.Layouts
import Quickshell

import qs.bar.components
import qs.common

PanelWindow {
    id: bar
    implicitHeight: Constants.barHeight
    color: Colors.surface
    anchors {
        top: true
        left: true
        right: true
        bottom: false
    }
    RowLayout {
        id: left
        anchors {
            top: parent.top
            left: parent.left
            bottom: parent.bottom
        }
        Workspaces { }
        MediaPlayer { }
    }
    RowLayout {
        id: center
        anchors {
            top: parent.top
            bottom: parent.bottom
            horizontalCenter: parent.horizontalCenter
        }
        DateTime { }
    }
    RowLayout {
        id: right
        anchors {
            top: parent.top
            right: parent.right
            bottom: parent.bottom
        }
        StatusIcons { }
    }
}
