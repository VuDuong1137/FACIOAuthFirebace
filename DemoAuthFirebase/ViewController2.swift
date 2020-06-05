//
//  ViewController2.swift
//  DemoAuthFirebase
//
//  Created by Dương chãng on 6/4/20.
//  Copyright © 2020 macshop. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController2: UIViewController {
    
    let viewbig:  UIView = {
        let View = UIView()
        View.translatesAutoresizingMaskIntoConstraints = false
        return View
    }()
    let imageview1 = UIImageView(image: UIImage(named: "Image-3"))
    
    let textField :  UITextField = {
        let text = UITextField()
//        text.textColor = .red
//        text.backgroundColor = #colorLiteral(red: 0.9396359324, green: 0.8483463526, blue: 0.7472986579, alpha: 1)
        text.translatesAutoresizingMaskIntoConstraints = false
        text.placeholder = "✉️ Endter Gmail"
        text.textAlignment = .center
        text.alpha = 0.6
        text.layer.cornerRadius = 20
        text.layer.borderColor = UIColor.orange.cgColor
        text.layer.borderWidth = 2
        return text
        
    }()
    let textField2 :  UITextField = {
        let text = UITextField()
        
        text.translatesAutoresizingMaskIntoConstraints = false
        
        text.placeholder = "🔒 PassWord"
        text.alpha = 0.6
        text.isSecureTextEntry = true
        text.textAlignment = .center
        //text.backgroundColor = .lightGray
        text.layer.cornerRadius = 20
        text.layer.borderColor = UIColor.orange.cgColor
        text.layer.borderWidth = 2
        return text
        
    }()
    let lbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Forgot password?"
        lbl.textAlignment = .center
        lbl.font = UIFont.systemFont(ofSize: 12)
        lbl.textColor = .white
        
        //lbl.backgroundColor = .black
        return lbl
    }()
    
    let Button1 : UIButton = {
        let buton = UIButton()
        buton.translatesAutoresizingMaskIntoConstraints = false
        buton.setTitle("Create Account", for: UIControl.State.normal)
        //buton.titleLabel?.text = "Create Account"
        buton.titleLabel?.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        
        buton.layer.cornerRadius = 20
        buton.backgroundColor = #colorLiteral(red: 0.007845935412, green: 0.9963570237, blue: 0.8464693427, alpha: 1)
        
        buton.layer.shadowColor = #colorLiteral(red: 0.07872299105, green: 0.7963856459, blue: 0.5258111358, alpha: 1)
        buton.layer.shadowRadius = 10
        buton.layer.shadowOpacity = 0.8
        buton.layer.shadowOffset = CGSize(width: 0, height: 10)
        
        return buton
        
    }()
    
    let lbl1: UILabel = {
        let lbl = UILabel()
        
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Don't have an account?"
        lbl.textAlignment = .center
        lbl.font = UIFont.systemFont(ofSize: 15)
        lbl.textColor = .white
        //lbl.backgroundColor = .red
        return lbl
    }()
    let Button2 : UIButton = {
        let buton = UIButton()
        buton.translatesAutoresizingMaskIntoConstraints = false
        buton.setTitle("Login Here.", for: UIControl.State.normal)
        buton.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .thin)
        buton.setTitleColor(#colorLiteral(red: 0.007845935412, green: 0.9963570237, blue: 0.8464693427, alpha: 1), for: UIControl.State.normal)
        buton.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        //buton.backgroundColor = .red
        
        return buton
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        let imgeview = UIImageView(frame: UIScreen.main.bounds)
        imgeview.image = UIImage(named: "76904c003101a6a83b8f52a3f213a344")
        view.insertSubview(imgeview, at: 0)
        Button2.addTarget(self, action: #selector(NextViewcontroller), for: .touchUpInside)
        Button1.addTarget(self, action: #selector(CreateSinup), for: .touchUpInside)
        
        
        setuplayout()
    }
    func setuplayout() {
            view.addSubview(viewbig)
            viewbig.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
            viewbig.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
            viewbig.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
            viewbig.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -350).isActive = true
            
            viewbig.addSubview(imageview1)
            //imageview1.backgroundColor = .black
            imageview1.translatesAutoresizingMaskIntoConstraints = false
            imageview1.topAnchor.constraint(equalTo: viewbig.topAnchor, constant: 30).isActive = true
            imageview1.heightAnchor.constraint(equalToConstant: 60).isActive = true
            //imageview1.widthAnchor.constraint(equalToConstant: 80).isActive = true
            imageview1.leadingAnchor.constraint(equalTo: viewbig.leadingAnchor, constant: 64).isActive = true
            imageview1.trailingAnchor.constraint(equalTo: viewbig.trailingAnchor, constant: -64).isActive = true
            
            viewbig.addSubview(textField)
            textField.topAnchor.constraint(equalTo: imageview1.bottomAnchor, constant: 10).isActive = true
            textField.leadingAnchor.constraint(equalTo: viewbig.leadingAnchor, constant: 10).isActive = true
            textField.trailingAnchor.constraint(equalTo: viewbig.trailingAnchor, constant: -10).isActive = true
            textField.heightAnchor.constraint(equalToConstant: 60).isActive = true
            
            viewbig.addSubview(textField2)
            textField2.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 10).isActive = true
            textField2.leadingAnchor.constraint(equalTo: viewbig.leadingAnchor, constant: 10).isActive = true
            textField2.trailingAnchor.constraint(equalTo: viewbig.trailingAnchor, constant: -10).isActive = true
            textField2.heightAnchor.constraint(equalToConstant: 60).isActive = true
            
            viewbig.addSubview(lbl)
            lbl.topAnchor.constraint(equalTo: textField2.bottomAnchor, constant: 50).isActive = true
            lbl.trailingAnchor.constraint(equalTo: viewbig.trailingAnchor, constant: -10).isActive = true
            lbl.widthAnchor.constraint(equalToConstant: 120).isActive = true
            lbl.heightAnchor.constraint(equalToConstant: 30).isActive = true
            
            viewbig.addSubview(Button1)
            Button1.topAnchor.constraint(equalTo: lbl.bottomAnchor, constant: 10).isActive = true
            Button1.leadingAnchor.constraint(equalTo: viewbig.leadingAnchor, constant: 10).isActive = true
            Button1.trailingAnchor.constraint(equalTo: viewbig.trailingAnchor, constant: -10).isActive = true
            Button1.heightAnchor.constraint(equalToConstant: 60).isActive = true
            
            view.addSubview(lbl1)
            lbl1.textAlignment = .right
            lbl1.topAnchor.constraint(equalTo: viewbig.bottomAnchor, constant: 20).isActive = true
            lbl1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
            lbl1.widthAnchor.constraint(equalToConstant: 210).isActive = true
            lbl1.heightAnchor.constraint(equalToConstant: 40).isActive = true
            
            view.addSubview(Button2)
        Button2.topAnchor.constraint(equalTo: viewbig.bottomAnchor, constant: 20).isActive = true
          Button2.leadingAnchor.constraint(equalTo: lbl1.trailingAnchor, constant: 5).isActive = true
    //        Button2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
            Button2.heightAnchor.constraint(equalToConstant: 40).isActive = true
        }
    @objc func NextViewcontroller(){
        dismiss(animated: true, completion: nil)
//        let mainvc = ViewController()
//        mainvc.modalPresentationStyle = .fullScreen
//        present(mainvc, animated: true,completion: nil )
    }
    fileprivate func ViewControllll4() {
        let Mvc = ViewController4()
        Mvc.modalPresentationStyle = .fullScreen
        present(Mvc, animated: true, completion: nil)
    }
    
    @objc func CreateSinup(){
        if textField.text?.isEmpty == true {
            print("No Text in Email TextFiels")
        }
        if textField2.text?.isEmpty == true{
            print("No Text in Password Textfield")
        }
        Auth.auth().createUser(withEmail: textField.text!, password: textField2.text!) { (authur, error) in
            guard let user = authur?.user , error == nil else {
                print("error \(error?.localizedDescription)")
                return
            }
            self.ViewControllll4()
        }
        
        
    }
    
    
}
