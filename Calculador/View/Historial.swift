//
//  Historial1.swift
//  Calculador
//
//  Created by Mikel Valle on 9/1/23.
//

import UIKit
import Lottie




class Historial: UIViewController {
    
    @IBOutlet weak var historialAnimation: LottieAnimationView!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        historialAnimation.play()
        historialAnimation.loopMode = .autoReverse
        historialAnimation.backgroundColor = .clear
       
    }

}
