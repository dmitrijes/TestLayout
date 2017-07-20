//
//  ViewController.swift
//  TestLayout
//
//  Created by Dzmitry Fralou on 20.07.17.
//  Copyright © 2017 Dzmitry Fralou. All rights reserved.
//

import UIKit

class FrameViewController: UIViewController {

    var redFrame: CGRect! = nil
    var redView: UIView! = nil
    
    var greenFrame: CGRect! = nil
    var greenView: UIView! = nil
    
    var blackFrame: CGRect! = nil
    var blackView: UIView! = nil
    
    var orangeFrame: CGRect! = nil
    var orangeView: UIView! = nil
    
    @IBOutlet weak var tabBar: UITabBarItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createView()
        
    }

    func createView() {
        
        greenFrame = CGRect(x: 60, y: view.frame.size.height/2 - 50, width: view.frame.size.width - 120, height: 100)
        greenView = UIView(frame: greenFrame)
        greenView.backgroundColor = UIColor.green
        self.view.addSubview(greenView)
        
        redFrame = CGRect(x: 8, y: 8, width: view.frame.size.width/2 - 8, height: greenView.frame.origin.y - 24)
        redView = UIView(frame: redFrame)
        redView.backgroundColor = UIColor.red
        self.view.addSubview(redView)
        
        blackFrame = CGRect(x: view.frame.size.width - 80, y: greenView.frame.origin.y + 108, width: 80, height: 50)
        blackView = UIView(frame: blackFrame)
        blackView.backgroundColor = UIColor.black
        self.view.addSubview(blackView)
        
        orangeFrame = CGRect(x: 8, y: view.frame.size.height - (tabBarController?.tabBar.frame.height)! - 28, width: view.frame.size.width - 16, height: 20)
        orangeView = UIView(frame: orangeFrame)
        orangeView.backgroundColor = UIColor.orange
        self.view.addSubview(orangeView)
        
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        if UIDevice.current.orientation.isPortrait {
            updateView(size: size)
        } else {
            updateView(size: size)
        }
    }
    
    func updateView(size: CGSize) {
        
        greenView.removeFromSuperview()
        greenFrame = CGRect(x: 60, y: size.height/2 - 50, width: size.width - 120, height: 100)
        greenView = UIView(frame: greenFrame)
        greenView.backgroundColor = UIColor.green
        self.view.addSubview(greenView)
        
        redView.removeFromSuperview()
        redFrame = CGRect(x: 8, y: 8, width: size.width/2 - 8, height: greenView.frame.origin.y - 24)
        redView = UIView(frame: redFrame)
        redView.backgroundColor = UIColor.red
        self.view.addSubview(redView)
        
        blackView.removeFromSuperview()
        blackFrame = CGRect(x: size.width - 80, y: greenView.frame.origin.y + 108, width: 80, height: 50)
        blackView = UIView(frame: blackFrame)
        blackView.backgroundColor = UIColor.black
        self.view.addSubview(blackView)
        
        orangeView.removeFromSuperview()
        orangeFrame = CGRect(x: 8, y: size.height - (tabBarController?.tabBar.frame.height)! - 28, width: size.width - 16, height: 20)
        orangeView = UIView(frame: orangeFrame)
        orangeView.backgroundColor = UIColor.orange
        self.view.addSubview(orangeView)
        
    }
    
}

