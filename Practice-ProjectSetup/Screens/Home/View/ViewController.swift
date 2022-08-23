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

    setupLabel()
  }

  func setupLabel() {
    helloLabel.text = String(localized: "Hello") + " \(name)"
    helloLabel.sizeToFit()
    helloLabel.translatesAutoresizingMaskIntoConstraints = false
    helloLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    helloLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
  }

  func configure(with name: String) {
    self.name = name
  }
}
