// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation
import SwiftyJSON

/// This object represents a voice note.
///
/// - SeeAlso: <https://core.telegram.org/bots/api#voice>

public struct Voice: JsonConvertible {
    /// Original JSON for fields not yet added to Swift structures.
    public var json: JSON

    /// Unique identifier for this file
    public var fileId: String {
        get { return json["file_id"].stringValue }
        set { json["file_id"].stringValue = newValue }
    }

    /// Duration of the audio in seconds as defined by sender
    public var duration: Int {
        get { return json["duration"].intValue }
        set { json["duration"].intValue = newValue }
    }

    /// Optional. MIME type of the file as defined by sender
    public var mimeType: String? {
        get { return json["mime_type"].string }
        set { json["mime_type"].string = newValue }
    }

    /// Optional. File size
    public var fileSize: Int? {
        get { return json["file_size"].int }
        set { json["file_size"].int = newValue }
    }

    public init(json: JSON = [:]) {
        self.json = json
    }
}
