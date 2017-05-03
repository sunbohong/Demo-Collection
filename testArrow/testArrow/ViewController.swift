//
//  ViewController.swift
//  testArrow
//
//  Created by 孙博弘 on 2017/5/3.
//  Copyright © 2017年 孙博弘. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let linegu = UIView(frame: CGRect.init(x: 0, y: 0, width: 100, height: 20))

    override func viewDidLoad() {
        super.viewDidLoad()
        linegu.backgroundColor = UIColor.red
        self.view.addSubview(linegu);

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let Ypos = (self.view.center.y/2.5);
        self.linegu.center = self.view.center
        self.linegu.center.y = (self.view.center.y + Ypos)
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
            print(touches);
        if let touch = touches.first {

            let coord = touch.location(in:view)

            self.linegu.transform = CGAffineTransform.init(rotationAngle: atan((coord.y - (self.view.center.y + (self.view.center.y)/2.5)) / (coord.x - self.view.center.x)))
        }}



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

