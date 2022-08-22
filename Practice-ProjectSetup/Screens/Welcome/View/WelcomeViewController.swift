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
    let alert: UIAlertController = .init(title: String(localized: "Enter name"), message: "Enter name for first time used.".localized(), preferredStyle: .alert)

    // add text field
    alert.addTextField()

    // add cancel action
    let cancel: UIAlertAction = .init(title: String(localized: "Cancel"), style: .cancel)
    alert.addAction(cancel)

    // add confirm action
    let confirm: UIAlertAction = .init(title: String(localized: "Confirm"), style: .default, handler: { [weak self] _ in
      guard let self = self, let text: String = alert.textFields?.first?.text else { return }

      if !text.isEmpty {
        guard let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as? ViewController else { return }
        self.navigationController?.pushViewController(vc, animated: true)
      }
    })
    alert.addAction(confirm)

    return alert
  }

  // MARK: - Actions

  @IBAction func onTapGetStarted(_ sender: UIButton) {
    let alert = getStartedAlert()

    present(alert, animated: true)
  }
}
