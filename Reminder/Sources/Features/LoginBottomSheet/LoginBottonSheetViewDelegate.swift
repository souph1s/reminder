//
//  LoginBottonSheetViewDelegate.swift
//  Reminder
//
//  Created by Sophia Muraro on 15/05/25.
//

import Foundation
import UIKit

protocol LoginBottonSheetViewDelegate : AnyObject {
    func sendLoginData(user: String, password: String)
}
