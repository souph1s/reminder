//
//  String+Ext.swift
//  Reminder
//
//  Created by Sophia Muraro on 10/03/25.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
