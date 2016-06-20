//
//  ViewController.swift
//  Loop-TestUser
//

import UIKit
import LoopSDK

class ViewController: UIViewController {

    @IBOutlet weak var testScoreView: UIView!
    @IBOutlet weak var currentUserLabel: UILabel!
    @IBOutlet weak var getButton: UIButton!
    @IBOutlet weak var testScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       
        self.testScoreView.hidden = true;
        self.currentUserLabel.hidden = true;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onGetClick(sender: AnyObject) {
        self.currentUserLabel.hidden = false;
        self.currentUserLabel.text = "Current User Id:\n" + LoopSDK.syncManager.getUserID()!;
        LoopSDK.syncManager.getTestSignal() {
            err, result, body in
            
            if(err != nil) {
                print("Error getting test profile \(err)");
                return;
            }

            self.testScoreView.hidden = false;
            
            if(result!.statusCode != 200) {
                self.testScoreLabel.text = "0"
            }
            else {

            
                if let profile = body as? [[String: AnyObject]] {
                    if let score = profile[0]["score"] as? Int {
                        self.testScoreLabel.text = "\(score)"
                    }
                }
            }
        }
    }

}

