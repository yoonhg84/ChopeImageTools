//
//  ViewController.swift
//  ChopeImageToolsExample
//
//  Created by Chope on 2016. 12. 7..
//  Copyright © 2016년 Chope industry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputImageView: UIImageView!
    @IBOutlet weak var outputImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        outputImageView.image = inputImageView.image?
                .transform(.resize(size: CGSize(width: 100, height: 100)))?
                .transform(.crop(rect: CGRect(x: 25, y: 25, width: 50, height: 50)))

        outputImageView.image = inputImageView.image?.transforms([
                .resize(size: CGSize(width: 100, height: 100)),
                .crop(rect: CGRect(x: 25, y: 25, width: 50, height: 50))
        ])
    }

}

