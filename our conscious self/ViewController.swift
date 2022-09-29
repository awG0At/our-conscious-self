


import UIKit

public var state:String = "ST0"


class ViewController: UIViewController {
    @IBOutlet weak var myPic: UIImageView!
    
    @IBOutlet weak var briggsMeyers: UILabel!
    
    @IBOutlet weak var tendency: UILabel!
    
    @IBOutlet weak var uiSwitch: UISwitch!
    
    @IBOutlet weak var uiSlider: UISlider!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        uiSwitch.isOn = false
        tendency.text = ""
        briggsMeyers.text = ""
        self.view.backgroundColor = UIColor.lightGray
    }
    @IBOutlet weak var text: UITextView!
    
    
    @IBAction func changeScreen(_ sender: UIButton) {
        if state == "ST0"{
            state = "ST2"
        }
        if state == "ST1"{
          myPic.image = UIImage(named: "tbh")
            self.view.backgroundColor = UIColor.lightGray
            label.text = "A  W"
            briggsMeyers.text = ""
            state = "ST2"
            briggsMeyers.text = ""
            print(state)
        }else if state == "ST2"{
            myPic.image = UIImage(named: "tbh2")
              self.view.backgroundColor = UIColor.green
              label.text = "I like bones"
            print(state)
              state = "ST3"
            print(state)
        }else if state == "ST3"{
            myPic.image = UIImage(named: "tbh")
            briggsMeyers.text = "INTP-T"
            label.text = "I have a dog"
            self.view.backgroundColor = UIColor.lightGray
            state = "ST4"
            print(state)
        }else if state == "ST4"{
            label.text = "I have brown hair"
            state = "ST5"
            print(state)
        }else if state == "ST5"{
            label.text = "FACT #4"
            state = "ST1"
            print(state)
        }
    }
    
    @IBAction func didChangeSegment(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            text.text = "I value enjoying myself."
        }else if sender.selectedSegmentIndex == 1{
            text.text = "I value giving purpose to others."
        }else if sender.selectedSegmentIndex == 2{
            text.text = "I value fun."
        }else if sender.selectedSegmentIndex == 3{
            text.text = "I value the friends I have made."
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let currentValue = Int(sender.value)
            print("Slider changing to \(currentValue) ?")
        if currentValue == 0{
            label.textColor = UIColor.black
        }else if currentValue == 1{
            label.textColor = UIColor.orange
        }
    }
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        if uiSwitch.isOn{
            tendency.text = "tendency = 'Upholder'"
        }else{
            tendency.text = ""
        }
    }
    
}


