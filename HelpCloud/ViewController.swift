import UIKit
import WebKit

class ViewController: UIViewController,WKUIDelegate {
    
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            let webConfiguration = WKWebViewConfiguration()
            webView = WKWebView(frame: .zero, configuration: webConfiguration)
            webView.uiDelegate = self
            webView.translatesAutoresizingMaskIntoConstraints = false
        
    }
    @IBAction func actLogin(_ sender: Any) {
        
        let myURL = URL(string: "https://www.ontrajectory.com/?login=1")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        self.view.addSubview(webView)
        NSLayoutConstraint.activate([
            webView.topAnchor
                .constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            webView.leftAnchor
                .constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor),
            webView.bottomAnchor
                .constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            webView.rightAnchor
                .constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor)
        ])
    }
    @IBAction func actGuest(_ sender: Any) {
        
        let myURL = URL(string: "https://www.ontrajectory.com/")
               let myRequest = URLRequest(url: myURL!)
               webView.load(myRequest)
               self.view.addSubview(webView)
               NSLayoutConstraint.activate([
                   webView.topAnchor
                       .constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
                   webView.leftAnchor
                       .constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor),
                   webView.bottomAnchor
                       .constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
                   webView.rightAnchor
                       .constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor)
               ])
    }
    @IBAction func actPaidMemberShip(_ sender: Any) {
        
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "planview") as? planview
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    func startTodaySurvey(){
       
    }
    
    @objc func savedata(){
        
       // let Previouscount = UserDefaults.standard.integer(forKey: "helcloudtodays") as Int
        
    }
    @objc func textChange(){
        
        UIView.animate(withDuration: 1.5, animations: {
            
        
            
        }, completion: { _ in
        })
    }
}

