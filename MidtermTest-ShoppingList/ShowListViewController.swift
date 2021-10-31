//
//  ShowListViewController.swift
//  MidtermTest-ShoppingList
//
//  Created by Sorena Sorena on 2021-10-30.
//

import UIKit

class ShowListViewController: UIViewController {

    @IBOutlet weak var labelTitle: UILabel!
    
    @IBOutlet weak var labelOne: UILabel!
    
    @IBOutlet weak var labelTwo: UILabel!
    
    @IBOutlet weak var labelThree: UILabel!
    
    @IBOutlet weak var labelFour: UILabel!
    
    @IBOutlet weak var labelFive: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let defaults=UserDefaults.standard
         
                labelTitle.text =  "\(String(defaults.string(forKey: "Title")!))"
                labelOne.text =  "\(String(defaults.string(forKey: "enteredValueOne")!))\("   Number : ")\(String(defaults.integer(forKey: "quantOne")))"
        labelTwo.text =  "\(String(defaults.string(forKey: "enteredValueTwo")!))\("   Number : ")\(String(defaults.integer(forKey: "quantTwo")))"
        
        labelThree.text =  "\(String(defaults.string(forKey: "enteredValueThree")!))\("   Number : ")\(String(defaults.integer(forKey: "quantThree")))"
        labelFour.text =  "\(String(defaults.string(forKey: "enteredValueFour")!))\("   Number : ")\(String(defaults.integer(forKey: "quantFour")))"
        labelFive.text =  "\(String(defaults.string(forKey: "enteredValueFive")!))\("   Number : ")\(String(defaults.integer(forKey: "quantFive")))"
    }
    

    @IBAction func returnBtn(_ sender: UIButton) {
        
        let main=storyboard?.instantiateViewController(withIdentifier: "Main") as! ViewController
        main.modalPresentationStyle = .fullScreen
                present(main, animated: true)
        
        
    }
    
    

}
