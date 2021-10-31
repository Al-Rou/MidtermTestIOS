//
//  ViewController.swift
//  MidtermTest-ShoppingList
//
//  Created by Sorena Sorena on 2021-10-30.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var listName: UITextField!
    
    @IBOutlet weak var textField: NSLayoutConstraint!
    
    @IBOutlet weak var textFieldOne: UITextField!
    
    @IBOutlet weak var textFieldTwo: UITextField!
    
    @IBOutlet weak var textFieldThree: UITextField!
    
    @IBOutlet weak var textFieldFour: UITextField!
    
    @IBOutlet weak var textFieldFive: UITextField!
    
    @IBOutlet weak var saveBtn: UIButton!
    
    @IBOutlet weak var cancelBtn: UIButton!
    
    @IBOutlet weak var sliderOne: UISlider!
    
    @IBOutlet weak var sliderTwo: UISlider!
    
  
    @IBOutlet weak var sliderThree: UISlider!
    
    
    @IBOutlet weak var sliderFour: UISlider!
    
    @IBOutlet weak var sliderFive: UISlider!
    
    @IBOutlet weak var labelOne: UILabel!
    
    @IBOutlet weak var labelTwo: UILabel!
    
    @IBOutlet weak var labelThree: UILabel!
    
    @IBOutlet weak var labelFour: UILabel!
    
    @IBOutlet weak var labelFive: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func saveFunc(_ sender: UIButton) {
        
        let _localStorage=UserDefaults.standard
        
        _localStorage.set((listName.text?.trimmingCharacters(in: .whitespaces).isEmpty)! ? "MyList" : listName.text ,  forKey: "Title")
        _localStorage.set(textFieldOne.text!, forKey: "enteredValueOne")
        _localStorage.set(textFieldTwo.text!, forKey: "enteredValueTwo")
        _localStorage.set(textFieldThree.text!, forKey: "enteredValueThree")
        _localStorage.set(textFieldFour.text!, forKey: "enteredValueFour")
        _localStorage.set(textFieldFive.text!, forKey: "enteredValueFive")
                
        _localStorage.set(Int(sliderOne.value), forKey: "quantOne")
        _localStorage.set(Int(sliderTwo.value), forKey: "quantTwo")
        
        _localStorage.set(Int(sliderThree.value), forKey: "quantThree")
        
        _localStorage.set(Int(sliderFour.value), forKey: "quantFour")
        _localStorage.set(Int(sliderFive.value), forKey: "quantFive")
        let showList=storyboard?.instantiateViewController(withIdentifier: "ShowList") as! ShowListViewController
        showList.modalPresentationStyle = .fullScreen
                present(showList, animated: true)
        
        
    }
    
    @IBAction func sliderOneFunc(_ sender: UISlider) {
        labelOne.text = String(Int(sender.value))
    }
    
    @IBAction func sliderTwo(_ sender: UISlider) {
        labelTwo.text = String(Int(sender.value))
    }
    
    @IBAction func sliderThree(_ sender: UISlider) {
        labelThree.text =
        String(Int(sender.value))
    }
    
    @IBAction func sliderFour(_ sender: UISlider) {
        labelFour.text =
        String(Int(sender.value))
    }
    
    
    @IBAction func sliderFive(_ sender: UISlider) {
        labelFive.text =
        String(Int(sender.value))
    }
    
    @IBAction func cancelFunc(_ sender: UIButton) {
        
        textFieldOne.text = ""
        textFieldTwo.text = ""
        textFieldThree.text = ""
        textFieldFour.text = ""
        textFieldFive.text = ""
        
        
        labelOne.text = "0"
        labelTwo.text = "0"
        labelThree.text = "0"
        labelFour.text = "0"
        labelFive.text = "0"
        
        sliderTwo.value = 0
        sliderOne.value = 0
        sliderThree.value = 0
        sliderFour.value = 0
        sliderFive.value = 0
        
    }
}

