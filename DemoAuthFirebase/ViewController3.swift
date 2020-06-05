//
//  ViewController3.swift
//  DemoAuthFirebase
//
//  Created by Dương chãng on 6/4/20.
//  Copyright © 2020 macshop. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    let Viewcreate:  UIView = {
        let View = UIView()
        View.translatesAutoresizingMaskIntoConstraints = false
        //View.backgroundColor = .red
       return View
    }()
    
    let imageview = UIImageView(image: UIImage(named: "Image-2"))
    let imgeview = UIImageView(image: UIImage(named: "Image-1"))
    
    let lbl : UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Congratulations on your successful login"
        lbl.textAlignment = .center
        lbl.textColor = #colorLiteral(red: 0.03944736347, green: 0.932851851, blue: 0.7194019556, alpha: 1)
        return lbl
    }()
    
    let Button : UIButton = {
        let buton = UIButton()
        buton.translatesAutoresizingMaskIntoConstraints = false
        buton.setImage(UIImage(named: "back"), for: .normal)
        buton.imageEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
//        buton.setTitle("Back Login", for: UIControl.State.normal)
//        //buton.titleLabel?.text = "Create Account"
//        buton.titleLabel?.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        
        buton.layer.cornerRadius = 20
        buton.backgroundColor = #colorLiteral(red: 0.007845935412, green: 0.9963570237, blue: 0.8464693427, alpha: 1)
        
        buton.layer.shadowColor = #colorLiteral(red: 0.07872299105, green: 0.7963856459, blue: 0.5258111358, alpha: 1)
        buton.layer.shadowRadius = 10
        buton.layer.shadowOpacity = 0.8
        //buton.layer.shadowOffset = CGSize(width: 0, height: 10)
        
        return buton
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let imge = UIImageView(frame: UIScreen.main.bounds)
        imge.image = UIImage(named: "332ab7c66f7a2962270125eb05f51e6e")
        view.insertSubview(imge, at: 0)
        
        Button.addTarget(self, action: #selector(Mainviewcontroller), for: .touchUpInside)
        setuplayout()
       
    }
    func setuplayout(){
        view.addSubview(Viewcreate)
        Viewcreate.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        Viewcreate.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        Viewcreate.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        Viewcreate.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -500).isActive = true
        
        Viewcreate.addSubview(imageview)
        //imageview.backgroundColor = .black
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.topAnchor.constraint(equalTo: Viewcreate.topAnchor, constant: 0).isActive = true
        imageview.leadingAnchor.constraint(equalTo: Viewcreate.leadingAnchor, constant: 50).isActive = true
        imageview.trailingAnchor.constraint(equalTo: Viewcreate.trailingAnchor, constant: -50).isActive = true
        imageview.heightAnchor.constraint(equalToConstant: 220).isActive = true
        Viewcreate.addSubview(imgeview)
        //imgeview.backgroundColor = .black
        imgeview.translatesAutoresizingMaskIntoConstraints = false
        imgeview.topAnchor.constraint(equalTo: imageview.bottomAnchor, constant: 25).isActive = true
        imgeview.leadingAnchor.constraint(equalTo: Viewcreate.leadingAnchor, constant: 100).isActive = true
        imgeview.trailingAnchor.constraint(equalTo: Viewcreate.trailingAnchor, constant: -100).isActive = true
        imgeview.bottomAnchor.constraint(equalTo: Viewcreate.bottomAnchor, constant: 0).isActive = true
        
        view.addSubview(lbl)
        lbl.topAnchor.constraint(equalTo: Viewcreate.bottomAnchor, constant: 30).isActive = true
        lbl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        lbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        lbl.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        view.addSubview(Button)
        Button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        Button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        Button.widthAnchor.constraint(equalToConstant: 50).isActive = true
        Button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        
        
    }
    @objc func Mainviewcontroller(){
        dismiss(animated: true, completion: nil)
    }
    
}
