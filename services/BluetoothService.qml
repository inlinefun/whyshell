pragma Singleton

import Quickshell
import Quickshell.Bluetooth

Singleton {
    id: root
    readonly property bool valid: device !== null
    readonly property BluetoothAdapter device: Bluetooth.defaultAdapter
    readonly property list<BluetoothDevice> devices: device.devices.values
    readonly property int state: device.state
    readonly property bool enabled: state === BluetoothAdapterState.Enabled
    readonly property bool switching: state === BluetoothAdapterState.Enabling || state === BluetoothAdapterState.Disabling
    readonly property bool connected: devices.some((device) => device.connected)

    function toggle() {
        device.enabled = !device.enabled
    }

}
