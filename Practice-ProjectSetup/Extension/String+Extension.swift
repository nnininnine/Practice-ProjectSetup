//
//  String+Extension.swift
//  Practice-ProjectSetup
//
//  Created by 7Peaks on 22/8/2565 BE.
//

extension String {
  func localized() -> String {
    return String(localized: .init(self))
  }
}
