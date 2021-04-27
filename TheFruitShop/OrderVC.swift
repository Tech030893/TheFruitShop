import UIKit
import WebKit

class OrderVC: UIViewController, WKUIDelegate, WKNavigationDelegate
{
    @IBOutlet weak var googleWebV: WKWebView!
    @IBOutlet weak var activityInd: UIActivityIndicatorView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //Method 1 (Accessing Web URL)
        //let url = URL(string: "https://www.google.com")
        //let urlReq = URLRequest(url: url!)
        //googleWebV.load(urlReq)
        
        //Method 2 (Accessing Web URL)
        googleWebV.load(URLRequest(url: URL(string: "https:www.google.com")!))
        googleWebV.uiDelegate = self
        googleWebV.navigationDelegate = self
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
