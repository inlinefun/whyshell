import QtQuick
import QtQuick.Layouts
import Quickshell

import qs.animations
import qs.common
import qs.slideout.components

PanelWindow {
    id: root
    anchors {
        top: true
        right: true
        // bottom: true
    }
    margins {
        top: Constants.barHeight
    }
    implicitWidth: 300
    exclusionMode: ExclusionMode.Ignore
    visible: Persistence.slideout | container.width > 0
    color: "transparent"
    Rectangle {
        id: container
        anchors {
            right: parent.right
        }
        implicitHeight: parent.height
        implicitWidth: Persistence.slideout ? parent.width : 0
        color: Colors.surface
        bottomLeftRadius: Constants.radius
        Behavior on implicitWidth {
            AnimateNumber {}
        }
        ColumnLayout {
            id: layout
            anchors {
                fill: parent
            }
            NotificationList {}
        }
    }
}
