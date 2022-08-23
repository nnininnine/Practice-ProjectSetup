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

  private var name: String = ""

  // MARK: - LifeCycle

  override func viewDidLoad() {
    super.viewDidLoad()

    setup()
  }

  // MARK: - Methods

  func setup() {
    navigationItem.hidesBackButton = true

    helloLabel.text = String(localized: "Hello") + " \(name)"
    helloLabel.sizeToFit()
  }

  func configure(with name: String) {
    self.name = name
  }
}
