//
//  MyDog.swift
//  our conscious self
//
//  Created by Williams, Alexander - Student on 9/28/22.
//

import UIKit

class MyDog: UIViewController {

    @IBOutlet weak var dogNmae: UILabel!
    
    @IBOutlet weak var heart: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dogNmae.text = ""
        heart.text = ""
    }
    
    @IBAction func showDogName(_ sender: UIButton) {
        dogNmae.text = "her name is penny"
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.2) {  self.heart.text = "♥️"
        }
    }
    


}
