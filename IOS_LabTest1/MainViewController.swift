//
//  MainViewController.swift
//  IOS_LabTest1
//
//  Created by Fatih on 2021-02-09.
//

import UIKit
import GameKit


class MainViewController: UIViewController {
    
    var numbers = [Int](1...65)
    
    var randomArray = [Int]()
    

    @IBOutlet weak var fristNumber: UILabel!
    @IBOutlet weak var secondNumber: UILabel!
    @IBOutlet weak var thirdNumber: UILabel!
    @IBOutlet weak var fouthNumber: UILabel!
    @IBOutlet weak var fifthNuber: UILabel!
    @IBOutlet weak var sixtNumber: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Lab Test 1"

    }
    

    @IBAction func drawBtn(_ sender: UIButton) {
        createNumbers()
    }
    
    func createNumbers(){
        randomArray = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: numbers) as! [Int]
        fristNumber.text = String(randomArray[0])
    }
    

}
