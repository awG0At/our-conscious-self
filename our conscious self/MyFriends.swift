

import UIKit

class MyFriends: UIViewController {
    
    @IBOutlet weak var blood: UITextView!
    
    @IBOutlet weak var heart: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        blood.text = ""
        heart.text = ""
    }
    
    @IBAction func changeLabel(_ sender: UIButton) {
        blood.text = "the blood of the covenant is thicker than the water of the wound"
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {  self.heart.text = "♥️"
        }
    }
    
   

}
