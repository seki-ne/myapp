//
//  ViewController.swift
//  MyApp
//
//  Copyright © 2020 test. All rights reserved.
//

import UIKit
import FirebaseAnalytics

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
          super.viewDidAppear(animated)
//          Analytics.logEvent(AnalyticsEventScreenView,
//                     parameters: [AnalyticsParameterScreenName: "ViewControllerName",
//                                  AnalyticsParameterScreenClass: "ViewControllerClass"])
        Analytics.setScreenName("ViewControllerName", screenClass: "ViewControllerClass")
    }

}

