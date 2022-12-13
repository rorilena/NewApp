//
//  ViewController.swift
//  NewApp
//
//  Created by Elena Rodionova on 11.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clickMeButton: UIButton!
    @IBOutlet weak var skyImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    clickMeButton.tintColor = .green
        skyImageView.image = UIImage(systemName: "moon")
    skyImageView.tintColor = .gray
    // Do any additional setup after loading the view.
    }

    @IBAction func buttonDidTapNow(_ sender: UIButton!) {
        print("Нажатие")
        if isSun { // 1
            skyImageView.image = UIImage(systemName: "moon") // 2
        } else {
            skyImageView.image = UIImage(systemName: "sun.max") // 3
        }
        isSun.toggle() // 4
    }
    private var isSun: Bool = false
    
}


