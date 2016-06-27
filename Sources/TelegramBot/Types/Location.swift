// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation
import SwiftyJSON

/// This object represents a point on the map.
///
/// - SeeAlso: <https://core.telegram.org/bots/api#location>

public struct Location: JsonConvertible {
    /// Original JSON for fields not yet added to Swift structures.
    public var json: JSON

    /// Longitude as defined by sender
    public var longitude: Float {
        get { return json["longitude"].floatValue }
        set { json["longitude"].floatValue = newValue }
    }

    /// Latitude as defined by sender
    public var latitude: Float {
        get { return json["latitude"].floatValue }
        set { json["latitude"].floatValue = newValue }
    }

    public init(json: JSON = [:]) {
        self.json = json
    }
}
