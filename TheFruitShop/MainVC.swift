import UIKit

class MainVC: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func orderPress(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(withIdentifier: "OrderVC") as! OrderVC
        UIApplication.shared.windows[0].rootViewController = vc
    }
    
    @IBAction func rewardsPress(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(withIdentifier: "RewardsVC") as! RewardsVC
        UIApplication.shared.windows[0].rootViewController = vc
    }
    
    @IBAction func tradePress(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(withIdentifier: "TradingHoursVC") as! TradingHoursVC
        UIApplication.shared.windows[0].rootViewController = vc
    }
    
    @IBAction func findPress(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(withIdentifier: "FindUsVC") as! FindUsVC
        UIApplication.shared.windows[0].rootViewController = vc
    }
}
