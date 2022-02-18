//
//  ViewController.swift
//  Tipster
//
//  Created by Najla on 19/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    //labels
    @IBOutlet weak var TotalLabel: UILabel!
    @IBOutlet weak var FirstTipLabel: UILabel!
    @IBOutlet weak var ScondTipLabel: UILabel!
    @IBOutlet weak var ThirdTipLabel: UILabel!
    @IBOutlet weak var FTipLabel: UILabel!
    @IBOutlet weak var STipLabel: UILabel!
    @IBOutlet weak var ThTipLabel: UILabel!
    @IBOutlet weak var FTipTotalLabel: UILabel!
    @IBOutlet weak var STipTotalLabel: UILabel!
    @IBOutlet weak var ThTipTotalLabel: UILabel!
    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var GroupSizeLabel: UILabel!
    //sliders
    @IBOutlet weak var TipSlider: UISlider!
    @IBOutlet weak var GroupSizeSlider: UISlider!
    
    //attrbuites
    var Size = 1
    var Percentage = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TotalLabel.text = ""
    }//end viewdidload
    
    func Calculate(){
        if TotalLabel.text?.isEmpty == false {
        let TotalPrice = Double(TotalLabel.text!)!
                    
        let first = (TotalPrice * (Percentage + 0.05)) / Double(Size)
            FTipLabel.text = String(format: "%.2f", first)
            FTipTotalLabel.text = String(format: "%.2f", (TotalPrice + first))
            
        let second = (TotalPrice * (Percentage + 0.15)) / Double(Size)
            STipLabel.text = String(format: "%.2f", second)
            STipTotalLabel.text = String(format: "%.2f", (TotalPrice + second))
            
        let third = (TotalPrice * (Percentage + 0.2)) / Double(Size)
            ThTipLabel.text = String(format: "%.2f", third)
            ThTipTotalLabel.text = String(format: "%.2f", (TotalPrice + third))
                }//end if
    }
    //buttons
    @IBAction func SevenClicked(_ sender: UIButton) {
        TotalLabel.text = TotalLabel.text! + "7"
        Calculate()
    }
    @IBAction func EightClicked(_ sender: UIButton) {
        TotalLabel.text = TotalLabel.text! + "8"
        Calculate()
    }
    @IBAction func NineClicked(_ sender: UIButton) {
        TotalLabel.text = TotalLabel.text! + "9"
        Calculate()
    }
    @IBAction func FourClicked(_ sender: UIButton) {
        TotalLabel.text = TotalLabel.text! + "4"
        Calculate()
    }
    @IBAction func FiveClicked(_ sender: UIButton) {
        TotalLabel.text = TotalLabel.text! + "5"
        Calculate()
    }
    @IBAction func SixClicked(_ sender: UIButton) {
        TotalLabel.text = TotalLabel.text! + "6"
        Calculate()
    }
    @IBAction func OneClicked(_ sender: UIButton) {
        TotalLabel.text = TotalLabel.text! + "1"
        Calculate()
    }
    @IBAction func TwoClicked(_ sender: UIButton) {
        TotalLabel.text = TotalLabel.text! + "2"
        Calculate()
    }
    @IBAction func ThreeClicked(_ sender: UIButton) {
        TotalLabel.text = TotalLabel.text! + "3"
        Calculate()
    }
    @IBAction func ZeroClicked(_ sender: UIButton) {
        TotalLabel.text = TotalLabel.text! + "0"
        Calculate()
    }
    @IBAction func ClearClicked(_ sender: UIButton) {
        TotalLabel.text = ""
        
        FirstTipLabel.text = "0.0"
        ScondTipLabel.text = "0.0"
        ThirdTipLabel.text = "0.0"
        FTipLabel.text = "0.0"
        STipLabel.text = "0.0"
        ThTipLabel.text = "0.0"
        FTipTotalLabel.text = "0.0"
        STipTotalLabel.text = "0.0"
        ThTipTotalLabel.text = "0.0"
    }//end ClearClicked
    
    @IBAction func PointClicked(_ sender: UIButton) {
        if TotalLabel.text?.contains(".") == false{
           TotalLabel.text = TotalLabel.text! + "."
           }
    }
    //sliders
    @IBAction func TipSliderMoved(_ sender: UISlider) {
        print(sender.value)
        FirstTipLabel.text = String(format: "%.2f", (( sender.value + 0.05) * 100)) + "%"
        ScondTipLabel.text = String(format: "%.2f", (( sender.value + 0.15) * 100)) + "%"
        ThirdTipLabel.text = String(format: "%.2f", (( sender.value + 0.2) * 100)) + "%"
        Percentage = Double(sender.value)
        Calculate()
    }
    
    @IBAction func GroupSliderMoved(_ sender: UISlider) {
        GroupSizeLabel.text = "Group Size: \(Size)"
        Size = Int(sender.value)
        Calculate()
    }
}//end class
