import UIKit
class cableAndConnectorVC: UIViewController {
    
    @IBOutlet weak var txtQty: UITextField!
    @IBOutlet weak var txtConnectorJ6: UITextField!
    @IBOutlet weak var txtCable: UITextField!
    @IBOutlet weak var txtI1: UITextField!
    @IBOutlet weak var txtI2: UITextField!
    @IBOutlet weak var txtI3: UITextField!
    @IBOutlet weak var txtI4: UITextField!
    @IBOutlet weak var txtConnectorJ3: UITextField!
    @IBOutlet weak var txtTotal: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        for _ in 0...7{
            
            let object1 : NSMutableDictionary = [:]
            
            object1.setValue("", forKey: "qty")
            object1.setValue("", forKey: "conectorj6")
            object1.setValue("", forKey: "cable")
            object1.setValue("", forKey: "i1")
            object1.setValue("", forKey: "i2")
            object1.setValue("", forKey: "i3")
            object1.setValue("", forKey: "i4")
            object1.setValue("", forKey: "total")
            object1.setValue("", forKey: "conectorj3")
            CabelAndConnector.add(object1)
        }
    }
    @IBAction func actSaveAndNext(_ sender: Any) {
        
        let object1 : NSMutableDictionary = [:]
        
        object1.setValue(txtQty.text, forKey: "qty")
        object1.setValue(txtConnectorJ6.text, forKey: "conectorj6")
        object1.setValue(txtCable.text, forKey: "cable")
        object1.setValue(txtI1.text, forKey: "i1")
        object1.setValue(txtI2.text, forKey: "i2")
        object1.setValue(txtI3.text, forKey: "i3")
        object1.setValue(txtI4.text, forKey: "i4")
        object1.setValue(txtTotal.text, forKey: "total")
        object1.setValue(txtConnectorJ3.text, forKey: "conectorj3")
        CabelAndConnector.replaceObject(at: 0, with: object1)
                
//        let photoController = positionOfProtectionVC(nibName: "positionOfProtectionVC", bundle: nil)
//        self.navigationController?.pushViewController(photoController, animated: true)
    }
}

