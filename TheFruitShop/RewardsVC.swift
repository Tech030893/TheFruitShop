import UIKit
import WebKit

class RewardsVC: UIViewController, WKUIDelegate, WKNavigationDelegate
{
    @IBOutlet weak var yehooWebV: WKWebView!
    @IBOutlet weak var activityInd: UIActivityIndicatorView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //Method 1 (Accessing Web URL)
        //let url = URL(string: "https://in.yahoo.com/")
        //let urlReq = URLRequest(url: url!)
        //yehooWebV.load(urlReq)
        
        //Method 2 (Accessing Web URL)
        yehooWebV.load(URLRequest(url: URL(string: "https://in.yahoo.com/")!))
        yehooWebV.uiDelegate = self
        yehooWebV.navigationDelegate = self
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!)
    {
        activityInd.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!)
    {
        activityInd.stopAnimating()
    }
    
    @IBAction func backPress(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(withIdentifier: "MainVC") as! MainVC
        UIApplication.shared.windows[0].rootViewController = vc
    }
}
