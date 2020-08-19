//
//  ViewController.swift
//  VK
//
//  Created by Alex Shader on 17.08.2020.
//  Copyright © 2020 shaderness. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardUp), name: UIResponder.keyboardWillShowNotification, object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @objc
    func keyboardUp(notification: Notification) {
        guard
            let keyBoardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect
            else { return }
        
        scrollView.contentInset.bottom = keyBoardFrame.height
    }
}

