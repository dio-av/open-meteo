import Foundation


extension DispatchTime {
    /// Nicely format elapsed time
    func timeElapsedPretty() -> String {
        let deltaMs = Double((DispatchTime.now().uptimeNanoseconds - uptimeNanoseconds) / 1_000_000)
        if deltaMs < 5 {
            return "\(deltaMs.round(digits: 2))ms"
        }
        if deltaMs < 20 {
            return "\(deltaMs.round(digits: 1))ms"
        }
        if deltaMs < 800 {
            return "\(deltaMs.round(digits: 0))ms"
        }
        if deltaMs < 5_000 {
            return "\((deltaMs/1_000).round(digits: 2))s"
        }
        if deltaMs < 20_000 {
            return "\((deltaMs/1_000).round(digits: 1))s"
        }
        return "\((deltaMs/1_000).round(digits: 0))s"
    }
}
