//
//  ViewController.swift
//  Localization
//
//  Created by Esraa Abd-elrazek on 11/5/19.
//  Copyright © 2019 Esraa Abd-elrazek. All rights reserved.
//

import UIKit
import MOLH
class ViewController: UIViewController {
    
    //MARK:- outlets
    @IBOutlet weak var languageButton: UIButton!
    //to flip image
    @IBOutlet weak var loginImage: UIImageView!{
        didSet {
            loginImage.image = loginImage.image?.flipIfNeeded()
        }
    }
    
    //MARK:- lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        languageButton.setTitle(NSLocalizedString("btnLang", comment: ""), for: .normal)
       
    }
    
    //MARK:- functionality
    @IBAction func changeLang(_ sender: Any) {
        //to change response to action use this two line
        MOLH.setLanguageTo(MOLHLanguage.currentAppleLanguage() == "en" ? "ar" : "en")
        MOLH.reset()
    }
    
    @IBAction func tt(_ sender: Any) {
        let story = UIStoryboard(name: "SecondStoreyborad", bundle: nil)
        
        let vc = story.instantiateViewController(withIdentifier: "vc")
        self.present(vc, animated: true, completion: nil)
    }
    @IBAction func login(_ sender: UIButton) {
        let alert = UIAlertController(title: NSLocalizedString("Error", comment: ""), message: NSLocalizedString("msg", comment: ""), preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title:  NSLocalizedString("yes", comment: ""), style: .default, handler: nil))
        alert.addAction(UIAlertAction(title:NSLocalizedString("No", comment: ""), style: .cancel, handler: nil))
        
        self.present(alert, animated: true)
    }
    
    
}

