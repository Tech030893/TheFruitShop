import UIKit

class TradingHoursVC: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func backPress(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(withIdentifier: "MainVC") as! MainVC
        UIApplication.shared.windows[0].rootViewController = vc
    }
}
