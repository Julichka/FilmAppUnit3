//
//  FullPicViewController.swift
//  FilmsApp
//
//  Created by Kirill Timanovsky on 29.07.2021.
//

import UIKit

class FullPicViewController: UIViewController {

    @IBOutlet weak var icon: UIImageView!
    
    
    
    
    
    @IBAction func onCloseBtnClick(_ sender: Any) {
        dismiss(animated: true)
    }
    
    
    var imageName: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        icon.image = UIImage(named: imageName ?? "")
    }
}
