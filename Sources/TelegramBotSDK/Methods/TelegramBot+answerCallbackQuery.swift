// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation
import Dispatch

public extension TelegramBot {
    typealias AnswerCallbackQueryCompletion = (_ result: Bool?, _ error: DataTaskError?) -> ()

    /// Use this method to send answers to callback queries sent from inline keyboards. The answer will be displayed to the user as a notification at the top of the chat screen or as an alert. On success, True is returned.
    /// Alternatively, the user can be redirected to the specified Game URL. For this option to work, you must first create a game for your bot via BotFather and accept the terms. Otherwise, you may use links like telegram.me/your_bot?start=XXXX that open your bot with a parameter.
    /// - Parameters:
    ///     - callback_query_id: Unique identifier for the query to be answered
    ///     - text: Text of the notification. If not specified, nothing will be shown to the user, 0-200 characters
    ///     - show_alert: If true, an alert will be shown by the client instead of a notification at the top of the chat screen. Defaults to false.
    ///     - url: URL that will be opened by the user's client. If you have created a Game and accepted the conditions via @Botfather, specify the URL that opens your game – note that this will only work if the query comes from a callback_game button.
    ///       Otherwise, you may use links like telegram.me/your_bot?start=XXXX that open your bot with a parameter.
    ///     - cache_time: The maximum amount of time in seconds that the result of the callback query may be cached client-side. Telegram apps will support caching starting in version 3.14. Defaults to 0.
    /// - Returns: Bool on success. Nil on error, in which case `TelegramBot.lastError` contains the details.
    /// - Note: Blocking version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#answercallbackquery>
    @discardableResult
    public func answerCallbackQuerySync(
            callback_query_id: String,
            text: String? = nil,
            show_alert: Bool? = nil,
            url: String? = nil,
            cache_time: Int? = nil,
            _ parameters: [String: Any?] = [:]) -> Bool? {
        return requestSync("answerCallbackQuery", defaultParameters["answerCallbackQuery"], parameters, [
            "callback_query_id": callback_query_id,
            "text": text,
            "show_alert": show_alert,
            "url": url,
            "cache_time": cache_time])
    }

    /// Use this method to send answers to callback queries sent from inline keyboards. The answer will be displayed to the user as a notification at the top of the chat screen or as an alert. On success, True is returned.
    /// Alternatively, the user can be redirected to the specified Game URL. For this option to work, you must first create a game for your bot via BotFather and accept the terms. Otherwise, you may use links like telegram.me/your_bot?start=XXXX that open your bot with a parameter.
    /// - Parameters:
    ///     - callback_query_id: Unique identifier for the query to be answered
    ///     - text: Text of the notification. If not specified, nothing will be shown to the user, 0-200 characters
    ///     - show_alert: If true, an alert will be shown by the client instead of a notification at the top of the chat screen. Defaults to false.
    ///     - url: URL that will be opened by the user's client. If you have created a Game and accepted the conditions via @Botfather, specify the URL that opens your game – note that this will only work if the query comes from a callback_game button.
    ///       Otherwise, you may use links like telegram.me/your_bot?start=XXXX that open your bot with a parameter.
    ///     - cache_time: The maximum amount of time in seconds that the result of the callback query may be cached client-side. Telegram apps will support caching starting in version 3.14. Defaults to 0.
    /// - Returns: Bool on success. Nil on error, in which case `error` contains the details.
    /// - Note: Asynchronous version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#answercallbackquery>
    public func answerCallbackQueryAsync(
            callback_query_id: String,
            text: String? = nil,
            show_alert: Bool? = nil,
            url: String? = nil,
            cache_time: Int? = nil,
            _ parameters: [String: Any?] = [:],
            queue: DispatchQueue = .main,
            completion: AnswerCallbackQueryCompletion? = nil) {
        return requestAsync("answerCallbackQuery", defaultParameters["answerCallbackQuery"], parameters, [
            "callback_query_id": callback_query_id,
            "text": text,
            "show_alert": show_alert,
            "url": url,
            "cache_time": cache_time],
            queue: queue, completion: completion)
    }
}

