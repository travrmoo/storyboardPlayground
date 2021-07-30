//
//  ViewController.swift
//  storyboardPlayground
//
//  Created by Travis Moody on 7/29/21.
//

import UIKit

//extension to create random CGFloat
extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

//extension to return a random color
extension UIColor {
    static func random() -> UIColor {
        return UIColor(
           red:   .random(),
           green: .random(),
           blue:  .random(),
           alpha: 1.0
        )
    }
}

class ViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var leftConstraint: NSLayoutConstraint!
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet weak var rightConstraint: NSLayoutConstraint!
    @IBOutlet weak var uiImageView: UIImageView!
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    
    @IBAction func redTap(_ sender: Any) {
        self.view.backgroundColor = UIColor.red
        rightConstraint.constant = 61
        leftConstraint.constant = 61
        bottomConstraint.constant = 151
        topConstraint.constant = 111
        uiImageView.image = UIImage(named: "Red_Forman")
    }
    
    @IBAction func greenTap(_ sender: Any) {
        self.view.backgroundColor = UIColor.green
        rightConstraint.constant = 65
        leftConstraint.constant = 65
        bottomConstraint.constant = 165
        topConstraint.constant = 125
        uiImageView.image = UIImage(named: "kermit")
    }
    
    @IBAction func yellowTap(_ sender: Any) {
        self.view.backgroundColor = UIColor.yellow
        rightConstraint.constant = 50
        leftConstraint.constant = 50
        bottomConstraint.constant = 170
        topConstraint.constant = 130
        uiImageView.image = UIImage(named: "minion")
    }
    
    @IBAction func purpleTap(_ sender: Any) {
        self.view.backgroundColor = UIColor.purple
        rightConstraint.constant = 108
        leftConstraint.constant = 108
        bottomConstraint.constant = 121
        topConstraint.constant = 81
        uiImageView.image = UIImage(named: "barney")
    }
    
    @IBAction func orangeTap(_ sender: Any) {
        self.view.backgroundColor = UIColor.orange
        rightConstraint.constant = 64
        leftConstraint.constant = 64
        bottomConstraint.constant = 121
        topConstraint.constant = 81
        uiImageView.image = UIImage(named: "kenny")
    }
    
    @IBAction func randomTap(_ sender: Any) {
        self.view.backgroundColor = .random()
        rightConstraint.constant = 42
        leftConstraint.constant = 42
        bottomConstraint.constant = 165
        topConstraint.constant = 125
        uiImageView.image = UIImage(named: "riddler")
    }
    
    @IBAction func blueTap(_ sender: Any) {
        self.view.backgroundColor = UIColor.blue
        rightConstraint.constant = 60
        leftConstraint.constant = 60
        bottomConstraint.constant = 161
        topConstraint.constant = 121
        uiImageView.image = UIImage(named: "cookie")
    }
    
    @IBAction func pinkTap(_ sender: Any) {
        self.view.backgroundColor = UIColor.systemPink
        rightConstraint.constant = 130
        leftConstraint.constant = 130
        bottomConstraint.constant = 155
        topConstraint.constant = 115
        uiImageView.image = UIImage(named: "pink")
    }
    
    @IBAction func blackTap(_ sender: Any) {
        self.view.backgroundColor = UIColor.black
        rightConstraint.constant = 62
        leftConstraint.constant = 62
        bottomConstraint.constant = 152
        topConstraint.constant = 112
        uiImageView.image = UIImage(named: "spaceghost")
    }
}

