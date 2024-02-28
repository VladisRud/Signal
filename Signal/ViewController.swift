//
//  ViewController.swift
//  Signal
//
//  Created by Влад Руденко on 22.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - UI Elements
    private var overallStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 10
        stack.distribution = .fillProportionally
        stack.alignment = .center
        return stack
    }()
    
    let controlButton: UIButton = {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("START", for: .normal)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 15
//        button.actions(forTarget: #selector(), forControlEvent: .touchUpInside)
//        btn.addTarget(self, action: #selector(rollDice), for: .touchUpInside)
        return button
    }()
    
    private var signalStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 35
        stack.distribution = .fillEqually
        stack.alignment = .center
        return stack
    }()
    
    let redSignal: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        view.alpha = 0.3
        return view
    }()
    
    let yellowSignal: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .yellow
        view.alpha = 0.3
        return view
    }()
    
    let greenSignal: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        view.alpha = 0.3
        return view
    }()
    
    //MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(overallStack)
        
        overallStack.addArrangedSubview(signalStack)
        overallStack.addArrangedSubview(controlButton)
        
        signalStack.addArrangedSubview(redSignal)
        signalStack.addArrangedSubview(yellowSignal)
        signalStack.addArrangedSubview(greenSignal)
        
        doContrains()
    }
    
    
    
    //MARK: - Constrains UI Elements
    func doContrains() {
        NSLayoutConstraint.activate([
            overallStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            overallStack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            overallStack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            overallStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
//            signalStack.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),
            
            redSignal.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            redSignal.heightAnchor.constraint(equalTo: redSignal.widthAnchor),
            yellowSignal.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            yellowSignal.heightAnchor.constraint(equalTo: yellowSignal.widthAnchor),
            greenSignal.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            greenSignal.heightAnchor.constraint(equalTo: greenSignal.widthAnchor),
            
//            controlButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5)
        ])
        
        redSignal.layer.cornerRadius = view.frame.size.width / 2 / 2
        yellowSignal.layer.cornerRadius = view.frame.size.width / 2 / 2
        greenSignal.layer.cornerRadius = view.frame.size.width / 2 / 2
        
    }
    
    

}

