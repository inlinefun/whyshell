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
        id: left
        anchors {
            top: parent.top
            left: parent.left
            bottom: parent.bottom
        }
        MediaPlayer {}
    }

    RowLayout {
        id: center
        anchors {
            top: parent.top
            bottom: parent.bottom
            horizontalCenter: parent.horizontalCenter
        }
        DateTime {}
    }

    RowLayout {
        id: right
        anchors {
            top: parent.top
            right: parent.right
            bottom: parent.bottom
        }
        Tray {}
        Bluetooth {}
        PowerProfiles {}
        Brightness {}
        Volume {}
        Battery {}
    }
    // PopupWindow {
    //     id: popup
    //     anchor {
    //         item: tray
    //         // edges: Edges.Bottom | Edges.Left
    //         adjustment: PopupAdjustment.Slide
    //         rect {
    //             x: -(width / 2) + ((root.target?.width ?? 2) / 2)
    //             y: root.height - 1
    //         }
    //     }
    //     implicitWidth: container.implicitWidth
    //     implicitHeight: container.properHeight + 1
    //     color: "transparent"
    //     visible: root.target !== null
    //     Rectangle {
    //         id: container
    //         readonly property int properHeight: Math.max(previousHeight, currentHeight)
    //         readonly property int currentHeight: root.activeTarget === null ? 1 : root.target === tray ? 200 : 100
    //         property int previousHeight: 1
    //         onCurrentHeightChanged: {
    //             if (currentHeight > previousHeight) {
    //                 previousHeight;
    //             }
    //         }
    //         implicitWidth: 200
    //         implicitHeight: properHeight
    //         color: Colors.surface
    //         bottomLeftRadius: 10
    //         bottomRightRadius: 10
    //         Behavior on implicitHeight {
    //             AnimateNumber {
    //                 onFinished: {
    //                     container.previousHeight = container.currentHeight;
    //                 }
    //             }
    //         }
    //         Behavior on implicitWidth {
    //             AnimateNumber {}
    //         }
    //     }
    // }
}
