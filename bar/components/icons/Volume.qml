import QtQuick

import qs.common
import qs.icons
import qs.services

MouseArea {
    id: mouseArea
    implicitHeight: Constants.barHeight
    implicitWidth: Constants.barHeight
    acceptedButtons: Qt.MiddleButton
    VolumeLayer0 {
        id: layer0
        anchors.centerIn: parent
        iconSize: 24
        color: PipewireService.muted ? Colors.error : Colors.on_surface
    }
    VolumeLayer1 {
        anchors.centerIn: parent
        iconSize: layer0.iconSize
        color: layer0.color
        opacity: Math.min(PipewireService.volume, 50) / 100 * 2
    }
    VolumeLayer2 {
        anchors.centerIn: parent
        iconSize: layer0.iconSize
        color: layer0.color
        opacity: (Math.max(PipewireService.volume, 50) - 50) / 100 * 2
    }
    Rectangle {
        anchors.centerIn: parent
        width: 2
        height: 24
        radius: 2
        rotation: -45
        color: layer0.color
        opacity: PipewireService.muted ? 1 : 0
    }
    onClicked: (event) => {
        if (event.button == Qt.MiddleButton) {
            PipewireService.toggleMute(PipewireService.sinkAudio)
        }
    }
    onWheel: (event) => {
        event.accepted = true
        var shouldIncrement = event.angleDelta.y > 0
        PipewireService.changeBy(PipewireService.sinkAudio, 5, shouldIncrement)
    }
}
