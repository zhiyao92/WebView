//
//  ViewController.swift
//  WebView
//
//  Created by Kelvin on 10/12/17.
//  Copyright © 2017 Kelvin. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    var links: String = ""
    
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL (string: links)
        let request = URLRequest(url: url!)
        webView.load(request)
    }


}
