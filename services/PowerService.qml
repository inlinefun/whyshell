import Quickshell
import Quickshell.Services.UPower

pragma Singleton 

Singleton {
    readonly property UPowerDevice device: UPower.displayDevice
    readonly property bool ready: device.ready
    readonly property bool charging: state == UPowerDeviceState.Charging
    readonly property int charge: ready ? Math.round(device.percentage * 100) : 100
    readonly property int state: ready ? device.state : UPowerDeviceState.Unknown
}
