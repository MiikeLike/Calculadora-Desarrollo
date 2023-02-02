//
//  Tutorial2.swift
//  Calculador
//
//  Created by Mikel Valle on 15/1/23.
//

import UIKit
import Lottie



class Tutorial2: UIViewController {
    
//MARK: Outlets
    
    @IBOutlet weak var azul: LottieAnimationView!
    @IBOutlet weak var numberView: LottieAnimationView!
    @IBOutlet weak var black: LottieAnimationView!
    @IBOutlet weak var labelNumber: UILabel!
    @IBOutlet weak var buttonEnd: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        azul.play()
        black.play()
        numberView.play()
        numberView.backgroundColor = .clear
        black.backgroundColor = .clear
        azul.backgroundColor = .clear
        azul.loopMode = .loop
        numberView.loopMode = .autoReverse
        
        
        labelNumber.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        labelNumber.alpha = 0.0
        labelNumber.center = view.center
        black.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        black.alpha = 0.0
        black.center = view.center
        buttonEnd.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        buttonEnd.alpha = 0.0
        buttonEnd.center = view.center
        
        
        
    //MARK: Animation
        UIView.animate (withDuration: 1) {
            self.black.alpha = 1.0
        }
        UIView.animate(withDuration: 1.5) {
            self.labelNumber.alpha = 1.0
        }
        UIView.animate(withDuration: 2) {
            self.buttonEnd.alpha = 2
        }
        
    }
}
