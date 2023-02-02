//
//  Tutorial1.swift
//  Calculador
//
//  Created by Mikel Valle on 15/1/23.
//

import UIKit
import Lottie

class Tutorial1: UIViewController {
    
    //MARK: Outlets

    @IBOutlet weak var naranja: LottieAnimationView!
    @IBOutlet weak var flechaN: LottieAnimationView!
    @IBOutlet weak var azul: LottieAnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        naranja.play()
        naranja.backgroundColor = .clear
        flechaN.play()
        flechaN.backgroundColor = .clear
        flechaN.loopMode = .autoReverse
        azul.play()
        azul.backgroundColor = .clear
        azul.loopMode = .autoReverse
       /*
        
    //Animation
        
        
        labelMenor.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        labelMenor.alpha = 0.0
        labelMenor.center = view.center
        blue.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        blue.alpha = 0.0
        blue.center = view.center
        button.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        button.alpha = 0.0
        button.center = view.center
        flechaN.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        flechaN.alpha = 0.0
        flechaN.center = view.center
        naranja.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        naranja.alpha = 0.0
        naranja.center = view.center
        labelMenorT.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        labelMenorT.alpha = 0.0
        labelMenorT.center = view.center
        
        
        //MARK: Animation
                
                UIView.animate(withDuration: 5 ) {
                    self.flechaN.alpha = 1.0
                }
                UIView.animate (withDuration: 4) {
                    self.naranja.alpha = 1.0
                }
                UIView.animate(withDuration: 3) {
                    self.labelMenor.alpha = 1.0
                }
                UIView.animate (withDuration: 2) {
                    self.labelMenorT.alpha = 1.0
                }
                UIView.animate(withDuration: 1) {
                    self.blue.alpha = 1.0
                }
                UIView.animate(withDuration: 0.5) {
                    self.button.alpha = 1.0
                }*/
    }
}
