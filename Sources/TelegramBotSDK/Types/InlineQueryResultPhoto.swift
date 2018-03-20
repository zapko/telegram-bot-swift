// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation
import SwiftyJSON

/// Represents a link to a photo. By default, this photo will be sent by the user with optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the photo.
///
/// - SeeAlso: <https://core.telegram.org/bots/api#inlinequeryresultphoto>

public struct InlineQueryResultPhoto: JsonConvertible {
    /// Original JSON for fields not yet added to Swift structures.
    public var json: JSON

    /// Type of the result, must be photo
    public var typeString: String {
        get { return json["type"].stringValue }
        set { json["type"].stringValue = newValue }
    }

    /// Unique identifier for this result, 1-64 bytes
    public var id: String {
        get { return json["id"].stringValue }
        set { json["id"].stringValue = newValue }
    }

    /// A valid URL of the photo. Photo must be in jpeg format. Photo size must not exceed 5MB
    public var photoUrl: String {
        get { return json["photo_url"].stringValue }
        set { json["photo_url"].stringValue = newValue }
    }

    /// URL of the thumbnail for the photo
    public var thumbUrl: String {
        get { return json["thumb_url"].stringValue }
        set { json["thumb_url"].stringValue = newValue }
    }

    /// Optional. Width of the photo
    public var photoWidth: Int? {
        get { return json["photo_width"].int }
        set { json["photo_width"].int = newValue }
    }

    /// Optional. Height of the photo
    public var photoHeight: Int? {
        get { return json["photo_height"].int }
        set { json["photo_height"].int = newValue }
    }

    /// Optional. Title for the result
    public var title: String? {
        get { return json["title"].string }
        set { json["title"].string = newValue }
    }

    /// Optional. Short description of the result
    public var description: String? {
        get { return json["description"].string }
        set { json["description"].string = newValue }
    }

    /// Optional. Caption of the photo to be sent, 0-200 characters
    public var caption: String? {
        get { return json["caption"].string }
        set { json["caption"].string = newValue }
    }

    /// Optional. Send Markdown or HTML, if you want Telegram apps to show bold, italic, fixed-width text or inline URLs in the media caption.
    public var parseMode: String? {
        get { return json["parse_mode"].string }
        set { json["parse_mode"].string = newValue }
    }

    /// Optional. Inline keyboard attached to the message
    public var replyMarkup: InlineKeyboardMarkup? {
        get {
            let value = json["reply_markup"]
            return value.isNullOrUnknown ? nil : InlineKeyboardMarkup(json: value)
        }
        set {
            json["reply_markup"] = newValue?.json ?? JSON.null
        }
    }

    /// Optional. Content of the message to be sent instead of the photo
    public var inputMessageContent: InputMessageContent? {
        get {
            let value = json["input_message_content"]
            return value.isNullOrUnknown ? nil : InputMessageContent(json: value)
        }
        set {
            json["input_message_content"] = newValue?.json ?? JSON.null
        }
    }

    public init(json: JSON = [:]) {
        self.json = json
    }
}
