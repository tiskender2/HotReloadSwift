//
//  StartVC.swift
//  test
//
//  Created by Tolga İskender on 15.03.2020.
//  Copyright © 2020 Tolga İskender. All rights reserved.
//

import UIKit

class StartVC: UIViewController {

    @IBOutlet weak var hotReloadLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
       // hotReloadTest()
       
    }
    func hotReloadTest(){
        self.view.backgroundColor = .yellow
        hotReloadLabel.text = "hotReloaded"
    }


    @objc func injected() {
        hotReloadTest()
    }
    

}
