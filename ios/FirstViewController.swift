//
//  FirstViewController.swift
//  JsonParsingSwift4
//
//  Created by Kashee Kushwaha on 08/02/21.
//  Copyright © 2021 Pro Retina. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

   lazy var nextButton: UIButton = {
         let button = UIButton()
         button.setTitle("Next", for: .normal)
         button.translatesAutoresizingMaskIntoConstraints = false
         button.addTarget(self, action: #selector(moveToNextScreen), for: .touchUpInside)
         button.backgroundColor = .red
         return button
     }()

     override func viewDidLoad() {
         super.viewDidLoad()
         view.backgroundColor = .white
         self.title = "First"
         
         view.addSubview(nextButton)
        nextButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 300).isActive = true
         nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
         nextButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
         nextButton.widthAnchor.constraint(equalToConstant: 140).isActive = true
         
        
     }
     
    
     @objc func moveToNextScreen() {
      let mockData:NSDictionary = ["userId":"B139DF2B-E4A1-4D30-A838-FEA195167092"]
      if let appDelegate: AppDelegate = UIApplication.shared.delegate as? AppDelegate{
        appDelegate.navigateToRN("PROFILE", mockData, nil)
      }
//         let secondVC = SecondViewController()
//         navigationController?.pushViewController(secondVC, animated: true)
     }
    

}
