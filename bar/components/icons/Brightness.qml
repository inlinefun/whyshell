import QtQuick

import qs.common
import qs.icons
import qs.services

pragma ComponentBehavior: Bound

MouseArea {
    id: area
    implicitHeight: Constants.barHeight
    implicitWidth: Constants.barHeight
    BrightnessIcon {
        id: icon
        anchors.centerIn: area
        iconSize: 22
        color: Colors.on_surface
        transform: Rotation {
            origin {
                x: icon.width / 2
                y: icon.height / 2
            }
            angle: DisplayService.brightness * 90 / 100
        }
    }
    Rectangle {
        id: container
        anchors.centerIn: icon
        implicitHeight: 10
        implicitWidth: implicitHeight
        radius: 5
        rotation: 180
        color: Colors.on_surface
        Rectangle {
            implicitHeight: 10
            implicitWidth: implicitHeight * ((100 - DisplayService.brightness) / 100) // 100% - brightness / 100 to get to 0.someValue
            color: Colors.surface
        }
    }
    onWheel: (event) => {
        event.accepted = true
        var shouldIncrement = event.angleDelta.y > 0
        DisplayService.changeBy(5, shouldIncrement)
    }
}
