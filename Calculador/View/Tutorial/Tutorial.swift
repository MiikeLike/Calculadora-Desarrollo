//
//  Tutorial.swift
//  Calculador
//
//  Created by Mikel Valle on 9/1/23.
//

import UIKit
import Lottie

class Tutorial: UIViewController {
    
//MARK: Outlets
    @IBOutlet weak var viewBlue: LottieAnimationView!
    @IBOutlet weak var viewOrange: LottieAnimationView!
    @IBOutlet weak var labelMayor: UILabel!
    @IBOutlet weak var labelMayorT: UILabel!
    @IBOutlet weak var FlechaM: LottieAnimationView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FlechaM.play()
        FlechaM.loopMode = .autoReverse
        viewBlue.play()
        viewOrange.loopMode = .autoReverse
        viewOrange.play()
        viewOrange.backgroundColor = .clear
        viewBlue.backgroundColor = .clear
        FlechaM.backgroundColor = .clear
        
    
        labelMayorT.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        labelMayorT.alpha = 0.0
        labelMayorT.center = view.center
        labelMayor.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        labelMayor.alpha = 0.0
        labelMayor.center = view.center
        viewBlue.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        viewBlue.alpha = 0.0
        viewBlue.center = view.center
       /* numberAnimation.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        numberAnimation.alpha = 0.0
        numberAnimation.center = view.center */
        viewOrange.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        viewOrange.alpha = 0.0
        viewOrange.center = view.center
        
        
        
        
//MARK: Animation
        
        UIView.animate(withDuration: 5 ) {
            self.FlechaM.alpha = 1.0
        }
        UIView.animate (withDuration: 4) {
            self.viewOrange.alpha = 1.0
        }
        UIView.animate(withDuration: 3) {
            self.labelMayor.alpha = 1.0
        }
       /* UIView.animate (withDuration: 2) {
            self.numberAnimation.alpha = 1.0
        }*/
        UIView.animate(withDuration: 1) {
            self.viewBlue.alpha = 1.0
        }
        UIView.animate(withDuration: 0.5) {
            self.labelMayorT.alpha = 1.0
        }
        
        
        
   }
}
