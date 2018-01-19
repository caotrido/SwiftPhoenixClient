//
//  Payload.swift
//  SwiftPhoenixClient
//

import Swift

public class Payload {
    var topic: String
    var event: String
    var ref: String
    var message: Message

    /**
     Initializes a formatted Payload
     - parameter topic:   String topic name
     - parameter event:   String event name
     - parameter ref:     String ref to identify payload
     - parameter message: Message payload
     - returns: Payload
     */
    public init(topic: String, event: String, ref: String? = nil, message: Message) {
        (self.topic, self.event, self.ref, self.message) = (topic, event, ref ?? NSUUID().uuidString, message)
    }

    public func getRef() -> String {
        return self.ref
    }
}
