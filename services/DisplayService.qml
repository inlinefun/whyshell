import QtQuick
import Quickshell
import Quickshell.Io

pragma Singleton

Singleton {
    id: root
    property int brightness: -1
    signal onBrightnessChange()
    onBrightnessChanged: {
        onBrightnessChange() 
    }
    function changeBy(value: int, increment: bool) {
        var sign = increment ? '+' : '-'
        Quickshell.execDetached(["brightnessctl", "-n2", "set", `${value}%${sign}`])
    }
    Process {
        id: brightnessSync
        running: true
        command: [ "brightnessctl", "-m" ]
        stdout: StdioCollector {
            onStreamFinished: {
                var output = this.text.trim()
                var parts = output.split(",")
                if (parts.length > 3) {
                    var formatted = parts[3].replace('%', ' ').trim()
                    var value = parseInt(formatted)
                    if (!isNaN(value) && value >= 0 && value <= 100 && root.brightness != value) {
                        root.brightness = value
                    }
                }
            }
        }
    }
    Timer {
        id: syncTimer
        running: true
        repeat: true
        interval: 50
        onTriggered: brightnessSync.running = true
    }
}
