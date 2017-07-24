//
//  ViewController.swift
//  PageTheScroll
//
//  Created by Gracjana Leonowicz on 20.07.2017.
//  Copyright © 2017 Gracjana Leonowicz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    var images = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        var contentWidth: CGFloat = 0.0
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            
            newX = view.frame.midX + view.frame.width * CGFloat(x)
            
//            contentWidth += newX
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: (newX) - 75, y: (view.frame.height / 2) - 75, width: 150, height: 150)
        }
        
        scrollView.contentSize = CGSize(width: view.frame.width * 3 , height: view.frame.height)
        
       
    }



}

