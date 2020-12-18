
import UIKit
import StoreKit
import SwiftyStoreKit

class planview: UIViewController, SKProductsRequestDelegate {
    
    
    var selectedName: String = "5"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        SwiftyStoreKit.retrieveProductsInfo(["com.ontrajectory.365daysnew"]) { result in
            if let product = result.retrievedProducts.first {
                let priceString = product.localizedPrice!
                print("Product: \(product.localizedDescription), price: \(priceString)")
            }
            else if let invalidProductId = result.invalidProductIDs.first {
                print("Invalid product identifier: \(invalidProductId)")
            }
            else {
                print("Error: \(result.error)")
            }
        }
    
        IAPManager.shared.getProducts { (result) in
         
            print(result);
        }
        
        
    }
    @IBAction func actPlan5(_ sender: Any)
    {
        selectedName = "Yearly";
        let productID:NSSet = NSSet(object: "com.ontrajectory.365daysnew");
        let productsRequest:SKProductsRequest = SKProductsRequest(productIdentifiers: productID as! Set<String>);
        productsRequest.delegate = self;
        productsRequest.start();
        
//        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "register") as? register
//        self.navigationController?.pushViewController(vc!, animated: true)
    }
    func productsRequest (_ request: SKProductsRequest, didReceive response: SKProductsResponse)
    {
        print(response)
        let count : Int = response.products.count
        print(count)

        if (count>0)
        {
            let validProduct: SKProduct = response.products[0] as SKProduct

            if (validProduct.productIdentifier == "com.ontrajectory.30days" || validProduct.productIdentifier == "com.ontrajectory.365daysnew")
            {
                IAPManager.shared.buy(product: validProduct) { (result) in
                    DispatchQueue.main.async { [self] in
                        
                        switch result
                        {
                            case .success(_): GotoNextScrenn()
                            case .failure( _): self.failInapp()
                        }
                    }
                }
            }
        }
    }
    @IBAction func actPlan9(_ sender: Any)
    {
        selectedName = "Monthly";
        //GotoNextScrenn();
        let productID:NSSet = NSSet(object: "com.ontrajectory.30days");
        let productsRequest:SKProductsRequest = SKProductsRequest(productIdentifiers: productID as! Set<String>);
        productsRequest.delegate = self;
        productsRequest.start();
    }
    func GotoNextScrenn(){
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "register") as? register
        vc?.selectedName = selectedName;
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    func failInapp(){
        let alert = UIAlertController(title: "Ontrajectory", message: "There is some issue to purchase amount. Please try again.", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "ok", style: .cancel, handler: nil))

        self.present(alert, animated: true)
    }
    
    
    func purchase(product: SKProduct) -> Bool {
            if !IAPManager.shared.canMakePayments() {
                return false
            } else {
                IAPManager.shared.buy(product: product) { (result) in
                    DispatchQueue.main.async {
                        switch result {
                        case .success(_): self.GotoNextScrenn()
                        case .failure( _): self.failInapp()
                        }
                    }
                }
            }

            return true
        }
}
