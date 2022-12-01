//
//  InfoViewController.swift
//  Navigation_IOSUI
//
//  Created by Mac on 30.11.2022.
//

import UIKit

class InfoView: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button2()
        view.backgroundColor = .white
    }
    
    func button2(){
        var button = UIButton()
        button = UIButton(type: .roundedRect)
        let fr = CGRect(x: 126, y: 680, width: 150, height: 50)
        button.frame = fr
        button.setTitle("Нажми", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 14
        button.addTarget(self, action: #selector(addtarget), for: .touchDown)
        self.view.addSubview(button)
    }
    
    @objc func addtarget(){
        let alert = UIAlertController(title: "Внимание", message: "Вы точно этого хотите?", preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "Да", style: .default, handler: { _ in
            print("Отлично!")})
        alert.addAction(ok)
        let no = UIAlertAction(title: "Нет", style: .destructive, handler: nil)
        alert.addAction(no)
        present(alert, animated: true, completion: nil)
    }
}
