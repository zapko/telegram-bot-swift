// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation
import SwiftyJSON

/// This object represents a sticker set.
///
/// - SeeAlso: <https://core.telegram.org/bots/api#stickerset>

public struct StickerSet: JsonConvertible {
    /// Original JSON for fields not yet added to Swift structures.
    public var json: JSON

    /// Sticker set name
    public var name: String {
        get { return json["name"].stringValue }
        set { json["name"].stringValue = newValue }
    }

    /// Sticker set title
    public var title: String {
        get { return json["title"].stringValue }
        set { json["title"].stringValue = newValue }
    }

    /// True, if the sticker set contains masks
    public var containsMasks: Bool {
        get { return json["contains_masks"].boolValue }
        set { json["contains_masks"].boolValue = newValue }
    }

    /// List of all set stickers
    public var stickers: [Sticker] {
        get { return json["stickers"].arrayValue() }
        set { json["stickers"] = JSON.initFrom(newValue) }
    }

    public init(json: JSON = [:]) {
        self.json = json
    }
}
