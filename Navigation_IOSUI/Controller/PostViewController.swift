//
//  PostViewController.swift
//  Navigation_IOSUI
//
//  Created by Mac on 30.11.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        lable1()
        burbiten()
    }
    
    let post1 = FeedViewController().post.title
    
    func lable1(){
        let myLable = UILabel()
        let labelframe = CGRect(x: 180, y: 10, width: 100, height: 100)
        myLable.frame = labelframe
        myLable.numberOfLines = 3
        myLable.text = post1
        myLable.font = UIFont.boldSystemFont(ofSize: 15)
        view.addSubview(myLable)
    }
    
    func burbiten(){
        let myButton = UIBarButtonItem(image: UIImage(systemName: "folder.circle.fill"), style: .done, target: self, action: #selector(infoView))
        myButton.tintColor = .systemBlue
        navigationItem.rightBarButtonItem = myButton
    }
    
    @objc func infoView() {
        let infoView = InfoView()
        present(infoView, animated: true)
        
    }
}

