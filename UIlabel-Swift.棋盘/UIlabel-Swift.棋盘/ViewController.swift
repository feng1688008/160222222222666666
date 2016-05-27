//
//  ViewController.swift
//  UIlabel-Swift.棋盘
//
//  Created by 李洪峰 on 16/5/26.
//  Copyright © 2016年 Huff Leo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        /11111
        var array:[String] = ["车","马","炮","象","士","将","卒","兵"]
//        是大法师打发士大夫
        for i in 0..<8{
            for j in 0..<8{
                let a:CGFloat = CGFloat(i)
                let b:CGFloat = CGFloat(j)
                
                let button  = UIButton(frame: CGRectMake(0,30,40,59))
                self.view.addSubview(button)
                
                let label = UILabel(frame: CGRectMake(b*40,a*40,40,40))
                if(i%2==0 && j%2 == 0 || (i%2 == 1 && j%2 == 1)){
                    label.backgroundColor = UIColor.redColor()
                }else{
                    label.backgroundColor = UIColor.whiteColor()
                }
                self.view.addSubview(label)
                label.textAlignment = NSTextAlignment.Center
                
                if i == 0 || i == 7{
                    label.text = array[j]
                    label.textColor = UIColor.purpleColor()
                    if i == 7{
                        label.textColor = UIColor.greenColor()
                    }
                }
                
                if i == 0 || i == 6{
                    label.text = "兵"
                    label.textColor = UIColor.redColor()
                    if i == 6{
                        label.textColor = UIColor.greenColor()
                    }
                }
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

