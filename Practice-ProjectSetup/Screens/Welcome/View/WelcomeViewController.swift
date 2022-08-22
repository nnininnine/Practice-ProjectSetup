//
//  WelcomeViewController.swift
//  Practice-ProjectSetup
//
//  Created by 7Peaks on 22/8/2565 BE.
//

import UIKit

class WelcomeViewController: UIViewController {
  // MARK: - Outlets

  @IBOutlet private var getStartButton: UIButton!

  // MARK: - Properties

  // MARK: - LifeCycles

  override func viewDidLoad() {
    super.viewDidLoad()

    setup()
  }

  // MARK: - Methods

  func setup() {
    navigationController?.navigationBar.prefersLargeTitles = true

    // setup button
    getStartButton.configuration?.title = String(localized: "Get Started")
  }

  func getStartedAlert() -> UIAlertController {
    return .init()
  }

  // MARK: - Actions

  @IBAction func onTapGetStarted(_ sender: UIButton) {
    let alert = getStartedAlert()

    present(alert, animated: true)
  }
}
