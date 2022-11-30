//
//  ProfileViewController.swift
//  Navigation_IOSUI
//
//  Created by Mac on 30.11.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        loadNib()
        // Do any additional setup after loading the view.
    }

    func loadNib(){
        if let xibView = Bundle.main.loadNibNamed("ProfileView", owner: nil, options: nil)?.first as? ProfileView{
            xibView.frame = CGRect (x:0, y:50, width: UIScreen.main.bounds.width, height: 300)
            view.addSubview(xibView)
        }
    }
}
