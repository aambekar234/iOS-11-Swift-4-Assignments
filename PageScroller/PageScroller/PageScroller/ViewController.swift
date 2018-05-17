//
//  ViewController.swift
//  PageScroller
//
//  Created by Abhijeet on 5/16/18.
//  Copyright © 2018 Abhijeet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollview: UIScrollView!
    var images = [UIImageView]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func viewDidAppear(_ animated: Bool) {
        let scrollviewwidth = scrollview.frame.width
        for i in 0...2{
            let _image = UIImage(named: "icon\(i).png")
            let _imageview = UIImageView(image: _image)
            images.append(_imageview)
            let x = scrollviewwidth/2 + scrollviewwidth * CGFloat(i)
            scrollview.addSubview(_imageview)
            _imageview.frame = CGRect(x: x - 75, y: scrollview.frame.height/2 - 75, width: 150, height: 150)
        }
        
        scrollview.contentSize = CGSize(width: 3  * scrollviewwidth, height: scrollview.frame.height)
        scrollview.clipsToBounds = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

