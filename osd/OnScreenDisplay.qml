pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Layouts
import Quickshell

import qs.animations
import qs.common
import qs.osd.components
import qs.services

PanelWindow {
    id: root

    readonly property bool show: volume.show
    property int _timer: show ? 1 : 0

    anchors {
        bottom: true
    }
    margins {
        bottom: show ? Constants.osdMargin : 0
        Behavior on bottom {
            AnimateNumber {}
        }
    }
    exclusionMode: ExclusionMode.Ignore
    implicitWidth: 240
    implicitHeight: layout.height
    color: "transparent"
    visible: _timer > 0

    Rectangle {
        id: rect
        color: Colors.surface
        radius: Constants.radius
        anchors {
            fill: parent
        }
        ColumnLayout {
            id: layout
            spacing: 0
            VolumeOSD {
                id: volume
            }
        }
    }
    Component.onCompleted: {
        AudioService.onVolumeChange.connect(() => {
            volume.resetTimer();
        });
        AudioService.onMuteChange.connect(() => {
            volume.resetTimer();
        });
    }
    Behavior on _timer {
        AnimateNumber {}
    }
}
