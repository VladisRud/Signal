//
//  ViewController.swift
//  Signal
//
//  Created by Влад Руденко on 22.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - UI Elements
    private var signalStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .equalSpacing
        stack.alignment = .center
        return stack
    }()
    
    let redSignal: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        view.layer.cornerRadius = 50
        view.alpha = 0.3
        return view
    }()
    
    let yellowSignal: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .yellow
        view.layer.cornerRadius = 50
        view.alpha = 0.3
        return view
    }()
    
    let greenSignal: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        view.layer.cornerRadius = 50
        view.alpha = 0.3
        return view
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
    
    //MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(signalStack)
        view.addSubview(controlButton)
        
        signalStack.addArrangedSubview(redSignal)
        signalStack.addArrangedSubview(yellowSignal)
        signalStack.addArrangedSubview(greenSignal)
        
        doContrains()
    }
    
    
    
    //MARK: - Constrains UI Elements
    func doContrains() {
        NSLayoutConstraint.activate([
            signalStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            signalStack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            signalStack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            signalStack.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.5),
            
            controlButton.topAnchor.constraint(lessThanOrEqualTo: signalStack.bottomAnchor, constant: 100),
            controlButton.leadingAnchor.constraint(lessThanOrEqualTo: view.leadingAnchor, constant: 100),
            controlButton.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: 100),
            controlButton.bottomAnchor.constraint(lessThanOrEqualTo: view.bottomAnchor, constant: 100),
            
            redSignal.widthAnchor.constraint(equalToConstant: 100),
            redSignal.heightAnchor.constraint(equalToConstant: 100),
            yellowSignal.widthAnchor.constraint(equalToConstant: 100),
            yellowSignal.heightAnchor.constraint(equalToConstant: 100),
            greenSignal.widthAnchor.constraint(equalToConstant: 100),
            greenSignal.heightAnchor.constraint(equalToConstant: 100),
            
//            controlButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5)
        ])
        
    }
    
    

}

