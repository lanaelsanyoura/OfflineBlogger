//
//  DetailViewController.swift
//  BlogReader
//
//  Created by Lana Sanyoura on 1/13/17.
//  Copyright © 2017 Lana Sanyoura. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var webView: UIWebView!
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let post = detail.post {
                if (webView != nil) {
                webView.loadHTMLString(post, baseURL: nil)
                titleLabel.text = detail.title
                } else {
                    print(webView == nil)
                }
            }
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: Event? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }


}

