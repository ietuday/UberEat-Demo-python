//
//  DeliveryViewController.swift
//  FoodTaskerMobile
//
//  Created by Leo Trieu on 9/25/16.
//  Copyright © 2016 Leo Trieu. All rights reserved.
//

import UIKit

class DeliveryViewController: UIViewController {

    @IBOutlet weak var menuBarButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if self.revealViewController() != nil {
            menuBarButton.target = self.revealViewController()
            menuBarButton.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }

}
