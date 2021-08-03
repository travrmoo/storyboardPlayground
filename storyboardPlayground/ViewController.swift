//
//  ViewController.swift
//  storyboardPlayground
//
//  Created by Travis Moody on 7/29/21.
//

import UIKit

//found this code @: https://stackoverflow.com/questions/28854469/change-uibutton-bordercolor-in-storyboard
//am attempting to format the buttons to a more pleasing aesthetic with rounded corners/colored borders etc...
@IBDesignable extension UIButton {

    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}

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
    
    @IBOutlet var mainView: UIView!
    @IBOutlet weak var middleStack: UIStackView!
    @IBOutlet weak var bottomStack: UIStackView!
    @IBOutlet weak var topStack: UIStackView!
    @IBOutlet weak var mainStackView: UIStackView!
    @IBOutlet weak var leftConstraint: NSLayoutConstraint!
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet weak var rightConstraint: NSLayoutConstraint!
    @IBOutlet weak var uiImageView: UIImageView!
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    
    @IBAction func redTap(_ sender: Any) {
        self.view.backgroundColor = UIColor.systemRed
        self.topStack.backgroundColor = UIColor.systemRed
        self.middleStack.backgroundColor = UIColor.systemRed
        self.bottomStack.backgroundColor = UIColor.systemRed
        rightConstraint.constant = 61
        leftConstraint.constant = 61
        bottomConstraint.constant = 151
        topConstraint.constant = 111
        uiImageView.image = UIImage(named: "Red_Forman")
    }
    
    @IBAction func greenTap(_ sender: Any) {
        self.view.backgroundColor = UIColor.systemGreen
        self.topStack.backgroundColor = UIColor.systemGreen
        self.middleStack.backgroundColor = UIColor.systemGreen
        self.bottomStack.backgroundColor = UIColor.systemGreen
        rightConstraint.constant = 65
        leftConstraint.constant = 65
        bottomConstraint.constant = 165
        topConstraint.constant = 125
        uiImageView.image = UIImage(named: "kermit")
    }
    
    @IBAction func yellowTap(_ sender: Any) {
        self.view.backgroundColor = UIColor.systemYellow
        self.topStack.backgroundColor = UIColor.systemYellow
        self.middleStack.backgroundColor = UIColor.systemYellow
        self.bottomStack.backgroundColor = UIColor.systemYellow
        rightConstraint.constant = 50
        leftConstraint.constant = 50
        bottomConstraint.constant = 170
        topConstraint.constant = 130
        uiImageView.image = UIImage(named: "minion")
    }
    
    @IBAction func purpleTap(_ sender: Any) {
        self.view.backgroundColor = UIColor.systemPurple
        self.topStack.backgroundColor = UIColor.systemPurple
        self.middleStack.backgroundColor = UIColor.systemPurple
        self.bottomStack.backgroundColor = UIColor.systemPurple
        rightConstraint.constant = 108
        leftConstraint.constant = 108
        bottomConstraint.constant = 121
        topConstraint.constant = 81
        uiImageView.image = UIImage(named: "barney")
    }
    
    @IBAction func orangeTap(_ sender: Any) {
        self.view.backgroundColor = UIColor.systemOrange
        self.topStack.backgroundColor = UIColor.systemOrange
        self.middleStack.backgroundColor = UIColor.systemOrange
        self.bottomStack.backgroundColor = UIColor.systemOrange
        rightConstraint.constant = 64
        leftConstraint.constant = 64
        bottomConstraint.constant = 121
        topConstraint.constant = 81
        uiImageView.image = UIImage(named: "kenny")
    }
    
    @IBAction func randomTap(_ sender: Any) {
        self.view.backgroundColor = .random()
        self.topStack.backgroundColor = self.view.backgroundColor
        self.middleStack.backgroundColor = self.view.backgroundColor
        self.bottomStack.backgroundColor = self.view.backgroundColor
        rightConstraint.constant = 42
        leftConstraint.constant = 42
        bottomConstraint.constant = 165
        topConstraint.constant = 125
        uiImageView.image = UIImage(named: "riddler")
    }
    
    @IBAction func blueTap(_ sender: Any) {
        self.view.backgroundColor = UIColor.blue
        self.topStack.backgroundColor = UIColor.systemBlue
        self.middleStack.backgroundColor = UIColor.systemBlue
        self.bottomStack.backgroundColor = UIColor.systemBlue
        uiImageView.image = UIImage(named: "cookie")
        rightConstraint.constant = 60
        leftConstraint.constant = 60
        bottomConstraint.constant = 161
        topConstraint.constant = 121
        
    }
    
    @IBAction func pinkTap(_ sender: Any) {
        self.view.backgroundColor = UIColor.systemPink
        self.topStack.backgroundColor = UIColor.systemPink
        self.middleStack.backgroundColor = UIColor.systemPink
        self.bottomStack.backgroundColor = UIColor.systemPink
        rightConstraint.constant = 130
        leftConstraint.constant = 130
        bottomConstraint.constant = 155
        topConstraint.constant = 115
        uiImageView.image = UIImage(named: "pink")
    }
    
    @IBAction func blackTap(_ sender: Any) {
        self.view.backgroundColor = UIColor.black
        self.topStack.backgroundColor = UIColor.black
        self.middleStack.backgroundColor = UIColor.black
        self.bottomStack.backgroundColor = UIColor.black
        rightConstraint.constant = 62
        leftConstraint.constant = 62
        bottomConstraint.constant = 152
        topConstraint.constant = 112
        uiImageView.image = UIImage(named: "spaceghost")
    }
}

