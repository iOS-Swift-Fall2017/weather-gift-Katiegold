//
//  TimeInterval+format.swift
//  weather app
//
//  Created by Katie on 11/6/17.
//  Copyright © 2017 Katie. All rights reserved.
//

import Foundation

extension TimeInterval {
    func format(timeZone: String, dateFormatter: DateFormatter) -> String {
        let usuableDate = Date(timeIntervalSince1970: self)
        dateFormatter.timeZone = TimeZone(identifier: timeZone)
        let dateString = dateFormatter.string(from: usuableDate)
        return dateString
    }
}
