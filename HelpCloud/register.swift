

import UIKit
import WebKit

class register: UIViewController,WKUIDelegate {
    
    @IBOutlet weak var txtEmail : UITextField!
    var selectedName: String = "Monthly"
    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        webView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    @IBAction func actSubmit(_ sender: Any)
    {
        
        if let text = txtEmail.text, text.isEmpty {
           // myTextField is not empty here
            let alert = UIAlertController(title: "Ontrajectory", message: "Please Enter Your Email Address", preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "ok", style: .cancel, handler: nil))

            self.present(alert, animated: true)
            return;
        }
        if(!isValidEmail(email:txtEmail.text!))
        {
            let alert = UIAlertController(title: "Ontrajectory", message: "Please Enter Valid Email Address", preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "ok", style: .cancel, handler: nil))

            self.present(alert, animated: true)
            return;
        }
        
        
        
        let parameters = ["email":txtEmail.text!,"interval":selectedName,"subscriberID":"111"] as [String : String]
    
        //create the url with URL
        let url = URL(string: "http://www.ontrajectory.com/createMembershipForIOS")! //change the url

        //create the session object
        let session = URLSession.shared

        //now create the URLRequest object using the url object
        var request = URLRequest(url: url)
        request.httpMethod = "POST"//set http method as POST
        
        let jsonData = try? JSONSerialization.data(withJSONObject: parameters)
        request.httpBody = jsonData

       // request.httpBody = parameters.percentEncoded()

        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted) // pass dictionary to nsdata object and set it as request body
        } catch let error {
            print(error.localizedDescription)
        }

        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")

        //create dataTask using the session object to send data to the server
        let task = session.dataTask(with: request as URLRequest, completionHandler: { [self] data, response, error in

            guard error == nil else {
                return
            }

            guard data != nil else {
                return
            }

            do {
                
                if let httpResponse = response as? HTTPURLResponse {
                    print("statusCode: \(httpResponse.statusCode)")
                    
                    if(httpResponse.statusCode==200)
                    {
                        let alert = UIAlertController(title: "Ontrajectory", message: "Your subscription has been created successfully! Your login credentials have been emailed.", preferredStyle: .alert)

                        alert.addAction(UIAlertAction(title: "ok", style: .cancel, handler: nil))
                        self.present(alert, animated: true)
                        
                        let myURL = URL(string: "https://www.ontrajectory.com/?login=1")
                        let myRequest = URLRequest(url: myURL!)
                        self.webView.load(myRequest)
                        self.view.addSubview(webView)
                        NSLayoutConstraint.activate([
                            self.webView.topAnchor
                                .constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
                            self.webView.leftAnchor
                                .constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor),
                            self.webView.bottomAnchor
                                .constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
                            self.webView.rightAnchor
                                .constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor)
                        ])
                    }
                    
                }
            } catch let error {
                print(error.localizedDescription)
            }
        })
        task.resume()
    }
    
    
   /* @IBAction func actSubmit1(_ sender: Any)
    {
    
        if let text = txtEmail.text, text.isEmpty {
           // myTextField is not empty here
            let alert = UIAlertController(title: "Ontrajectory", message: "Please Enter Your Email Address", preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "ok", style: .cancel, handler: nil))

            self.present(alert, animated: true)
            return;
        }
        if(!isValidEmail(email:txtEmail.text!))
        {
            let alert = UIAlertController(title: "Ontrajectory", message: "Please Enter Valid Email Address", preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "ok", style: .cancel, handler: nil))

            self.present(alert, animated: true)
            return;
        }
        
        
    /*    let params = ["email":txtEmail.text, "interval":selectedName, "subscriberID":"123"] as Dictionary<String, String>

        var request = URLRequest(url: URL(string: "http://www.ontrajectory.com/createMembershipForIOS")!)
        request.httpMethod = "POST"
        request.httpBody = try? JSONSerialization.data(withJSONObject: params, options: [])
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        let session = URLSession.shared
        let task = session.dataTask(with: request, completionHandler: { data, response, error -> Void in
            print(response!)
            do {
                let json = try JSONSerialization.jsonObject(with: data!) as! Dictionary<String, AnyObject>
                print(json)
            } catch {
                print("error")
            }
        })

        task.resume()
        */
        
        
        let url = URL(string: "http://www.ontrajectory.com/createMembershipForIOS")!
        var request = URLRequest(url: url)
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        let parameters: [String: Any] = [
            "id": 13,
            "name": "Jack & Jill"
        ]
        

       // request.httpBody = parameters.data(using: String.Encoding.utf8)

        //request.httpBody = parameters.percentEncoded()

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data,
                let response = response as? HTTPURLResponse,
                error == nil else {                                              // check for fundamental networking error
                print("error", error ?? "Unknown error")
                return
            }

            guard (200 ... 299) ~= response.statusCode else {                    // check for http errors
                print("statusCode should be 2xx, but is \(response.statusCode)")
                print("response = \(response)")
                return
            }

            let responseString = String(data: data, encoding: .utf8)
            print("responseString = \(responseString)")
        }

        task.resume()
        
        
        
        
        var params = "email:" + txtEmail.text!
        params += ",interval:" + selectedName
        params += ",subscriberID:" + "123"
        print("Parameter");
        print(params);
    
        WebRequester.shared.request(urlStr: "http://www.ontrajectory.com/createMembershipForIOS", parameter: params) { (result, error) in
            DispatchQueue.main.async { [self] in
                print("web service call response")
                print(result as Any)
                
                
                if(result==nil){
                    let alert = UIAlertController(title: "Ontrajectory", message: "Some operation issue is there please contact to the support", preferredStyle: .alert)

                    alert.addAction(UIAlertAction(title: "ok", style: .cancel, handler: nil))
                    self.present(alert, animated: true)
                }
                else{
                    
                    let myURL = URL(string: "https://www.ontrajectory.com/?login=1")
                    let myRequest = URLRequest(url: myURL!)
                    self.webView.load(myRequest)
                    self.view.addSubview(webView)
                    NSLayoutConstraint.activate([
                        self.webView.topAnchor
                            .constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
                        self.webView.leftAnchor
                            .constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor),
                        self.webView.bottomAnchor
                            .constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
                        self.webView.rightAnchor
                            .constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor)
                    ])
                }
                
            }
        }
        
        /*
         http://www.ontrajectory.com/createMembershipForIOS?email=r@test.com&interval=9&subscriberID=123
         */
        
    }*/
    func isValidEmail(email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
}

class WebRequester: NSObject {

    static let shared = WebRequester()

    let session = URLSession.shared

    func request(urlStr:String, parameter:String, token:String? = nil, callback:@escaping (_ result:NSDictionary?, _ error:Error?) -> Void) {

        let url = URL(string: urlStr)

        debugPrint("=====================")
        debugPrint(url ?? "")
        debugPrint(parameter)
        debugPrint("=====================")

        var request = URLRequest(url: url!)
        request.httpMethod = "POST"
        request.httpBody = parameter.data(using: String.Encoding.utf8)


        //print("Token :", (token ?? ""))
       // request.setValue(token, forHTTPHeaderField: "Authorization")


        let task = session.dataTask(with: request) { (data, response, error) in
            DispatchQueue.main.async {
                if error == nil {
                   do {
                         let jsonObj = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments)
                         if let dic = jsonObj as? NSDictionary {
                             callback(dic, error)
                         }
                   }
                   catch {
                      callback(nil, error)
                   }
                }
                else {
                   callback(nil, error)
                }

            }
        }
        task.resume()
    }

}
