import QtQuick
import QtQuick.Layouts

import qs.animations
import qs.common
import qs.common.components
import qs.icons
import qs.osd
import qs.services

OSDItem {
    RowLayout {
        anchors {
            fill: parent
        }
        Item {
            id: container

            readonly property int iconSize: 28
            property color color: MediaService.playing ? Colors.primary : Colors.primary_fixed

            Layout.fillHeight: true
            implicitWidth: height
            MusicNoteIcon {
                id: icon
                anchors {
                    centerIn: parent
                }
                color: container.color
                size: container.iconSize
            }
            Rectangle {
                anchors {
                    centerIn: parent
                }
                implicitWidth: 2
                implicitHeight: MediaService.playing ? 0 : container.iconSize
                color: container.color
                opacity: MediaService.playing ? 0 : 1
                rotation: -45
                Behavior on implicitHeight {
                    AnimateNumber {}
                }
                Behavior on opacity {
                    AnimateNumber {}
                }
            }
            Behavior on color {
                AnimateColor {}
            }
        }
        ColumnLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true
            RowLayout {
                id: textLayout

                readonly property int fontSize: 16
                Layout.topMargin: 8
                Layout.rightMargin: 12

                StyledText {
                    readonly property string label: MediaService.track
                    text: {
                        const maxLength = 20;
                        if (label.length > maxLength) {
                            return label.substring(0, maxLength + 1) + "...";
                        }
                        return label;
                    }
                    color: Colors.on_surface
                    size: textLayout.fontSize
                }
            }
            Item {
                Layout.fillHeight: true
            }
            Rectangle {
                id: barContainer
                Layout.fillWidth: true
                Layout.rightMargin: 12
                Layout.bottomMargin: 12
                implicitHeight: 4
                color: Colors.surface_container_highest
                radius: 4
                Rectangle {
                    implicitWidth: parent.width * MediaService.progress
                    implicitHeight: parent.implicitHeight
                    color: MediaService.playing ? Colors.primary : Colors.primary_fixed
                    radius: 4
                    Behavior on implicitWidth {
                        AnimateNumber {}
                    }
                    Behavior on color {
                        AnimateColor {}
                    }
                }
            }
        }
    }
}
