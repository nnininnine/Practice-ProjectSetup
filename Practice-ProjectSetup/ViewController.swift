//
//  ViewController.swift
//  Practice-ProjectSetup
//
//  Created by 7Peaks on 22/8/2565 BE.
//

import UIKit

class ViewController: UIViewController {
  // MARK: - Outlets

  @IBOutlet private var helloLabel: UILabel!

  // MARK: - Properties

  // MARK: - LifeCycle

  override func viewDidLoad() {
    super.viewDidLoad()

    setup()
  }

  // MARK: - Methods

  func setup() {
    helloLabel.text = String(localized: "Hello")
  }
}
