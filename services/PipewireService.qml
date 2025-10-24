import Quickshell
import Quickshell.Services.Pipewire

pragma Singleton

Singleton {
    id: root
    readonly property bool ready: Pipewire.ready
    readonly property PwNode sink: Pipewire.defaultAudioSink
    readonly property PwNode source: Pipewire.defaultAudioSource
    readonly property bool sinkReady: sink?.ready ?? false
    readonly property bool sourceReady: sink?.ready ?? false 
    readonly property PwNodeAudio sinkAudio: sinkReady ? sink.audio : null
    readonly property PwNodeAudio sourceAudio: sourceReady ? source.audio : null
    readonly property bool muted: sinkReady ? sinkAudio.muted : false
    readonly property int volume: sinkReady ? Math.round(sinkAudio.volume * 100) : -1
    PwObjectTracker {
        objects: [ root.sink, root.source, root.sinkAudio, root.sourceAudio ]
    }
    function toggleMute(audio: PwNodeAudio) {
        audio.muted = !audio.muted
    }
    function changeBy(audio: PwNodeAudio, value: int, increment: bool) {
        var volume = audio.volume + (increment ? (value / 100) : -(value / 100))
        volume = Math.max(0.0, Math.min(1.0, volume))
        audio.volume = volume
    }
}
