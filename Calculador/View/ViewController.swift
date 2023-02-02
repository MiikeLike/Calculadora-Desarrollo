//
//  ViewController.swift
//  Calculador
//
//  Created by Mikel Valle on 28/12/22.
//

import UIKit
import Lottie

class ViewController: UIViewController {

 
 //MARK: Animation
    
    @IBOutlet weak var animationView: LottieAnimationView!
    
//MARK: Variables
    var myOptionalM: Double = 0
    var myOptionalMe: Double = 0
    var myOptionalN: Double = 0
  
    
//MARK: Outlets
    @IBOutlet weak var myTextFieldM: UITextField!
    @IBOutlet weak var myTextFieldMe: UITextField!
    @IBOutlet weak var myTextFieldN: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    
//MARK: Button
    @IBAction func Calcular(_ sender: Any) {
        

        guard let mayor = Double(myTextFieldM.text ?? "0") else {
            print("Introducir diámetro mayor")
            return
        }
        print("El valor mayor es \(mayor)")
        
        guard let menor = Double(myTextFieldMe.text ?? "0") else {
            print("Introducir diámetro menor")
            return
        }
        print("El valor menor es \(menor)")
        
        guard let number = Double(myTextFieldN.text ?? "0") else {
            print("Introducir número de vueltas")
            return
        }
        print("El numero de vueltas es \(number)")
        
        
        let result1 = mayor + menor
        let result2 = result1 / 2
        let result3 = result2 * 3.1416
        let result4 = result3 * number
        
        
        resultLabel.text = "El desarroyo total es de \(result4)mm"
  }

    override func viewDidLoad() {
        super.viewDidLoad()
   
//MARK: TapGesture
        configureTextFields()
        configureTapGesture()
        
        
//MARK: AnimationView

        animationView.play()
        animationView.backgroundColor = .clear
        animationView.loopMode = .loop

        
        //Función del teclado
        myTextFieldM.keyboardType = .numberPad
        myTextFieldN.keyboardType = .numberPad
        myTextFieldMe.keyboardType = .numberPad

    }
    
//MARK: Control de gestos
    private func configureTapGesture(){
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.handleTap))
            view.addGestureRecognizer(tapGesture)
    }
    @objc func handleTap(){
        print("Toque en la pantalla")
        view.endEditing(true)
    }
    
    private func configureTextFields(){
        myTextFieldM.delegate = self
        myTextFieldN.delegate = self
        myTextFieldMe.delegate = self
    }

}
//MARK: -UITextFieldDelegate
extension ViewController: UITextFieldDelegate {
   
   func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       textField.resignFirstResponder()
       return true
   }
}


