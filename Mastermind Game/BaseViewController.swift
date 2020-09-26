//  BaseViewController.swift
//  Mastermind Game
//
//  Created by Viktor Varsano on 23.09.20.
//  Copyright © 2020 Viktor Varsano. All rights reserved.
//
import UIKit
import Foundation

class BaseViewController: UIViewController, UITextFieldDelegate {
    
    struct Test {
            static var var1 = "T1"
            static var var2 = "T2"
            static var var3 = "T3"
            static var var4 = "T4"
            static var var5 = "T5"
            static var var6 = "T6"
            static var var7 = "T7"
            static var var8 = "T8"
    }

    var backgroundImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        
        var preferredStatusBarStyle: UIStatusBarStyle {
              return .lightContent
          }
          
          func setBackground() {
              backgroundImageView.image = UIImage(named: "base-background") //setting the background from saved files
              backgroundImageView.contentMode = .scaleAspectFill // filling the whole screen on all devices
              view.addSubview(backgroundImageView)
              view.sendSubviewToBack(backgroundImageView) // sending the background image view to the back

              backgroundImageView.translatesAutoresizingMaskIntoConstraints                        = false
              backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive           = true
              backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive   = true
              backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive     = true
              backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true // setting anchors to edges in order to be viewed correctly on all devices
          }
            setBackground() //calling the function
    
        func printRandomString() {
                let length = 4
                let characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                let randomCharacters = (0..<length).map{_ in characters.randomElement()!} //force unwrap 4 random elements via map functionality
                let randomString = String(randomCharacters) //set the correct format
                print(randomString)
                
                let arrStr = Array(randomString) //transform the below-printed into an array form for later manipulation
                
                let firstString = randomString.first! //choose first element of newly-created array
                Test.var1 = String(firstString) //assign firstCharacter in the correct format to first variable in above-most struct named Test
                print(Test.var1) //firstCharacter is printed in console
                
                Test.var2 = String((arrStr[1..<2]))
                print(Test.var2) // secondCharacter is printed in console
                
                Test.var3 = String((arrStr[2..<3]))
                print(Test.var3) // thirdCharacter is printed in console
                
                let lastString = randomString.last!
                Test.var4 = String(lastString)
                print(Test.var4) //lastCharacter is printed in console
       }
            printRandomString()
        
    }
            @IBOutlet weak var textFieldName1: UITextField!
            @IBOutlet weak var textFieldName2: UITextField!
            @IBOutlet weak var textFieldName3: UITextField!
            @IBOutlet weak var textFieldName4: UITextField! // create IBOutlets for UITextFields - `purple boxes`
    

        @IBAction func firstButtonTapped(_ sender: UITextField) {
            
            Test.var5 = textFieldName1!.text! //get input from TextField1 and assign in to var5 from struct named Test
            print(Test.var5) //First entry box is printed in the console
    }
        @IBAction func secondButtonTapped(_ sender: UITextField) {
            
            Test.var6 = textFieldName2!.text! //gettin input from TextField2
            print(Test.var6)
    }
        @IBAction func thirdButtonTapped(_ sender: UITextField) {
            
            Test.var7 = textFieldName3!.text! //gettin input from TextField3
            print(Test.var7)
    }
        @IBAction func fourthButtonTapped(_ sender: UITextField) {
            
            Test.var8 = textFieldName4!.text! //gettin input from TextField4
            print(Test.var8)
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        let boolVar = true
        return boolVar
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
 
          func setOpacity() {
            
          let newBackgroundColor = UIColor.init(white: 0.1, alpha: 0.5)
          textField.backgroundColor? = newBackgroundColor
          }
        
          setOpacity()
    }

    @IBAction func checkButtonTapped(_ sender: UIButton) {
        
        func changeColor() {
            
            let greenColor = UIColor.green
            let yellowColor = UIColor.yellow
            let redColor = UIColor.red
            
            
//            switch value {
//            case Test.var1 == Test.var5 || Test.var2 == Test.var6 || Test.var3 == Test.var7 || Test.var4 == Test.var8 :
//                let finalColor = UIColor.green
//                textFieldName1.backgroundColor = finalColor
//
//            case Test.var1 == Test.var6 || Test.var1 == Test.var7 || Test.var1 == Test.var8 :
//                let finalColor = UIColor.yellow
//                textFieldName1.backgroundColor = finalColor
//
//            case Test.var1 != Test.var6, Test.var7, Test.var8 &&
//                Test.var2 != Test.var7, Test.var8, Test.var5 &&
//                Test.var3 != Test.var8, Test.var5, Test.var6 :
//                let finalColor = UIColor.red
//                textFieldName1.backgroundColor = finalColor
//            default: print("error")
//            }
            
            
            //First Box setup
            if Test.var1 == Test.var5 {
                let finalColor = greenColor
                textFieldName1.backgroundColor = finalColor
                }
                
            else if Test.var5 == Test.var2 || Test.var5 == Test.var3 || Test.var5 == Test.var4 {
                let finalColor = yellowColor
                textFieldName1.backgroundColor = finalColor
                }
                
            else if Test.var5 != Test.var2 || Test.var5 != Test.var3 || Test.var5 != Test.var4 {
                let finalColor = redColor
                textFieldName1.backgroundColor = finalColor
                }
            
            
            //Second Box setup
            if Test.var2 == Test.var6 {
                let finalColor = greenColor
                textFieldName2.backgroundColor = finalColor
                }
                
            else if Test.var6 == Test.var3 || Test.var6 == Test.var4 || Test.var6 == Test.var1 {
                let finalColor = yellowColor
                textFieldName2.backgroundColor = finalColor
                }
                
            else if Test.var6 != Test.var3 || Test.var6 != Test.var4 || Test.var6 != Test.var1 {
                let finalColor = redColor
                textFieldName2.backgroundColor = finalColor
                }
            
            //Third Box setup
            if Test.var3 == Test.var7 {
                let finalColor = greenColor
                textFieldName3.backgroundColor = finalColor
                }
            
            else if Test.var7 == Test.var4 || Test.var7 == Test.var1 || Test.var7 == Test.var2 {
                let finalColor = yellowColor
                textFieldName3.backgroundColor = finalColor
                }
                      
            else if Test.var7 != Test.var4 || Test.var7 != Test.var1 || Test.var7 != Test.var2 {
                let finalColor = redColor
                textFieldName3.backgroundColor = finalColor
                }
            
            //Fourth Box setup
            if Test.var4 == Test.var8 {
                let finalColor = greenColor
                textFieldName4.backgroundColor = finalColor
                }
            
            else if Test.var8 == Test.var1 || Test.var8 == Test.var2 || Test.var8 == Test.var3 {
                let finalColor = yellowColor
                textFieldName4.backgroundColor = finalColor
                }
                      
            else if Test.var8 != Test.var1 || Test.var8 != Test.var2 || Test.var8 != Test.var3 {
                let finalColor = redColor
                textFieldName4.backgroundColor = finalColor
                }

        }
        
        changeColor()
        
    }

//        if var1 == firstString // GREEN
//        { else if } textFieldName1!.text! == secondString || textFieldName1!.text! == thirdString ||
//                    textFieldName1!.text! == lastString //YELLOW
//        { else } //RED
  

//        enum Color : Int {
//            case green  //0
//            case yellow //1
//            case red    //2
//        }
//        let green  = Color(rawValue: 0)
//        let yellow = Color(rawValue: 1)
//        let red    = Color(rawValue: 2)

}
