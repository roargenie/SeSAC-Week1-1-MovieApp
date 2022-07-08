//
//  ViewController.swift
//  SeSAC Week1-1 MovieApp
//
//  Created by 이명진 on 2022/07/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainImageView: UIImageView!
    
    @IBOutlet weak var subImageView1: UIImageView!
    
    @IBOutlet weak var subImageView2: UIImageView!
    
    @IBOutlet weak var subImageView3: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainImageView.image = UIImage(named: "movie\(Int.random(in: 1...19))")
        subImageView1.image = UIImage(named: "movie\(Int.random(in: 1...6))")
        subImageView2.image = UIImage(named: "movie\(Int.random(in: 7...13))")
        subImageView3.image = UIImage(named: "movie\(Int.random(in: 14...19))")
        
        subImageView1.layer.cornerRadius = 65
        subImageView1.clipsToBounds = true
        subImageView1.layer.borderColor = UIColor.lightGray.cgColor
        subImageView1.layer.borderWidth = 3
        
        subImageView2.layer.cornerRadius = 65
        subImageView2.clipsToBounds = true
        subImageView2.layer.borderColor = UIColor.lightGray.cgColor
        subImageView2.layer.borderWidth = 3
        
        subImageView3.layer.cornerRadius = 65
        subImageView3.clipsToBounds = true
        subImageView3.layer.borderColor = UIColor.lightGray.cgColor
        subImageView3.layer.borderWidth = 3
        
        
    }

    @IBAction func playButtonTapped(_ sender: UIButton) {
        mainImageView.image = UIImage(named: "movie\(Int.random(in: 1...19))")
        
        
        subImageView1.image = UIImage(named: "movie\(Int.random(in: 1...6))")
        
        
        subImageView2.image = UIImage(named: "movie\(Int.random(in: 7...13))")
        
        
        subImageView3.image = UIImage(named: "movie\(Int.random(in: 14...19))")
        
        
        
    }
    
    
    

    
    
    
    
}

