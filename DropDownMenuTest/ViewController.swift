//
//  ViewController.swift
//  DropDownMenuTest
//
//  Created by SeungWon Kim on 11/15/29 H.
//  Copyright © 29 Heisei SEUNGWON KIM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet var menuButtons: [UIButton]!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  
  @IBAction func handleSelection(_ sender: Any) {
    menuButtons.forEach { (button) in
      UIView.animate(withDuration: 0.3, animations: {
        button.isHidden = !button.isHidden
        self.view.layoutIfNeeded()
      }) // UIView.animate
    }
  }
  
  @IBAction func menuTapped(_ sender: UIButton) {
    let tappedButton = sender
    print(tappedButton.titleLabel?.text ?? "None")
  }
}

