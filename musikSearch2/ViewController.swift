//
//  ViewController.swift
//  musikSearch2
//
//  Created by Ернат on 12.06.2023.
//

import UIKit
import WebKit
import SVProgressHUD

class ViewController: UIViewController, WKNavigationDelegate {
    @IBOutlet weak var webView: WKWebView!
    
    var musik = iTunesMusik()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        webView.navigationDelegate = self
        
        let url = URL(string: musik.previewUrl)
        
        let urlreguest = URLRequest(url: url!)
        
        webView.load(urlreguest)
    }
    
    //MARK: WKWebView delegate
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        SVProgressHUD.show()
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        SVProgressHUD.dismiss()
    }
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        SVProgressHUD.dismiss()
    }
    
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        SVProgressHUD.dismiss()
    }


}

