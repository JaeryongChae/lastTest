//
//  CarDetailWebViewController.swift
//  JRChae_Test
//
//  Created by MF839-008 on 2016. 6. 3..
//  Copyright © 2016년 JRChae. All rights reserved.
//

import UIKit

class CarDetailWebViewController: UIViewController {

    @IBOutlet weak var carWebView: UIWebView!
    var carURL:String?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let urlRequest = NSURLRequest(URL:NSURL(string:carURL!)!)
        carWebView.loadRequest(urlRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
