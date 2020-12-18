//
//  GlobalMethods.swift

import UIKit
import MBProgressHUD


class GlobalMethods: NSObject {
    
    
    
    
    
    class func header(page: UIView){
        
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy"
        let result = formatter.string(from: date)
        
        let lblTitle = UILabel(frame: CGRect(x: 40, y: 70, width: 800, height: 45))
        lblTitle.font = UIFont.italicSystemFont(ofSize: 16.0)
        lblTitle.textAlignment = .left
        lblTitle.text = "Final Check: \(result)"
        lblTitle.textColor = .darkGray
        page.addSubview(lblTitle)
        
        var imageView : UIImageView
        imageView  = UIImageView(frame:CGRect(x: page.frame.size.width-290, y: 10, width: 250, height: 100))
        imageView.contentMode = .right
        imageView.image = UIImage(named:"logo_text")
        page.addSubview(imageView)
        
        let lblLine = UILabel(frame: CGRect(x: 40, y: lblTitle.frame.origin.y+lblTitle.frame.size.height-10, width: page.frame.size.width-80, height: 1))
        lblLine.backgroundColor = .darkGray
        page.addSubview(lblLine)
        
        let lblDP = UILabel(frame: CGRect(x: 40, y: lblLine.frame.origin.y+lblLine.frame.size.height-10, width: 800, height: 45))
        lblDP.font = UIFont.italicSystemFont(ofSize: 16.0)
        lblDP.textAlignment = .left
        lblDP.text = "Dress Packs"
        lblDP.textColor = .darkGray
        page.addSubview(lblDP)
        
        yPosotion += 150
    }
    class func footer(page: UIView, number: String){
        
        let lblLine = UILabel(frame: CGRect(x: 40, y: 1122-70, width: page.frame.size.width-80, height: 1))
        lblLine.backgroundColor = .darkGray
        page.addSubview(lblLine)
        
        let lblDP = UILabel(frame: CGRect(x: 40, y: lblLine.frame.origin.y+lblLine.frame.size.height+20, width: page.frame.size.width-80, height: 45))
        lblDP.font = UIFont.italicSystemFont(ofSize: 16.0)
        lblDP.textAlignment = .right
        lblDP.text = number
        lblDP.textColor = .darkGray
        page.addSubview(lblDP)
    }
    class func finalCheck(page: UIView){
     
        ///178
        let width : Int = 178
        var xPosition : Int = 40

        let lblTitle = UILabel(frame: CGRect(x: 40, y: yPosotion, width: 800, height: 45))
        lblTitle.font = UIFont.boldSystemFont(ofSize: 22)
        lblTitle.textAlignment = .left
        lblTitle.text = "Final Check"
        lblTitle.textColor = .black
        page.addSubview(lblTitle)
        yPosotion += 50
        
        
        //Row 1
        let fontSize : CGFloat = 11
        let lbl1 = UILabel(frame: CGRect(x: xPosition, y: yPosotion, width: width, height: 40))
        lbl1.font = UIFont.boldSystemFont(ofSize: fontSize)
        lbl1.textAlignment = .left
        lbl1.text = "  Plant, car-project:"
        lbl1.textColor = .black
        lbl1.layer.borderColor = UIColor.black.cgColor
        lbl1.layer.borderWidth = 1.0
        page.addSubview(lbl1)
        xPosition += (width-1)
        
        let lbl2 = UILabel(frame: CGRect(x: xPosition, y: yPosotion, width: width, height: 40))
        lbl2.font = UIFont.boldSystemFont(ofSize: fontSize)
        lbl2.textAlignment = .left
        lbl2.text = " \(strPlant ?? "")"
        lbl2.textColor = .black
        lbl2.layer.borderColor = UIColor.black.cgColor
        lbl2.layer.borderWidth = 1.0
        page.addSubview(lbl2)
        xPosition += (width-1)
        
        let lbl3 = UILabel(frame: CGRect(x: xPosition, y: yPosotion, width: width, height: 40))
        lbl3.font = UIFont.boldSystemFont(ofSize: fontSize)
        lbl3.textAlignment = .left
        lbl3.text = "  Line builder:"
        lbl3.textColor = .black
        lbl3.layer.borderColor = UIColor.black.cgColor
        lbl3.layer.borderWidth = 1.0
        page.addSubview(lbl3)
        xPosition += (width-1)

        let lbl4 = UILabel(frame: CGRect(x: xPosition, y: yPosotion, width: width, height: 40))
        lbl4.font = UIFont.boldSystemFont(ofSize: fontSize)
        lbl4.textAlignment = .left
        lbl4.text = " \(strLineBuilder ?? "")"
        lbl4.textColor = .black
        lbl4.layer.borderColor = UIColor.black.cgColor
        lbl4.layer.borderWidth = 1.0
        page.addSubview(lbl4)
        
        
        //Row 2
        yPosotion += 39
        xPosition = 40
        
        let lbl11 = UILabel(frame: CGRect(x: xPosition, y: yPosotion, width: width, height: 40))
        lbl11.font = UIFont.boldSystemFont(ofSize: fontSize)
        lbl11.textAlignment = .left
        lbl11.text = "  Area or colum#:"
        lbl11.textColor = .black
        lbl11.layer.borderColor = UIColor.black.cgColor
        lbl11.layer.borderWidth = 1.0
        page.addSubview(lbl11)
        xPosition += (width-1)
        
        let lbl22 = UILabel(frame: CGRect(x: xPosition, y: yPosotion, width: width, height: 40))
        lbl22.font = UIFont.boldSystemFont(ofSize: fontSize)
        lbl22.textAlignment = .left
        lbl22.text = " \(strArea ?? "")"
        lbl22.textColor = .black
        lbl22.layer.borderColor = UIColor.black.cgColor
        lbl22.layer.borderWidth = 1.0
        page.addSubview(lbl22)
        xPosition += (width-1)
        
        let lbl33 = UILabel(frame: CGRect(x: xPosition, y: yPosotion, width: width, height: 40))
        lbl33.font = UIFont.boldSystemFont(ofSize: fontSize)
        lbl33.textAlignment = .left
        lbl33.text = "  Order-No. DP 3-6:"
        lbl33.textColor = .black
        lbl33.layer.borderColor = UIColor.black.cgColor
        lbl33.layer.borderWidth = 1.0
        page.addSubview(lbl33)
        xPosition += (width-1)
        
        let lbl44 = UILabel(frame: CGRect(x: xPosition, y: yPosotion, width: width, height: 40))
        lbl44.font = UIFont.boldSystemFont(ofSize: fontSize)
        lbl44.textAlignment = .left
        lbl44.text = " \(strOrderNo ?? "")"
        lbl44.textColor = .black
        lbl44.layer.borderColor = UIColor.black.cgColor
        lbl44.layer.borderWidth = 1.0
        page.addSubview(lbl44)
        
        
        //Row 3
        yPosotion += 39
        xPosition = 40
        
        let lbl31 = UILabel(frame: CGRect(x: xPosition, y: yPosotion, width: width, height: 40))
        lbl31.font = UIFont.boldSystemFont(ofSize: fontSize)
        lbl31.textAlignment = .left
        lbl31.text = "  Station:"
        lbl31.textColor = .black
        lbl31.layer.borderColor = UIColor.black.cgColor
        lbl31.layer.borderWidth = 1.0
        page.addSubview(lbl31)
        xPosition += (width-1)
        
        let lbl32 = UILabel(frame: CGRect(x: xPosition, y: yPosotion, width: width, height: 40))
        lbl32.font = UIFont.boldSystemFont(ofSize: fontSize)
        lbl32.textAlignment = .left
        lbl32.text = " \(strStation ?? "")"
        lbl32.textColor = .black
        lbl32.layer.borderColor = UIColor.black.cgColor
        lbl32.layer.borderWidth = 1.0
        page.addSubview(lbl32)
        xPosition += (width-1)
        
        let lbl321 = UILabel(frame: CGRect(x: xPosition, y: yPosotion, width: width, height: 40))
        lbl321.font = UIFont.boldSystemFont(ofSize: fontSize)
        lbl321.textAlignment = .left
        lbl321.text = "  Robot name:"
        lbl321.textColor = .black
        lbl321.layer.borderColor = UIColor.black.cgColor
        lbl321.layer.borderWidth = 1.0
        page.addSubview(lbl321)
        xPosition += (width-1)
        
        let lbl322 = UILabel(frame: CGRect(x: xPosition, y: yPosotion, width: width, height: 40))
        lbl322.font = UIFont.boldSystemFont(ofSize: fontSize)
        lbl322.textAlignment = .left
        lbl322.text = " \(strRobotName ?? "")"
        lbl322.textColor = .black
        lbl322.layer.borderColor = UIColor.black.cgColor
        lbl322.layer.borderWidth = 1.0
        page.addSubview(lbl322)
        
        
        //Row 4
        yPosotion += 39
        xPosition = 40
        
        let lbl41 = UILabel(frame: CGRect(x: xPosition, y: yPosotion, width: width, height: 40))
        lbl41.font = UIFont.boldSystemFont(ofSize: fontSize)
        lbl41.textAlignment = .left
        lbl41.text = "  Robot serial-No.:"
        lbl41.textColor = .black
        lbl41.layer.borderColor = UIColor.black.cgColor
        lbl41.layer.borderWidth = 1.0
        page.addSubview(lbl41)
        xPosition += (width-1)
        
        let lbl42 = UILabel(frame: CGRect(x: xPosition, y: yPosotion, width: width, height: 40))
        lbl42.font = UIFont.boldSystemFont(ofSize: fontSize)
        lbl42.textAlignment = .left
        lbl42.text = " \(strRobotSerialNumber ?? "")"
        lbl42.textColor = .black
        lbl42.layer.borderColor = UIColor.black.cgColor
        lbl42.layer.borderWidth = 1.0
        page.addSubview(lbl42)
        xPosition += (width-1)
        
        let lbl421 = UILabel(frame: CGRect(x: xPosition, y: yPosotion, width: width, height: 40))
        lbl421.font = UIFont.boldSystemFont(ofSize: fontSize)
        lbl421.textAlignment = .left
        lbl421.text = "  Robot type:"
        lbl421.textColor = .black
        lbl421.layer.borderColor = UIColor.black.cgColor
        lbl421.layer.borderWidth = 1.0
        page.addSubview(lbl421)
        xPosition += (width-1)
        
        let lbl422 = UILabel(frame: CGRect(x: xPosition, y: yPosotion, width: width, height: 40))
        lbl422.font = UIFont.boldSystemFont(ofSize: fontSize)
        lbl422.textAlignment = .left
        lbl422.text = " \(strRobotType ?? "")"
        lbl422.textColor = .black
        lbl422.layer.borderColor = UIColor.black.cgColor
        lbl422.layer.borderWidth = 1.0
        page.addSubview(lbl422)
        
        
        //Row 5
        yPosotion += 39
        xPosition = 40
        
        let lbl51 = UILabel(frame: CGRect(x: xPosition, y: yPosotion, width: width, height: 40))
        lbl51.font = UIFont.boldSystemFont(ofSize: fontSize)
        lbl51.textAlignment = .left
        lbl51.text = "  Serial-No. Dress Pack:"
        lbl51.textColor = .black
        lbl51.layer.borderColor = UIColor.black.cgColor
        lbl51.layer.borderWidth = 1.0
        page.addSubview(lbl51)
        xPosition += (width-1)
        
        let lbl52 = UILabel(frame: CGRect(x: xPosition, y: yPosotion, width: width, height: 40))
        lbl52.font = UIFont.boldSystemFont(ofSize: fontSize)
        lbl52.textAlignment = .left
        lbl52.text = " \(strSerialNumber ?? "")"
        lbl52.textColor = .black
        lbl52.layer.borderColor = UIColor.black.cgColor
        lbl52.layer.borderWidth = 1.0
        page.addSubview(lbl52)
        xPosition += (width-1)
        
        let lbl521 = UILabel(frame: CGRect(x: xPosition, y: yPosotion, width: width, height: 40))
        lbl521.font = UIFont.boldSystemFont(ofSize: fontSize)
        lbl521.textAlignment = .left
        lbl521.text = "  Application:"
        lbl521.textColor = .black
        lbl521.layer.borderColor = UIColor.black.cgColor
        lbl521.layer.borderWidth = 1.0
        page.addSubview(lbl521)
        xPosition += (width-1)
        
        let lbl522 = UILabel(frame: CGRect(x: xPosition, y: yPosotion, width: width, height: 40))
        lbl522.font = UIFont.boldSystemFont(ofSize: fontSize)
        lbl522.textAlignment = .left
        lbl522.text = " \(strApplication ?? "")"
        lbl522.textColor = .black
        lbl522.layer.borderColor = UIColor.black.cgColor
        lbl522.layer.borderWidth = 1.0
        page.addSubview(lbl522)
        
        
        yPosotion += 40
    }
    class func wireCheck(page: UIView){
        
        yPosotion += 20
        
        let lblTitle = UILabel(frame: CGRect(x: 40, y: yPosotion, width: 800, height: 30))
        lblTitle.font = UIFont.boldSystemFont(ofSize: 12)
        lblTitle.textAlignment = .left
        lblTitle.text = "1. General Dress Pack Measures and Characteristics"
        lblTitle.textColor = .black
        page.addSubview(lblTitle)
        yPosotion += 30
        
        
        var imageView : UIImageView
        imageView  = UIImageView(frame:CGRect(x: 40, y: yPosotion, width: 712, height: 100))
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "wire")
        page.addSubview(imageView)
        yPosotion += 120
        
        
        let lblTitle2 = UILabel(frame: CGRect(x: 40, y: yPosotion, width: 800, height: 25))
        lblTitle2.font = UIFont.systemFont(ofSize: 10)
        lblTitle2.textAlignment = .left
        lblTitle2.text = "Cable and Connector details, length:"
        lblTitle2.textColor = .black
        page.addSubview(lblTitle2)
        yPosotion += 25
        
        var xposition : Int = 40
        
        let vwNoBox = UIView(frame: CGRect(x: xposition, y: yPosotion, width: 50, height: 40))
        vwNoBox.backgroundColor = .white
        vwNoBox.layer.borderColor = UIColor.black.cgColor
        vwNoBox.layer.borderWidth = 1.0
        let lblNoBox = UILabel(frame: CGRect(x: 0, y: 0, width: 50, height: 40))
        lblNoBox.font = UIFont.boldSystemFont(ofSize: 9)
        lblNoBox.textAlignment = .center
        lblNoBox.text = "QTY"
        lblNoBox.textColor = .black
        vwNoBox.addSubview(lblNoBox)
        page.addSubview(vwNoBox)
        xposition += 49
        
        
        let vwConnectorJ6 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: 140, height: 40))
        vwConnectorJ6.backgroundColor = .white
        vwConnectorJ6.layer.borderColor = UIColor.black.cgColor
        vwConnectorJ6.layer.borderWidth = 1.0
        let lblConnectorJ6 = UILabel(frame: CGRect(x: 0, y: 0, width: 140, height: 40))
        lblConnectorJ6.font = UIFont.boldSystemFont(ofSize: 9)
        lblConnectorJ6.textAlignment = .center
        lblConnectorJ6.text = "Connector J6"
        lblConnectorJ6.textColor = .black
        vwConnectorJ6.addSubview(lblConnectorJ6)
        page.addSubview(vwConnectorJ6)
        xposition += 139
        
        
        let vwCable = UIView(frame: CGRect(x: xposition, y: yPosotion, width: 80, height: 40))
        vwCable.backgroundColor = .white
        vwCable.layer.borderColor = UIColor.black.cgColor
        vwCable.layer.borderWidth = 1.0
        let lblCable = UILabel(frame: CGRect(x: 0, y: 0, width: 80, height: 40))
        lblCable.font = UIFont.boldSystemFont(ofSize: 9)
        lblCable.textAlignment = .center
        lblCable.text = "Cable"
        lblCable.textColor = .black
        vwCable.addSubview(lblCable)
        page.addSubview(vwCable)
        xposition += 79
        
        
        let widthColum : Int = 60
        let vwL1 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: widthColum, height: 40))
        vwL1.backgroundColor = .white
        vwL1.layer.borderColor = UIColor.black.cgColor
        vwL1.layer.borderWidth = 1.0
        let lblL1 = UILabel(frame: CGRect(x: 0, y: 0, width: widthColum, height: 40))
        lblL1.font = UIFont.boldSystemFont(ofSize: 9)
        lblL1.textAlignment = .center
        lblL1.text = "I1"
        lblL1.textColor = .black
        vwL1.addSubview(lblL1)
        page.addSubview(vwL1)
        xposition += (widthColum-1)
        
        
        let vwL2 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: widthColum, height: 40))
        vwL2.backgroundColor = .white
        vwL2.layer.borderColor = UIColor.black.cgColor
        vwL2.layer.borderWidth = 1.0
        let lblL2 = UILabel(frame: CGRect(x: 0, y: 0, width: widthColum, height: 40))
        lblL2.font = UIFont.boldSystemFont(ofSize: 9)
        lblL2.textAlignment = .center
        lblL2.text = "I2"
        lblL2.textColor = .black
        vwL2.addSubview(lblL2)
        page.addSubview(vwL2)
        xposition += (widthColum-1)
        
        
        let vwL3 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: widthColum, height: 40))
        vwL3.backgroundColor = .white
        vwL3.layer.borderColor = UIColor.black.cgColor
        vwL3.layer.borderWidth = 1.0
        let lblL3 = UILabel(frame: CGRect(x: 0, y: 0, width: widthColum, height: 40))
        lblL3.font = UIFont.boldSystemFont(ofSize: 9)
        lblL3.textAlignment = .center
        lblL3.text = "I3"
        lblL3.textColor = .black
        vwL3.addSubview(lblL3)
        page.addSubview(vwL3)
        xposition += (widthColum-1)
        
        
        let vwL4 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: widthColum, height: 40))
        vwL4.backgroundColor = .white
        vwL4.layer.borderColor = UIColor.black.cgColor
        vwL4.layer.borderWidth = 1.0
        let lblL4 = UILabel(frame: CGRect(x: 0, y: 0, width: widthColum, height: 40))
        lblL4.font = UIFont.boldSystemFont(ofSize: 9)
        lblL4.textAlignment = .center
        lblL4.text = "I4"
        lblL4.textColor = .black
        vwL4.addSubview(lblL4)
        page.addSubview(vwL4)
        xposition += (widthColum-1)
        
        
        
        let vwTotla = UIView(frame: CGRect(x: xposition, y: yPosotion, width: 70, height: 40))
        vwTotla.backgroundColor = .white
        vwTotla.layer.borderColor = UIColor.black.cgColor
        vwTotla.layer.borderWidth = 1.0
        let lblTotal = UILabel(frame: CGRect(x: 0, y: 0, width: 70, height: 40))
        lblTotal.font = UIFont.boldSystemFont(ofSize: 9)
        lblTotal.textAlignment = .center
        lblTotal.text = "Total"
        lblTotal.textColor = .black
        vwTotla.addSubview(lblTotal)
        page.addSubview(vwTotla)
        xposition += 69
        
        
        let vwConnectorJ3 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: 130, height: 40))
        vwConnectorJ3.backgroundColor = .white
        vwConnectorJ3.layer.borderColor = UIColor.black.cgColor
        vwConnectorJ3.layer.borderWidth = 1.0
        let lblConnectorJ3 = UILabel(frame: CGRect(x: 0, y: 0, width: 130, height: 40))
        lblConnectorJ3.font = UIFont.boldSystemFont(ofSize: 9)
        lblConnectorJ3.textAlignment = .center
        lblConnectorJ3.text = "Connector J6"
        lblConnectorJ3.textColor = .black
        vwConnectorJ3.addSubview(lblConnectorJ3)
        page.addSubview(vwConnectorJ3)
        xposition += 129
        
        yPosotion += 39
        
        for (_, obj) in CabelAndConnector.enumerated() {
            
            let temp : NSMutableDictionary = obj as! NSMutableDictionary
            
            var xposition : Int = 40
            let height : Int = 30

            let vwNoBox = UIView(frame: CGRect(x: xposition, y: yPosotion, width: 50, height: height))
            vwNoBox.backgroundColor = .white
            vwNoBox.layer.borderColor = UIColor.black.cgColor
            vwNoBox.layer.borderWidth = 1.0
            let lblNoBox = UILabel(frame: CGRect(x: 0, y: 0, width: 50, height: height))
            lblNoBox.font = UIFont.systemFont(ofSize: 9)
            lblNoBox.textAlignment = .center
            lblNoBox.text = temp["qty"] as? String
            lblNoBox.textColor = .black
            vwNoBox.addSubview(lblNoBox)
            page.addSubview(vwNoBox)
            xposition += 49
            
            let vwConnectorJ6 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: 140, height: height))
            vwConnectorJ6.backgroundColor = .white
            vwConnectorJ6.layer.borderColor = UIColor.black.cgColor
            vwConnectorJ6.layer.borderWidth = 1.0
            let lblConnectorJ6 = UILabel(frame: CGRect(x: 0, y: 0, width: 140, height: height))
            lblConnectorJ6.font = UIFont.systemFont(ofSize: 9)
            lblConnectorJ6.textAlignment = .center
            lblConnectorJ6.text = temp["conectorj6"] as? String
            lblConnectorJ6.textColor = .black
            vwConnectorJ6.addSubview(lblConnectorJ6)
            page.addSubview(vwConnectorJ6)
            xposition += 139
            
            let vwCable = UIView(frame: CGRect(x: xposition, y: yPosotion, width: 80, height: height))
            vwCable.backgroundColor = .white
            vwCable.layer.borderColor = UIColor.black.cgColor
            vwCable.layer.borderWidth = 1.0
            let lblCable = UILabel(frame: CGRect(x: 0, y: 0, width: 80, height: height))
            lblCable.font = UIFont.systemFont(ofSize: 9)
            lblCable.textAlignment = .center
            lblCable.text = temp["cable"] as? String
            lblCable.textColor = .black
            vwCable.addSubview(lblCable)
            page.addSubview(vwCable)
            xposition += 79
            
            let widthColum : Int = 60
            let vwL1 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: widthColum, height: height))
            vwL1.backgroundColor = .white
            vwL1.layer.borderColor = UIColor.black.cgColor
            vwL1.layer.borderWidth = 1.0
            let lblL1 = UILabel(frame: CGRect(x: 0, y: 0, width: widthColum, height: height))
            lblL1.font = UIFont.systemFont(ofSize: 9)
            lblL1.textAlignment = .center
            lblL1.text = temp["i1"] as? String
            lblL1.textColor = .black
            vwL1.addSubview(lblL1)
            page.addSubview(vwL1)
            xposition += (widthColum-1)
            
            let vwL2 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: widthColum, height: height))
            vwL2.backgroundColor = .white
            vwL2.layer.borderColor = UIColor.black.cgColor
            vwL2.layer.borderWidth = 1.0
            let lblL2 = UILabel(frame: CGRect(x: 0, y: 0, width: widthColum, height: height))
            lblL2.font = UIFont.systemFont(ofSize: 9)
            lblL2.textAlignment = .center
            lblL2.text = temp["i2"] as? String
            lblL2.textColor = .black
            vwL2.addSubview(lblL2)
            page.addSubview(vwL2)
            xposition += (widthColum-1)
            
            let vwL3 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: widthColum, height: height))
            vwL3.backgroundColor = .white
            vwL3.layer.borderColor = UIColor.black.cgColor
            vwL3.layer.borderWidth = 1.0
            let lblL3 = UILabel(frame: CGRect(x: 0, y: 0, width: widthColum, height: height))
            lblL3.font = UIFont.systemFont(ofSize: 9)
            lblL3.textAlignment = .center
            lblL3.text = temp["i3"] as? String
            lblL3.textColor = .black
            vwL3.addSubview(lblL3)
            page.addSubview(vwL3)
            xposition += (widthColum-1)
            
            let vwL4 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: widthColum, height: height))
            vwL4.backgroundColor = .white
            vwL4.layer.borderColor = UIColor.black.cgColor
            vwL4.layer.borderWidth = 1.0
            let lblL4 = UILabel(frame: CGRect(x: 0, y: 0, width: widthColum, height: height))
            lblL4.font = UIFont.systemFont(ofSize: 9)
            lblL4.textAlignment = .center
            lblL4.text = temp["i4"] as? String
            lblL4.textColor = .black
            vwL4.addSubview(lblL4)
            page.addSubview(vwL4)
            xposition += (widthColum-1)
            
            let vwTotla = UIView(frame: CGRect(x: xposition, y: yPosotion, width: 70, height: height))
            vwTotla.backgroundColor = .white
            vwTotla.layer.borderColor = UIColor.black.cgColor
            vwTotla.layer.borderWidth = 1.0
            let lblTotal = UILabel(frame: CGRect(x: 0, y: 0, width: 70, height: height))
            lblTotal.font = UIFont.systemFont(ofSize: 9)
            lblTotal.textAlignment = .center
            lblTotal.text = temp["total"] as? String
            lblTotal.textColor = .black
            vwTotla.addSubview(lblTotal)
            page.addSubview(vwTotla)
            xposition += 69
            
            let vwConnectorJ3 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: 130, height: height))
            vwConnectorJ3.backgroundColor = .white
            vwConnectorJ3.layer.borderColor = UIColor.black.cgColor
            vwConnectorJ3.layer.borderWidth = 1.0
            let lblConnectorJ3 = UILabel(frame: CGRect(x: 0, y: 0, width: 130, height: height))
            lblConnectorJ3.font = UIFont.systemFont(ofSize: 9)
            lblConnectorJ3.textAlignment = .center
            lblConnectorJ3.text = temp["conectorj3"] as? String
            lblConnectorJ3.textColor = .black
            vwConnectorJ3.addSubview(lblConnectorJ3)
            page.addSubview(vwConnectorJ3)
            xposition += 129
            
            yPosotion += (height-1)
        }
        
        yPosotion += 10
    }
    class func positionOfProtection(page: UIView){
        
        let lblTitle2 = UILabel(frame: CGRect(x: 40, y: yPosotion, width: 800, height: 25))
        lblTitle2.font = UIFont.systemFont(ofSize: 10)
        lblTitle2.textAlignment = .left
        lblTitle2.text = "Position of Protection Donuts:"
        lblTitle2.textColor = .black
        page.addSubview(lblTitle2)
        yPosotion += 25
        
        var xposition : Int = 40
        
        let widthColum : Int = 58
        var heightColum : Int = 60

        let vwL1 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: widthColum, height: heightColum))
        vwL1.backgroundColor = .white
        vwL1.layer.borderColor = UIColor.black.cgColor
        vwL1.layer.borderWidth = 1.0
        let lblL1 = UILabel(frame: CGRect(x: 0, y: 0, width: widthColum, height: heightColum))
        lblL1.font = UIFont.boldSystemFont(ofSize: 9)
        lblL1.textAlignment = .center
        lblL1.text = "P1"
        lblL1.textColor = .black
        vwL1.addSubview(lblL1)
        page.addSubview(vwL1)
        xposition += (widthColum-1)
        
        
        let vwL2 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: widthColum, height: heightColum))
        vwL2.backgroundColor = .white
        vwL2.layer.borderColor = UIColor.black.cgColor
        vwL2.layer.borderWidth = 1.0
        let lblL2 = UILabel(frame: CGRect(x: 0, y: 0, width: widthColum, height: heightColum))
        lblL2.font = UIFont.boldSystemFont(ofSize: 9)
        lblL2.textAlignment = .center
        lblL2.text = "P2"
        lblL2.textColor = .black
        vwL2.addSubview(lblL2)
        page.addSubview(vwL2)
        xposition += (widthColum-1)
        
        
        let vwL3 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: widthColum, height: heightColum))
        vwL3.backgroundColor = .white
        vwL3.layer.borderColor = UIColor.black.cgColor
        vwL3.layer.borderWidth = 1.0
        let lblL3 = UILabel(frame: CGRect(x: 0, y: 0, width: widthColum, height: heightColum))
        lblL3.font = UIFont.boldSystemFont(ofSize: 9)
        lblL3.textAlignment = .center
        lblL3.text = "P3"
        lblL3.textColor = .black
        vwL3.addSubview(lblL3)
        page.addSubview(vwL3)
        xposition += (widthColum-1)
        
        
        let vwL4 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: widthColum, height: heightColum))
        vwL4.backgroundColor = .white
        vwL4.layer.borderColor = UIColor.black.cgColor
        vwL4.layer.borderWidth = 1.0
        let lblL4 = UILabel(frame: CGRect(x: 0, y: 0, width: widthColum, height: heightColum))
        lblL4.font = UIFont.boldSystemFont(ofSize: 9)
        lblL4.textAlignment = .center
        lblL4.text = "P4"
        lblL4.textColor = .black
        vwL4.addSubview(lblL4)
        page.addSubview(vwL4)
        xposition += (widthColum-1)
        
        
        let vwL5 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: widthColum, height: heightColum))
        vwL5.backgroundColor = .white
        vwL5.layer.borderColor = UIColor.black.cgColor
        vwL5.layer.borderWidth = 1.0
        let lblL5 = UILabel(frame: CGRect(x: 0, y: 0, width: widthColum, height: heightColum))
        lblL5.font = UIFont.boldSystemFont(ofSize: 9)
        lblL5.textAlignment = .center
        lblL5.text = "P5"
        lblL5.textColor = .black
        vwL5.addSubview(lblL5)
        page.addSubview(vwL5)
        xposition += (widthColum-1)
        
        
        let vwL6 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: widthColum, height: heightColum))
        vwL6.backgroundColor = .white
        vwL6.layer.borderColor = UIColor.black.cgColor
        vwL6.layer.borderWidth = 1.0
        let lblL6 = UILabel(frame: CGRect(x: 0, y: 0, width: widthColum, height: heightColum))
        lblL6.font = UIFont.boldSystemFont(ofSize: 9)
        lblL6.textAlignment = .center
        lblL6.text = "P6"
        lblL6.textColor = .black
        vwL6.addSubview(lblL6)
        page.addSubview(vwL6)
        xposition += (widthColum-1)
        
        
        let vwL7 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: widthColum, height: heightColum))
        vwL7.backgroundColor = .white
        vwL7.layer.borderColor = UIColor.black.cgColor
        vwL7.layer.borderWidth = 1.0
        let lblL7 = UILabel(frame: CGRect(x: 0, y: 0, width: widthColum, height: heightColum))
        lblL7.font = UIFont.boldSystemFont(ofSize: 9)
        lblL7.textAlignment = .center
        lblL7.text = "P7"
        lblL7.textColor = .black
        vwL7.addSubview(lblL7)
        page.addSubview(vwL7)
        xposition += (widthColum-1)
        
        
        let vwL8 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: widthColum, height: heightColum))
        vwL8.backgroundColor = .white
        vwL8.layer.borderColor = UIColor.black.cgColor
        vwL8.layer.borderWidth = 1.0
        let lblL8 = UILabel(frame: CGRect(x: 0, y: 0, width: widthColum, height: heightColum))
        lblL8.font = UIFont.boldSystemFont(ofSize: 9)
        lblL8.textAlignment = .center
        lblL8.text = "P8"
        lblL8.textColor = .black
        vwL8.addSubview(lblL8)
        page.addSubview(vwL8)
        xposition += (widthColum-1)
        
        
        let vwL9 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: widthColum, height: heightColum))
        vwL9.backgroundColor = .white
        vwL9.layer.borderColor = UIColor.black.cgColor
        vwL9.layer.borderWidth = 1.0
        let lblL9 = UILabel(frame: CGRect(x: 0, y: 0, width: widthColum, height: heightColum))
        lblL9.font = UIFont.boldSystemFont(ofSize: 9)
        lblL9.textAlignment = .center
        lblL9.text = "P9"
        lblL9.textColor = .black
        vwL9.addSubview(lblL9)
        page.addSubview(vwL9)
        xposition += (widthColum-1)
        
        
        let vwTotla = UIView(frame: CGRect(x: xposition, y: yPosotion, width: 190, height: 30))
        vwTotla.backgroundColor = .white
        vwTotla.layer.borderColor = UIColor.black.cgColor
        vwTotla.layer.borderWidth = 1.0
        let lblTotal = UILabel(frame: CGRect(x: 0, y: 0, width: 190, height: 30))
        lblTotal.font = UIFont.boldSystemFont(ofSize: 9)
        lblTotal.textAlignment = .center
        lblTotal.text = "Grommet"
        lblTotal.textColor = .black
        vwTotla.addSubview(lblTotal)
        page.addSubview(vwTotla)
        yPosotion += 29
        
        
        let vwConnectorJ6 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: 95, height: 30))
        vwConnectorJ6.backgroundColor = .white
        vwConnectorJ6.layer.borderColor = UIColor.black.cgColor
        vwConnectorJ6.layer.borderWidth = 1.0
        let lblConnectorJ6 = UILabel(frame: CGRect(x: 0, y: 0, width: 95, height: 30))
        lblConnectorJ6.font = UIFont.boldSystemFont(ofSize: 9)
        lblConnectorJ6.textAlignment = .center
        lblConnectorJ6.text = "J6"
        lblConnectorJ6.textColor = .black
        vwConnectorJ6.addSubview(lblConnectorJ6)
        page.addSubview(vwConnectorJ6)
        xposition += 94
        
        let vwConnectorJ3 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: 95, height: 30))
        vwConnectorJ3.backgroundColor = .white
        vwConnectorJ3.layer.borderColor = UIColor.black.cgColor
        vwConnectorJ3.layer.borderWidth = 1.0
        let lblConnectorJ3 = UILabel(frame: CGRect(x: 0, y: 0, width: 95, height: 30))
        lblConnectorJ3.font = UIFont.boldSystemFont(ofSize: 9)
        lblConnectorJ3.textAlignment = .center
        lblConnectorJ3.text = "J3"
        lblConnectorJ3.textColor = .black
        vwConnectorJ3.addSubview(lblConnectorJ3)
        page.addSubview(vwConnectorJ3)
        xposition += 49
        
        
        yPosotion += 29
        heightColum = 40
        
        for (_, obj) in PositionOfProtection.enumerated() {
            
            let temp : NSMutableDictionary = obj as! NSMutableDictionary
            
            var xposition : Int = 40
            
            let vwL1 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: widthColum, height: heightColum))
            vwL1.backgroundColor = .white
            vwL1.layer.borderColor = UIColor.black.cgColor
            vwL1.layer.borderWidth = 1.0
            let lblL1 = UILabel(frame: CGRect(x: 0, y: 0, width: widthColum, height: heightColum))
            lblL1.font = UIFont.systemFont(ofSize: 9)
            lblL1.textAlignment = .center
            lblL1.text = temp["p1"] as? String
            lblL1.textColor = .black
            vwL1.addSubview(lblL1)
            page.addSubview(vwL1)
            xposition += (widthColum-1)
            
            
            let vwL2 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: widthColum, height: heightColum))
            vwL2.backgroundColor = .white
            vwL2.layer.borderColor = UIColor.black.cgColor
            vwL2.layer.borderWidth = 1.0
            let lblL2 = UILabel(frame: CGRect(x: 0, y: 0, width: widthColum, height: heightColum))
            lblL2.font = UIFont.systemFont(ofSize: 9)
            lblL2.textAlignment = .center
            lblL2.text = temp["p2"] as? String
            lblL2.textColor = .black
            vwL2.addSubview(lblL2)
            page.addSubview(vwL2)
            xposition += (widthColum-1)
            
            
            let vwL3 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: widthColum, height: heightColum))
            vwL3.backgroundColor = .white
            vwL3.layer.borderColor = UIColor.black.cgColor
            vwL3.layer.borderWidth = 1.0
            let lblL3 = UILabel(frame: CGRect(x: 0, y: 0, width: widthColum, height: heightColum))
            lblL3.font = UIFont.systemFont(ofSize: 9)
            lblL3.textAlignment = .center
            lblL3.text = temp["p3"] as? String
            lblL3.textColor = .black
            vwL3.addSubview(lblL3)
            page.addSubview(vwL3)
            xposition += (widthColum-1)
            
            
            let vwL4 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: widthColum, height: heightColum))
            vwL4.backgroundColor = .white
            vwL4.layer.borderColor = UIColor.black.cgColor
            vwL4.layer.borderWidth = 1.0
            let lblL4 = UILabel(frame: CGRect(x: 0, y: 0, width: widthColum, height: heightColum))
            lblL4.font = UIFont.systemFont(ofSize: 9)
            lblL4.textAlignment = .center
            lblL4.text = temp["p4"] as? String
            lblL4.textColor = .black
            vwL4.addSubview(lblL4)
            page.addSubview(vwL4)
            xposition += (widthColum-1)
            
            
            let vwL5 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: widthColum, height: heightColum))
            vwL5.backgroundColor = .white
            vwL5.layer.borderColor = UIColor.black.cgColor
            vwL5.layer.borderWidth = 1.0
            let lblL5 = UILabel(frame: CGRect(x: 0, y: 0, width: widthColum, height: heightColum))
            lblL5.font = UIFont.systemFont(ofSize: 9)
            lblL5.textAlignment = .center
            lblL5.text = temp["p5"] as? String
            lblL5.textColor = .black
            vwL5.addSubview(lblL5)
            page.addSubview(vwL5)
            xposition += (widthColum-1)
            
            
            let vwL6 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: widthColum, height: heightColum))
            vwL6.backgroundColor = .white
            vwL6.layer.borderColor = UIColor.black.cgColor
            vwL6.layer.borderWidth = 1.0
            let lblL6 = UILabel(frame: CGRect(x: 0, y: 0, width: widthColum, height: heightColum))
            lblL6.font = UIFont.systemFont(ofSize: 9)
            lblL6.textAlignment = .center
            lblL6.text = temp["p6"] as? String
            lblL6.textColor = .black
            vwL6.addSubview(lblL6)
            page.addSubview(vwL6)
            xposition += (widthColum-1)
            
            
            let vwL7 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: widthColum, height: heightColum))
            vwL7.backgroundColor = .white
            vwL7.layer.borderColor = UIColor.black.cgColor
            vwL7.layer.borderWidth = 1.0
            let lblL7 = UILabel(frame: CGRect(x: 0, y: 0, width: widthColum, height: heightColum))
            lblL7.font = UIFont.systemFont(ofSize: 9)
            lblL7.textAlignment = .center
            lblL7.text = temp["p7"] as? String
            lblL7.textColor = .black
            vwL7.addSubview(lblL7)
            page.addSubview(vwL7)
            xposition += (widthColum-1)
            
            
            let vwL8 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: widthColum, height: heightColum))
            vwL8.backgroundColor = .white
            vwL8.layer.borderColor = UIColor.black.cgColor
            vwL8.layer.borderWidth = 1.0
            let lblL8 = UILabel(frame: CGRect(x: 0, y: 0, width: widthColum, height: heightColum))
            lblL8.font = UIFont.systemFont(ofSize: 9)
            lblL8.textAlignment = .center
            lblL8.text = temp["p8"] as? String
            lblL8.textColor = .black
            vwL8.addSubview(lblL8)
            page.addSubview(vwL8)
            xposition += (widthColum-1)
            
            
            let vwL9 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: widthColum, height: heightColum))
            vwL9.backgroundColor = .white
            vwL9.layer.borderColor = UIColor.black.cgColor
            vwL9.layer.borderWidth = 1.0
            let lblL9 = UILabel(frame: CGRect(x: 0, y: 0, width: widthColum, height: heightColum))
            lblL9.font = UIFont.systemFont(ofSize: 9)
            lblL9.textAlignment = .center
            lblL9.text = temp["p9"] as? String
            lblL9.textColor = .black
            vwL9.addSubview(lblL9)
            page.addSubview(vwL9)
            xposition += (widthColum-1)
            
            
            let vwConnectorJ6 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: 95, height: heightColum))
            vwConnectorJ6.backgroundColor = .white
            vwConnectorJ6.layer.borderColor = UIColor.black.cgColor
            vwConnectorJ6.layer.borderWidth = 1.0
            let lblConnectorJ6 = UILabel(frame: CGRect(x: 0, y: 0, width: 95, height: heightColum))
            lblConnectorJ6.font = UIFont.systemFont(ofSize: 9)
            lblConnectorJ6.textAlignment = .center
            lblConnectorJ6.text = temp["j6"] as? String
            lblConnectorJ6.textColor = .black
            vwConnectorJ6.addSubview(lblConnectorJ6)
            page.addSubview(vwConnectorJ6)
            xposition += 94
            
            let vwConnectorJ3 = UIView(frame: CGRect(x: xposition, y: yPosotion, width: 95, height: heightColum))
            vwConnectorJ3.backgroundColor = .white
            vwConnectorJ3.layer.borderColor = UIColor.black.cgColor
            vwConnectorJ3.layer.borderWidth = 1.0
            let lblConnectorJ3 = UILabel(frame: CGRect(x: 0, y: 0, width: 95, height: heightColum))
            lblConnectorJ3.font = UIFont.systemFont(ofSize: 9)
            lblConnectorJ3.textAlignment = .center
            lblConnectorJ3.text = temp["j3"] as? String
            lblConnectorJ3.textColor = .black
            vwConnectorJ3.addSubview(lblConnectorJ3)
            page.addSubview(vwConnectorJ3)
            
            yPosotion += 39
        }
        
        yPosotion += 30
    }
    
    //Page 2
    class func CheckList(page: UIView){
        
        yPosotion += 20

        let lblTitle = UILabel(frame: CGRect(x: 40, y: yPosotion, width: 800, height: 25))
        lblTitle.font = UIFont.boldSystemFont(ofSize: 12)
        lblTitle.textAlignment = .left
        lblTitle.text = "2. Checklist, Static Inspection"
        lblTitle.textColor = .black
        page.addSubview(lblTitle)
        yPosotion += 25
        
        
        var xposition : Int = 40
        
        let vwNoBox = UIView(frame: CGRect(x: xposition, y: yPosotion, width: 50, height: 40))
        vwNoBox.backgroundColor = .white
        vwNoBox.layer.borderColor = UIColor.black.cgColor
        vwNoBox.layer.borderWidth = 1.0
        
        let lblNoBox = UILabel(frame: CGRect(x: 5, y: 0, width: 50, height: 40))
        lblNoBox.font = UIFont.boldSystemFont(ofSize: 10)
        lblNoBox.textAlignment = .left
        lblNoBox.text = "No."
        lblNoBox.textColor = .black
        vwNoBox.addSubview(lblNoBox)
        page.addSubview(vwNoBox)
        xposition += 49
        
        let vwInpectionPointBox = UIView(frame: CGRect(x: xposition, y: yPosotion, width: 300, height: 40))
        vwInpectionPointBox.backgroundColor = .white
        vwInpectionPointBox.layer.borderColor = UIColor.black.cgColor
        vwInpectionPointBox.layer.borderWidth = 1.0
        
        let lblInpectionPoint = UILabel(frame: CGRect(x: 5, y: 0, width: 300, height: 40))
        lblInpectionPoint.font = UIFont.boldSystemFont(ofSize: 10)
        lblInpectionPoint.textAlignment = .left
        lblInpectionPoint.text = "Inspection points"
        lblInpectionPoint.textColor = .black
        vwInpectionPointBox.addSubview(lblInpectionPoint)
        page.addSubview(vwInpectionPointBox)
        xposition += 299

        
        let vwOkBox = UIView(frame: CGRect(x: xposition, y: yPosotion, width: 80, height: 40))
        vwOkBox.backgroundColor = .white
        vwOkBox.layer.borderColor = UIColor.black.cgColor
        vwOkBox.layer.borderWidth = 1.0
        
        let lblOk = UILabel(frame: CGRect(x: 5, y: 0, width: 80, height: 40))
        lblOk.font = UIFont.boldSystemFont(ofSize: 10)
        lblOk.textAlignment = .left
        lblOk.text = "Ok"
        lblOk.textColor = .black
        vwOkBox.addSubview(lblOk)
        page.addSubview(vwOkBox)
        xposition += 79
        
        
        let vwNotOkBox = UIView(frame: CGRect(x: xposition, y: yPosotion, width: 80, height: 40))
        vwNotOkBox.backgroundColor = .white
        vwNotOkBox.layer.borderColor = UIColor.black.cgColor
        vwNotOkBox.layer.borderWidth = 1.0
        
        let lblNotOk = UILabel(frame: CGRect(x: 5, y: 0, width: 80, height: 40))
        lblNotOk.font = UIFont.boldSystemFont(ofSize: 10)
        lblNotOk.textAlignment = .left
        lblNotOk.text = "Not Ok"
        lblNotOk.textColor = .black
        vwNotOkBox.addSubview(lblNotOk)
        page.addSubview(vwNotOkBox)
        xposition += 79
        
        
        let vwCommentBox = UIView(frame: CGRect(x: xposition, y: yPosotion, width: 202, height: 40))
        vwCommentBox.backgroundColor = .white
        vwCommentBox.layer.borderColor = UIColor.black.cgColor
        vwCommentBox.layer.borderWidth = 1.0
        
        let lblComment = UILabel(frame: CGRect(x: 5, y: 0, width: 120, height: 40))
        lblComment.font = UIFont.boldSystemFont(ofSize: 10)
        lblComment.textAlignment = .left
        lblComment.text = "Comment"
        lblComment.textColor = .black
        vwCommentBox.addSubview(lblComment)
        page.addSubview(vwCommentBox)
        xposition += 79
        
        yPosotion += 39
        
        for (index, obj) in totalCheckList.enumerated() {
            
            let temp : NSMutableDictionary = obj as! NSMutableDictionary
            
            
            
            let FinalString : String = temp["title"] as! String
            
            let vwInpectionPointBoxNew = UIView(frame: CGRect(x: 50, y: 0, width: 300, height: 50))
            vwInpectionPointBoxNew.backgroundColor = .white
            vwInpectionPointBoxNew.layer.borderColor = UIColor.black.cgColor
            vwInpectionPointBoxNew.layer.borderWidth = 1.0
            
            let lblInpectionPointNew = UILabel(frame: CGRect(x: 5, y: 0, width: 200, height: 50))
            lblInpectionPointNew.font = UIFont.systemFont(ofSize: 10)
            lblInpectionPointNew.textAlignment = .left
            lblInpectionPointNew.text = "\(FinalString)"
            lblInpectionPointNew.textColor = .black
            lblInpectionPointNew.numberOfLines = 0
            lblInpectionPointNew.sizeToFit()
            //lblInpectionPointNew.sizeThatFits(CGSize(width: 300, height: CGFloat.greatestFiniteMagnitude))
            vwInpectionPointBoxNew.addSubview(lblInpectionPointNew)
            page.addSubview(vwInpectionPointBoxNew)

            
            
            let StringComment : String = temp["comment"] as! String
            let vwCommentBoxNew = UIView(frame: CGRect(x: xposition, y: 0, width: 202, height: 50))
            vwCommentBoxNew.backgroundColor = .white
            vwCommentBoxNew.layer.borderColor = UIColor.black.cgColor
            vwCommentBoxNew.layer.borderWidth = 1.0
            
            let lblCommentNew = UILabel(frame: CGRect(x: 5, y: 0, width: 120, height: 50))
            lblCommentNew.font = UIFont.systemFont(ofSize: 10)
            lblCommentNew.textAlignment = .left
            lblCommentNew.text = "\(StringComment)"
            lblCommentNew.textColor = .black
            lblCommentNew.numberOfLines = 0
            lblCommentNew.sizeToFit()
            //lblCommentNew.sizeThatFits(CGSize(width: 202, height: CGFloat.greatestFiniteMagnitude))
            vwCommentBoxNew.addSubview(lblCommentNew)
            page.addSubview(vwCommentBoxNew)

            
            var height : CGFloat = 0.0
            if lblInpectionPointNew.frame.size.height > lblComment.frame.size.height{
                height = lblInpectionPointNew.frame.size.height
            }else{
                height = lblComment.frame.size.height
            }
            
            
            
            var xpositionNew : Int = 40

            
            
            
            // No Box
            let vwNoBox = UIView(frame: CGRect(x: xpositionNew, y: yPosotion, width: 50, height: Int(height)))
            vwNoBox.backgroundColor = .white
            vwNoBox.layer.borderColor = UIColor.black.cgColor
            vwNoBox.layer.borderWidth = 1.0
            let lblNoBox = UILabel(frame: CGRect(x: 5, y: 0, width: 50, height: Int(height)))
            lblNoBox.font = UIFont.boldSystemFont(ofSize: 10)
            lblNoBox.textAlignment = .left
            lblNoBox.text = "\(index+1)"
            lblNoBox.textColor = .black
            vwNoBox.addSubview(lblNoBox)
            page.addSubview(vwNoBox)
            xpositionNew += 49
            
            //Inpection Point
            vwInpectionPointBoxNew.frame = CGRect(x: xpositionNew, y: yPosotion, width: 300, height: Int(height))
            lblInpectionPointNew.frame = CGRect(x: 5, y: 0, width: 290, height: Int(height))
            xpositionNew += 299

            
            var statusString : Int = -1
            let okStatus : Int = temp["ok"] as! Int
            if okStatus == 1{
                statusString = 0
            }
            let NotokStatus : Int = temp["notok"] as! Int
            if NotokStatus == 1{
                statusString = 1
            }
            
            
            let vwOkNew = UIView(frame: CGRect(x: xpositionNew, y: yPosotion, width: 80, height: Int(height)))
            vwOkNew.backgroundColor = .white
            vwOkNew.layer.borderColor = UIColor.black.cgColor
            vwOkNew.layer.borderWidth = 1.0
            let lblOkNew = UILabel(frame: CGRect(x: 5, y: 0, width: 80, height: Int(height)))
            lblOkNew.font = UIFont.boldSystemFont(ofSize: 10)
            lblOkNew.textAlignment = .center
            if statusString == 0{
                lblOkNew.text = "√"
            }
            lblOkNew.textColor = .black
            vwOkNew.addSubview(lblOkNew)
            page.addSubview(vwOkNew)
            xpositionNew += 79
            
            
            let vwNotOkNew = UIView(frame: CGRect(x: xpositionNew, y: yPosotion, width: 80, height: Int(height)))
            vwNotOkNew.backgroundColor = .white
            vwNotOkNew.layer.borderColor = UIColor.black.cgColor
            vwNotOkNew.layer.borderWidth = 1.0
            let lblNotOkNew = UILabel(frame: CGRect(x: 5, y: 0, width: 80, height: Int(height)))
            lblNotOkNew.font = UIFont.boldSystemFont(ofSize: 10)
            lblNotOkNew.textAlignment = .center
            if statusString == 1{
                lblOkNew.text = "√"
            }
            lblNotOkNew.textColor = .black
            vwNotOkNew.addSubview(lblNotOkNew)
            page.addSubview(vwNotOkNew)
            xpositionNew += 79

            
            vwCommentBoxNew.frame = CGRect(x: xpositionNew, y: yPosotion, width: 202, height: Int(height))
            lblCommentNew.frame = CGRect(x: 5, y: 0, width: 202, height: Int(height))

            
            yPosotion += Int(height-1)
        }
        
        yPosotion += 10
    }
    class func CheckList2(page: UIView){
        
        yPosotion += 20
        
        let lblTitle = UILabel(frame: CGRect(x: 40, y: yPosotion, width: 800, height: 25))
        lblTitle.font = UIFont.boldSystemFont(ofSize: 10)
        lblTitle.textAlignment = .left
        lblTitle.text = "3. Checklist,Dynamic Inspection"
        lblTitle.textColor = .black
        page.addSubview(lblTitle)
        yPosotion += 25
        
        
        var xposition : Int = 40
        
        let vwNoBox = UIView(frame: CGRect(x: xposition, y: yPosotion, width: 50, height: 40))
        vwNoBox.backgroundColor = .white
        vwNoBox.layer.borderColor = UIColor.black.cgColor
        vwNoBox.layer.borderWidth = 1.0
        
        let lblNoBox = UILabel(frame: CGRect(x: 5, y: 0, width: 50, height: 40))
        lblNoBox.font = UIFont.boldSystemFont(ofSize: 10)
        lblNoBox.textAlignment = .left
        lblNoBox.text = "No."
        lblNoBox.textColor = .black
        vwNoBox.addSubview(lblNoBox)
        page.addSubview(vwNoBox)
        xposition += 49
        
        let vwInpectionPointBox = UIView(frame: CGRect(x: xposition, y: yPosotion, width: 300, height: 40))
        vwInpectionPointBox.backgroundColor = .white
        vwInpectionPointBox.layer.borderColor = UIColor.black.cgColor
        vwInpectionPointBox.layer.borderWidth = 1.0
        
        let lblInpectionPoint = UILabel(frame: CGRect(x: 5, y: 0, width: 290, height: 40))
        lblInpectionPoint.font = UIFont.boldSystemFont(ofSize: 10)
        lblInpectionPoint.textAlignment = .left
        lblInpectionPoint.text = "Inspection points"
        lblInpectionPoint.textColor = .black
        vwInpectionPointBox.addSubview(lblInpectionPoint)
        page.addSubview(vwInpectionPointBox)
        xposition += 299
        
        
        let vwOkBox = UIView(frame: CGRect(x: xposition, y: yPosotion, width: 80, height: 40))
        vwOkBox.backgroundColor = .white
        vwOkBox.layer.borderColor = UIColor.black.cgColor
        vwOkBox.layer.borderWidth = 1.0
        
        let lblOk = UILabel(frame: CGRect(x: 5, y: 0, width: 80, height: 40))
        lblOk.font = UIFont.boldSystemFont(ofSize: 10)
        lblOk.textAlignment = .left
        lblOk.text = "Ok"
        lblOk.textColor = .black
        vwOkBox.addSubview(lblOk)
        page.addSubview(vwOkBox)
        xposition += 79
        
        
        let vwNotOkBox = UIView(frame: CGRect(x: xposition, y: yPosotion, width: 80, height: 40))
        vwNotOkBox.backgroundColor = .white
        vwNotOkBox.layer.borderColor = UIColor.black.cgColor
        vwNotOkBox.layer.borderWidth = 1.0
        
        let lblNotOk = UILabel(frame: CGRect(x: 5, y: 0, width: 80, height: 40))
        lblNotOk.font = UIFont.boldSystemFont(ofSize: 10)
        lblNotOk.textAlignment = .left
        lblNotOk.text = "Not Ok"
        lblNotOk.textColor = .black
        vwNotOkBox.addSubview(lblNotOk)
        page.addSubview(vwNotOkBox)
        xposition += 79
        
        
        let vwCommentBox = UIView(frame: CGRect(x: xposition, y: yPosotion, width: 202, height: 40))
        vwCommentBox.backgroundColor = .white
        vwCommentBox.layer.borderColor = UIColor.black.cgColor
        vwCommentBox.layer.borderWidth = 1.0
        
        let lblComment = UILabel(frame: CGRect(x: 5, y: 0, width: 120, height: 40))
        lblComment.font = UIFont.boldSystemFont(ofSize: 10)
        lblComment.textAlignment = .left
        lblComment.text = "Comment"
        lblComment.textColor = .black
        vwCommentBox.addSubview(lblComment)
        page.addSubview(vwCommentBox)
        xposition += 79
        
        yPosotion += 39
        
        for (index, obj) in totalCheckList2.enumerated() {
            
            let temp : NSMutableDictionary = obj as! NSMutableDictionary
            
            let FinalString : String = temp["title"] as! String
            
            let vwInpectionPointBoxNew = UIView(frame: CGRect(x: 80, y: 0, width: 300, height: 40))
            vwInpectionPointBoxNew.backgroundColor = .white
            vwInpectionPointBoxNew.layer.borderColor = UIColor.black.cgColor
            vwInpectionPointBoxNew.layer.borderWidth = 1.0
            
            let lblInpectionPointNew = UILabel(frame: CGRect(x: 5, y: 0, width: 290, height: 40))
            lblInpectionPointNew.font = UIFont.systemFont(ofSize: 10)
            lblInpectionPointNew.textAlignment = .left
            lblInpectionPointNew.text = "\(FinalString)"
            lblInpectionPointNew.textColor = .black
            lblInpectionPointNew.numberOfLines = 0
            lblInpectionPointNew.sizeToFit()
            //lblInpectionPointNew.sizeThatFits(CGSize(width: 300, height: CGFloat.greatestFiniteMagnitude))
            vwInpectionPointBoxNew.addSubview(lblInpectionPointNew)
            page.addSubview(vwInpectionPointBoxNew)
            
            
            
            let StringComment : String = temp["comment"] as! String
            let vwCommentBoxNew = UIView(frame: CGRect(x: xposition, y: 0, width: 202, height: 40))
            vwCommentBoxNew.backgroundColor = .white
            vwCommentBoxNew.layer.borderColor = UIColor.black.cgColor
            vwCommentBoxNew.layer.borderWidth = 1.0
            
            let lblCommentNew = UILabel(frame: CGRect(x: 5, y: 0, width: 120, height: 40))
            lblCommentNew.font = UIFont.systemFont(ofSize: 10)
            lblCommentNew.textAlignment = .left
            lblCommentNew.text = "\(StringComment)"
            lblCommentNew.textColor = .black
            lblCommentNew.numberOfLines = 0
            lblCommentNew.sizeToFit()
            //lblCommentNew.sizeThatFits(CGSize(width: 202, height: CGFloat.greatestFiniteMagnitude))
            vwCommentBoxNew.addSubview(lblCommentNew)
            page.addSubview(vwCommentBoxNew)
            
            var height : CGFloat = 0.0
            if lblInpectionPointNew.frame.size.height > lblComment.frame.size.height{
                height = lblInpectionPointNew.frame.size.height
            }else{
                height = lblComment.frame.size.height
            }
            
            
            var xpositionNew : Int = 40
            
            let vwNoBox = UIView(frame: CGRect(x: xpositionNew, y: yPosotion, width: 50, height: Int(height)))
            vwNoBox.backgroundColor = .white
            vwNoBox.layer.borderColor = UIColor.black.cgColor
            vwNoBox.layer.borderWidth = 1.0
            let lblNoBox = UILabel(frame: CGRect(x: 5, y: 0, width: 50, height: Int(height)))
            lblNoBox.font = UIFont.systemFont(ofSize: 10)
            lblNoBox.textAlignment = .left
            lblNoBox.text = "\(index+1)"
            lblNoBox.textColor = .black
            vwNoBox.addSubview(lblNoBox)
            page.addSubview(vwNoBox)
            
            xpositionNew += 49
            
            
            lblNoBox.frame = CGRect(x: 5, y: 0, width: 50, height: Int(height))
            vwInpectionPointBoxNew.frame = CGRect(x: xpositionNew, y: yPosotion, width: 300, height: Int(height))
            lblInpectionPointNew.frame = CGRect(x: 5, y: 0, width: 290, height: Int(height))
            
            xpositionNew += 299
            
            
            var statusString : Int = -1
            let okStatus : Int = temp["ok"] as! Int
            if okStatus == 1{
                statusString = 0
            }
            let NotokStatus : Int = temp["notok"] as! Int
            if NotokStatus == 1{
                statusString = 1
            }
            
            
            let vwOkNew = UIView(frame: CGRect(x: xpositionNew, y: yPosotion, width: 80, height: Int(height)))
            vwOkNew.backgroundColor = .white
            vwOkNew.layer.borderColor = UIColor.black.cgColor
            vwOkNew.layer.borderWidth = 1.0
            let lblOkNew = UILabel(frame: CGRect(x: 5, y: 0, width: 80, height: Int(height)))
            lblOkNew.font = UIFont.systemFont(ofSize: 10)
            lblOkNew.textAlignment = .center
            if statusString == 0{
                lblOkNew.text = "√"
            }
            lblOkNew.textColor = .black
            vwOkNew.addSubview(lblOkNew)
            page.addSubview(vwOkNew)
            xpositionNew += 79
            
            
            let vwNotOkNew = UIView(frame: CGRect(x: xpositionNew, y: yPosotion, width: 80, height: Int(height)))
            vwNotOkNew.backgroundColor = .white
            vwNotOkNew.layer.borderColor = UIColor.black.cgColor
            vwNotOkNew.layer.borderWidth = 1.0
            let lblNotOkNew = UILabel(frame: CGRect(x: 5, y: 0, width: 80, height: Int(height)))
            lblNotOkNew.font = UIFont.systemFont(ofSize: 10)
            lblNotOkNew.textAlignment = .center
            if statusString == 1{
                lblOkNew.text = "√"
            }
            lblNotOkNew.textColor = .black
            vwNotOkNew.addSubview(lblNotOkNew)
            page.addSubview(vwNotOkNew)
            xpositionNew += 79
            
            
            vwCommentBoxNew.frame = CGRect(x: xpositionNew, y: yPosotion, width: 202, height: Int(height))
            lblCommentNew.frame = CGRect(x: 5, y: 0, width: 202, height: Int(height))
            
            
            yPosotion += Int(height-1)
        }
        
        yPosotion += 10
    }
    
    //Page 3
    class func actImageAdding(page: UIView){
        
        yPosotion += 5
        
        let lblTitle = UILabel(frame: CGRect(x: 40, y: yPosotion, width: Int(page.frame.size.width-80), height: 25))
        lblTitle.font = UIFont.boldSystemFont(ofSize: 10)
        lblTitle.textAlignment = .left
        lblTitle.text = "Photo-documentation position bracket axis 6"
        lblTitle.textColor = .black
        page.addSubview(lblTitle)
        yPosotion += 25
        
        
        let xPosition : Int = 40
        let width : Int = 280
        let space : Int = 10

        
        
        let lblTitleImage1 = UILabel(frame: CGRect(x: xPosition, y: yPosotion, width: width, height: width))
        lblTitleImage1.font = UIFont.boldSystemFont(ofSize: 22)
        lblTitleImage1.textAlignment = .center
        lblTitleImage1.text = "photo 1"
        lblTitleImage1.textColor = .black
        page.addSubview(lblTitleImage1)
        
        var imageView1 : UIImageView
        imageView1  = UIImageView(frame:CGRect(x: xPosition, y: yPosotion, width: width, height: width))
        imageView1.contentMode = .scaleAspectFill
        if image1 != nil{
            imageView1.image = image1
        }
        imageView1.layer.borderWidth = 1
        imageView1.layer.borderColor = UIColor.black.cgColor
        page.addSubview(imageView1)
        
        
        //Image 2
        let lblTitleImage2 = UILabel(frame: CGRect(x: xPosition+width+space+40, y: yPosotion, width: width, height: width))
        lblTitleImage2.font = UIFont.boldSystemFont(ofSize: 22)
        lblTitleImage2.textAlignment = .center
        lblTitleImage2.text = "photo 2"
        lblTitleImage2.textColor = .black
        page.addSubview(lblTitleImage2)
        
        var imageView2 : UIImageView
        imageView2  = UIImageView(frame:CGRect(x: xPosition+width+space+40, y: yPosotion, width: width, height: width))
        imageView2.contentMode = .scaleAspectFill
        if image2 != nil{
            imageView2.image = image2
        }
        imageView2.layer.borderWidth = 1
        imageView2.layer.borderColor = UIColor.black.cgColor
        page.addSubview(imageView2)
        
        yPosotion = yPosotion + width + space
        
        //Image 3
        let lblTitleImage3 = UILabel(frame: CGRect(x: xPosition, y: yPosotion, width: width, height: width))
        lblTitleImage3.font = UIFont.boldSystemFont(ofSize: 22)
        lblTitleImage3.textAlignment = .center
        lblTitleImage3.text = "photo 3"
        lblTitleImage3.textColor = .black
        page.addSubview(lblTitleImage3)
        
        var imageView3 : UIImageView
        imageView3  = UIImageView(frame:CGRect(x: xPosition, y: yPosotion, width: width, height: width))
        imageView3.contentMode = .scaleAspectFill
        if image3 != nil{
            imageView3.image = image3
        }
        imageView3.layer.borderWidth = 1
        imageView3.layer.borderColor = UIColor.black.cgColor
        page.addSubview(imageView3)
        
        
        //Image 4
        let lblTitleImage4 = UILabel(frame: CGRect(x: xPosition+width+space+40, y: yPosotion, width: width, height: width))
        lblTitleImage4.font = UIFont.boldSystemFont(ofSize: 22)
        lblTitleImage4.textAlignment = .center
        lblTitleImage4.text = "photo 4"
        lblTitleImage4.textColor = .black
        page.addSubview(lblTitleImage4)
        
        var imageView4 : UIImageView
        imageView4  = UIImageView(frame:CGRect(x: xPosition+width+space+40, y: yPosotion, width: width, height: width))
        imageView4.contentMode = .scaleAspectFill
        if image4 != nil{
            imageView4.image = image4
        }
        imageView4.layer.borderWidth = 1
        imageView4.layer.borderColor = UIColor.black.cgColor
        page.addSubview(imageView4)
        yPosotion = yPosotion + width + space
        
        yPosotion += 5

        
        let vwRemark = UIView(frame: CGRect(x: 40, y: yPosotion, width: Int(page.frame.size.width-80), height: 20))
        vwRemark.backgroundColor = .white
        vwRemark.layer.borderColor = UIColor.black.cgColor
        vwRemark.layer.borderWidth = 1.0
        
        let lblRemark = UILabel(frame: CGRect(x: 5, y: 0, width: Int(vwRemark.frame.size.width-10), height: 20))
        lblRemark.font = UIFont.boldSystemFont(ofSize: 10)
        lblRemark.textAlignment = .left
        lblRemark.text = "Remark"
        lblRemark.textColor = .black
        vwRemark.addSubview(lblRemark)
        page.addSubview(vwRemark)
        
        yPosotion += 19
        
        var innerYposition : Int = yPosotion
        for _ in 0...7{
            
            let vwRemarkInner = UIView(frame: CGRect(x: 40, y: innerYposition, width: Int(page.frame.size.width-80), height: 30))
            vwRemarkInner.backgroundColor = .white
            vwRemarkInner.layer.borderColor = UIColor.black.cgColor
            vwRemarkInner.layer.borderWidth = 1.0
            page.addSubview(vwRemarkInner)

            innerYposition += 29
        }
        
        
        yPosotion += 5
        
        let lbl = UILabel(frame: CGRect(x: 45, y: yPosotion, width: Int(page.frame.size.width-90), height: 170))
        lbl.font = UIFont.systemFont(ofSize: 10)
        lbl.textAlignment = .left
        //lbl.text = "\(strRemark1 ?? "")"
        
        let str = "\(strRemark1 ?? "")"
        
        let attributedString = NSMutableAttributedString(string: str)
        // *** Create instance of `NSMutableParagraphStyle`
        let paragraphStyle = NSMutableParagraphStyle()
        // *** set LineSpacing property in points ***
        paragraphStyle.lineSpacing = 20 // Whatever line spacing you want in points
        // *** Apply attribute to string ***
        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, attributedString.length))
        // *** Set Attributed String to your label ***
        lbl.attributedText = attributedString
        
        lbl.numberOfLines = 8
        lbl.textColor = .black
        lbl.sizeToFit()
        page.addSubview(lbl)
        
        yPosotion += innerYposition
        
        yPosotion += 50
    }
    
    //Page 4
    class func actImageAdding2(page: UIView){
        
        yPosotion += 5
        
        let lblTitle = UILabel(frame: CGRect(x: 40, y: yPosotion, width: Int(page.frame.size.width-80), height: 25))
        lblTitle.font = UIFont.boldSystemFont(ofSize: 10)
        lblTitle.textAlignment = .left
        lblTitle.text = "Detailed photos of damages/abnormalities"
        lblTitle.textColor = .black
        page.addSubview(lblTitle)
        yPosotion += 25
        
        
        let xPosition : Int = 40
        let width : Int = 280
        let space : Int = 10
        
        
        
        let lblTitleImage1 = UILabel(frame: CGRect(x: xPosition, y: yPosotion, width: width, height: width))
        lblTitleImage1.font = UIFont.boldSystemFont(ofSize: 22)
        lblTitleImage1.textAlignment = .center
        lblTitleImage1.text = "photo 5"
        lblTitleImage1.textColor = .black
        page.addSubview(lblTitleImage1)
        
        var imageView1 : UIImageView
        imageView1  = UIImageView(frame:CGRect(x: xPosition, y: yPosotion, width: width, height: width))
        imageView1.contentMode = .scaleAspectFill
        if image21 != nil{
            imageView1.image = image21
        }
        imageView1.layer.borderWidth = 1
        imageView1.layer.borderColor = UIColor.black.cgColor
        page.addSubview(imageView1)
        
        
        //Image 2
        let lblTitleImage2 = UILabel(frame: CGRect(x: xPosition+width+space+40, y: yPosotion, width: width, height: width))
        lblTitleImage2.font = UIFont.boldSystemFont(ofSize: 22)
        lblTitleImage2.textAlignment = .center
        lblTitleImage2.text = "photo 6"
        lblTitleImage2.textColor = .black
        page.addSubview(lblTitleImage2)
        
        var imageView2 : UIImageView
        imageView2  = UIImageView(frame:CGRect(x: xPosition+width+space+40, y: yPosotion, width: width, height: width))
        imageView2.contentMode = .scaleAspectFill
        if image22 != nil{
            imageView2.image = image22
        }
        imageView2.layer.borderWidth = 1
        imageView2.layer.borderColor = UIColor.black.cgColor
        page.addSubview(imageView2)
        
        yPosotion = yPosotion + width + space
        
        //Image 3
        let lblTitleImage3 = UILabel(frame: CGRect(x: xPosition, y: yPosotion, width: width, height: width))
        lblTitleImage3.font = UIFont.boldSystemFont(ofSize: 22)
        lblTitleImage3.textAlignment = .center
        lblTitleImage3.text = "photo 7"
        lblTitleImage3.textColor = .black
        page.addSubview(lblTitleImage3)
        
        var imageView3 : UIImageView
        imageView3  = UIImageView(frame:CGRect(x: xPosition, y: yPosotion, width: width, height: width))
        imageView3.contentMode = .scaleAspectFill
        if image23 != nil{
            imageView3.image = image23
        }
        imageView3.layer.borderWidth = 1
        imageView3.layer.borderColor = UIColor.black.cgColor
        page.addSubview(imageView3)
        
        
        //Image 4
        let lblTitleImage4 = UILabel(frame: CGRect(x: xPosition+width+space+40, y: yPosotion, width: width, height: width))
        lblTitleImage4.font = UIFont.boldSystemFont(ofSize: 22)
        lblTitleImage4.textAlignment = .center
        lblTitleImage4.text = "photo 8"
        lblTitleImage4.textColor = .black
        page.addSubview(lblTitleImage4)
        
        var imageView4 : UIImageView
        imageView4  = UIImageView(frame:CGRect(x: xPosition+width+space+40, y: yPosotion, width: width, height: width))
        imageView4.contentMode = .scaleAspectFill
        if image24 != nil{
            imageView4.image = image24
        }
        imageView4.layer.borderWidth = 1
        imageView4.layer.borderColor = UIColor.black.cgColor
        page.addSubview(imageView4)
        yPosotion = yPosotion + width + space
        
        yPosotion += 5
        
        
        let vwRemark = UIView(frame: CGRect(x: 40, y: yPosotion, width: Int(page.frame.size.width-80), height: 20))
        vwRemark.backgroundColor = .white
        vwRemark.layer.borderColor = UIColor.black.cgColor
        vwRemark.layer.borderWidth = 1.0
        
        let lblRemark = UILabel(frame: CGRect(x: 5, y: 0, width: Int(vwRemark.frame.size.width-10), height: 20))
        lblRemark.font = UIFont.boldSystemFont(ofSize: 10)
        lblRemark.textAlignment = .left
        lblRemark.text = "Remark"
        lblRemark.textColor = .black
        vwRemark.addSubview(lblRemark)
        page.addSubview(vwRemark)
        
        yPosotion += 19
        
        var innerYposition : Int = yPosotion
        for _ in 0...7{
            
            let vwRemarkInner = UIView(frame: CGRect(x: 40, y: innerYposition, width: Int(page.frame.size.width-80), height: 30))
            vwRemarkInner.backgroundColor = .white
            vwRemarkInner.layer.borderColor = UIColor.black.cgColor
            vwRemarkInner.layer.borderWidth = 1.0
            page.addSubview(vwRemarkInner)
            
            innerYposition += 29
        }
        
        
        yPosotion += 5
        
        let lbl = UILabel(frame: CGRect(x: 45, y: yPosotion, width: Int(page.frame.size.width-90), height: 170))
        lbl.font = UIFont.systemFont(ofSize: 10)
        lbl.textAlignment = .left
        
        let str = "\(strRemark21 ?? "")"
        
        let attributedString = NSMutableAttributedString(string: str)
        // *** Create instance of `NSMutableParagraphStyle`
        let paragraphStyle = NSMutableParagraphStyle()
        // *** set LineSpacing property in points ***
        paragraphStyle.lineSpacing = 20 // Whatever line spacing you want in points
        // *** Apply attribute to string ***
        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, attributedString.length))
        // *** Set Attributed String to your label ***
        lbl.attributedText = attributedString
        
        lbl.numberOfLines = 8
        lbl.textColor = .black
        lbl.sizeToFit()
        page.addSubview(lbl)
        
        yPosotion += innerYposition
        
        yPosotion += 50
    }
    
    //Page 5
    class func CheckList3(page: UIView){
        
        yPosotion += 50
        
        
        var xposition : Int = 532
        
        let vwInpectionPointBox = UIView(frame: CGRect(x: xposition, y: yPosotion, width: 60, height: 40))
        vwInpectionPointBox.backgroundColor = .white
        page.addSubview(vwInpectionPointBox)
        xposition += 60
        
        
        let vwOkBox = UIView(frame: CGRect(x: xposition, y: yPosotion, width: 80, height: 40))
        vwOkBox.backgroundColor = .white
        vwOkBox.layer.borderColor = UIColor.black.cgColor
        vwOkBox.layer.borderWidth = 1.0
        
        let lblOk = UILabel(frame: CGRect(x: 5, y: 0, width: 80, height: 40))
        lblOk.font = UIFont.boldSystemFont(ofSize: 10)
        lblOk.textAlignment = .left
        lblOk.text = "Ok"
        lblOk.textColor = .black
        vwOkBox.addSubview(lblOk)
        page.addSubview(vwOkBox)
        xposition += 79
        
        
        let vwNotOkBox = UIView(frame: CGRect(x: xposition, y: yPosotion, width: 80, height: 40))
        vwNotOkBox.backgroundColor = .white
        vwNotOkBox.layer.borderColor = UIColor.black.cgColor
        vwNotOkBox.layer.borderWidth = 1.0
        
        let lblNotOk = UILabel(frame: CGRect(x: 5, y: 0, width: 80, height: 40))
        lblNotOk.font = UIFont.boldSystemFont(ofSize: 10)
        lblNotOk.textAlignment = .left
        lblNotOk.text = "Not Ok"
        lblNotOk.textColor = .black
        vwNotOkBox.addSubview(lblNotOk)
        page.addSubview(vwNotOkBox)
        xposition += 79
        
        
        yPosotion += 39

        
        
        for index in 0...1 {
            
            let temp : NSMutableDictionary = totalCheckList3[index] as! NSMutableDictionary
            
            let FinalString : String = temp["title"] as! String
            
            let vwInpectionPointBoxNew = UIView(frame: CGRect(x: 40, y: 0, width: 482, height: 40))
            vwInpectionPointBoxNew.backgroundColor = .white
            vwInpectionPointBoxNew.layer.borderColor = UIColor.black.cgColor
            vwInpectionPointBoxNew.layer.borderWidth = 1.0
            
            let lblInpectionPointNew = UILabel(frame: CGRect(x: 5, y: 0, width: 482, height: 40))
            lblInpectionPointNew.font = UIFont.italicSystemFont(ofSize: 10)
            lblInpectionPointNew.textAlignment = .left
            lblInpectionPointNew.text = "\(FinalString)"
            lblInpectionPointNew.textColor = .black
            lblInpectionPointNew.numberOfLines = 0
            lblInpectionPointNew.sizeToFit()
            vwInpectionPointBoxNew.addSubview(lblInpectionPointNew)
            page.addSubview(vwInpectionPointBoxNew)
            
            var height : CGFloat = 0.0
            height = lblInpectionPointNew.frame.size.height+19
            
            vwInpectionPointBoxNew.frame = CGRect(x: 40, y: yPosotion, width: 482, height: Int(height))
            lblInpectionPointNew.frame = CGRect(x: 5, y: 0, width: 442, height: Int(height))
            
            let vwInpectionPointBox = UIView(frame: CGRect(x: 522, y: yPosotion, width: 60, height: 40))
            vwInpectionPointBox.backgroundColor = .white
            page.addSubview(vwInpectionPointBox)
            
            var statusString : Int = -1
            let okStatus : Int = temp["ok"] as! Int
            if okStatus == 1{
                statusString = 0
            }
            let NotokStatus : Int = temp["notok"] as! Int
            if NotokStatus == 1{
                statusString = 1
            }
            
            let vwOkNew = UIView(frame: CGRect(x: 592, y: yPosotion, width: 80, height: Int(height)))
            vwOkNew.backgroundColor = .white
            vwOkNew.layer.borderColor = UIColor.black.cgColor
            vwOkNew.layer.borderWidth = 1.0
            let lblOkNew = UILabel(frame: CGRect(x: 5, y: 0, width: 80, height: Int(height)))
            lblOkNew.font = UIFont.boldSystemFont(ofSize: 10)
            lblOkNew.textAlignment = .center
            if statusString == 0{
                lblOkNew.text = "√"
            }
            lblOkNew.textColor = .black
            vwOkNew.addSubview(lblOkNew)
            page.addSubview(vwOkNew)
            
            let vwNotOkNew = UIView(frame: CGRect(x: 671, y: yPosotion, width: 80, height: Int(height)))
            vwNotOkNew.backgroundColor = .white
            vwNotOkNew.layer.borderColor = UIColor.black.cgColor
            vwNotOkNew.layer.borderWidth = 1.0
            let lblNotOkNew = UILabel(frame: CGRect(x: 5, y: 0, width: 80, height: Int(height)))
            lblNotOkNew.font = UIFont.boldSystemFont(ofSize: 10)
            lblNotOkNew.textAlignment = .center
            if statusString == 1{
                lblNotOkNew.text = "√"
            }
            lblNotOkNew.textColor = .black
            vwNotOkNew.addSubview(lblNotOkNew)
            page.addSubview(vwNotOkNew)
            
            yPosotion += Int(height-1)
        }
        
        yPosotion += 20
        
        
        let temp : NSMutableDictionary = totalCheckList3.lastObject as! NSMutableDictionary
        
        
        let FinalString : String = temp["title"] as! String
        
        let vwInpectionPointBoxNew = UIView(frame: CGRect(x: 40, y: 0, width: 482, height: 50))
        vwInpectionPointBoxNew.backgroundColor = .white
        vwInpectionPointBoxNew.layer.borderColor = UIColor.black.cgColor
        vwInpectionPointBoxNew.layer.borderWidth = 1.0
        
        let lblInpectionPointNew = UILabel(frame: CGRect(x: 5, y: 0, width: 482, height: 50))
        lblInpectionPointNew.font = UIFont.boldSystemFont(ofSize: 10)
        lblInpectionPointNew.textAlignment = .center
        lblInpectionPointNew.text = "\(FinalString)"
        lblInpectionPointNew.textColor = .black
        lblInpectionPointNew.numberOfLines = 0
        lblInpectionPointNew.sizeToFit()
        vwInpectionPointBoxNew.addSubview(lblInpectionPointNew)
        page.addSubview(vwInpectionPointBoxNew)
        
        var height : CGFloat = 0.0
        height = lblInpectionPointNew.frame.size.height+20
        
        vwInpectionPointBoxNew.frame = CGRect(x: 40, y: yPosotion, width: 482, height: Int(height))
        lblInpectionPointNew.frame = CGRect(x: 5, y: 0, width: 442, height: Int(height))
        
        let vwInpectionPointBox2 = UIView(frame: CGRect(x: 522, y: yPosotion, width: 60, height: 50))
        vwInpectionPointBox2.backgroundColor = .white
        page.addSubview(vwInpectionPointBox2)
        
        var statusString1 : Int = -1
        let okStatus1 : Int = temp["ok"] as! Int
        if okStatus1 == 1{
            statusString1 = 0
        }
        let NotokStatus1 : Int = temp["notok"] as! Int
        if NotokStatus1 == 1{
            statusString1 = 1
        }
        
        let vwOkNew1 = UIView(frame: CGRect(x: 592, y: yPosotion, width: 80, height: Int(height)))
        vwOkNew1.backgroundColor = .white
        vwOkNew1.layer.borderColor = UIColor.black.cgColor
        vwOkNew1.layer.borderWidth = 1.0
        let lblOkNew1 = UILabel(frame: CGRect(x: 5, y: 0, width: 80, height: Int(height)))
        lblOkNew1.font = UIFont.boldSystemFont(ofSize: 10)
        lblOkNew1.textAlignment = .center
        if statusString1 == 0{
            lblOkNew1.text = "√"
        }
        lblOkNew1.textColor = .black
        vwOkNew1.addSubview(lblOkNew1)
        page.addSubview(vwOkNew1)
        
        let vwNotOkNew1 = UIView(frame: CGRect(x: 671, y: yPosotion, width: 80, height: Int(height)))
        vwNotOkNew1.backgroundColor = .white
        vwNotOkNew1.layer.borderColor = UIColor.black.cgColor
        vwNotOkNew1.layer.borderWidth = 1.0
        let lblNotOkNew1 = UILabel(frame: CGRect(x: 5, y: 0, width: 80, height: Int(height)))
        lblNotOkNew1.font = UIFont.boldSystemFont(ofSize: 10)
        lblNotOkNew1.textAlignment = .center
        if statusString1 == 1{
            lblNotOkNew1.text = "√"
        }
        lblNotOkNew1.textColor = .black
        vwNotOkNew1.addSubview(lblNotOkNew1)
        page.addSubview(vwNotOkNew1)
        
        yPosotion += Int(height-1)
        
        
        yPosotion += 10
    }
    class func Signature(page: UIView){
        
        yPosotion += 50
        
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let myString = formatter.string(from: Date()) // string purpose I add here
        let yourDate = formatter.date(from: myString)
        formatter.dateFormat = "dd-MMM-yyyy"
        let myStringafd = formatter.string(from: yourDate!)
        
        
        let lblDate = UILabel(frame: CGRect(x: 40, y: yPosotion, width: 800, height: 45))
        lblDate.font = UIFont.systemFont(ofSize: 25)
        lblDate.textAlignment = .left
        lblDate.text = "Date: \(myStringafd)"
        lblDate.textColor = .black
        page.addSubview(lblDate)
        yPosotion += 50
        
        let lblName = UILabel(frame: CGRect(x: 40, y: yPosotion, width: 800, height: 45))
        lblName.font = UIFont.systemFont(ofSize: 25)
        lblName.textAlignment = .left
        lblName.text = "Name of Authorized Engineer: \(strName ?? "")"
        lblName.textColor = .black
        page.addSubview(lblName)
        yPosotion += 50
        
        let lblSig = UILabel(frame: CGRect(x: 40, y: yPosotion, width: 800, height: 45))
        lblSig.font = UIFont.systemFont(ofSize: 25)
        lblSig.textAlignment = .left
        lblSig.text = "Signature:"
        lblSig.textColor = .black
        page.addSubview(lblSig)
        
        var imageView4 : UIImageView
        imageView4  = UIImageView(frame:CGRect(x: 200, y: yPosotion, width: 150, height: 150))
        imageView4.contentMode = .scaleAspectFill
        if imgSignature != nil{
            imageView4.image = imgSignature
        }
        page.addSubview(imageView4)
        
        
        yPosotion += 200
        
    }
    
    
    class func createInvoice()->String{
        
        let invoiceView = UIView(frame: CGRect(x: 0, y: 0, width: 792, height: 1122))
        invoiceView.backgroundColor = .white
        
        //Page 1
        yPosotion = 0
        self.header(page: invoiceView)
        self.finalCheck(page: invoiceView)
        self.wireCheck(page: invoiceView)
        self.positionOfProtection(page: invoiceView)
        self.footer(page: invoiceView, number:"Page 1 of 5")
        let page1 = self.exportAsPdfFromView(page: invoiceView, name: "becker1.pdf")
        
        //Page 2
        yPosotion = 0
        let page2View = UIView(frame: CGRect(x: 0, y: 0, width: 792, height: 1122))
        page2View.backgroundColor = .white
        self.header(page: page2View)
        self.CheckList(page: page2View)
        self.CheckList2(page:page2View)
        self.footer(page: page2View, number:"Page 2 of 5")
        let page2 = self.exportAsPdfFromView(page: page2View, name: "becker2.pdf")
        
        //Page 3
        yPosotion = 0
        let page3View = UIView(frame: CGRect(x: 0, y: 0, width: 792, height: 1122))
        page3View.backgroundColor = .white
        self.header(page: page3View)
        self.actImageAdding(page: page3View)
        self.footer(page: page3View, number:"Page 3 of 5")
        let page3 = self.exportAsPdfFromView(page: page3View, name: "becker3.pdf")
        
        
        //Page 4
        yPosotion = 0
        let page4View = UIView(frame: CGRect(x: 0, y: 0, width: 792, height: 1122))
        page4View.backgroundColor = .white
        self.header(page: page4View)
        self.actImageAdding2(page: page4View)
        self.footer(page: page4View, number:"Page 4 of 5")
        let page4 = self.exportAsPdfFromView(page: page4View, name: "becker4.pdf")
        
        
        //Page 5
        yPosotion = 0
        let page5View = UIView(frame: CGRect(x: 0, y: 0, width: 792, height: 1122))
        page5View.backgroundColor = .white
        self.header(page: page5View)
        self.CheckList3(page: page5View)
        self.Signature(page: page5View)
        self.footer(page: page5View, number:"Page 5 of 5")
        let page5 = self.exportAsPdfFromView(page: page5View, name: "becker5.pdf")
        
       
        let pdfs = [page1, page2, page3, page4, page5]
        
        let out = NSMutableData()
        UIGraphicsBeginPDFContextToData(out, .zero, nil)
        guard let context = UIGraphicsGetCurrentContext() else {
            return ""
        }
        for pdf in pdfs {
            guard let dataProvider = CGDataProvider(data: pdf as CFData), let document = CGPDFDocument(dataProvider) else { continue }
            
            for pageNumber in 1...document.numberOfPages {
                guard let page = document.page(at: pageNumber) else { continue }
                var mediaBox = page.getBoxRect(.mediaBox)
                context.beginPage(mediaBox: &mediaBox)
                context.drawPDFPage(page)
                context.endPage()
            }
        }
        context.closePDF()
        UIGraphicsEndPDFContext()
        
        
        return self.saveViewPdf(data: out, name: "becker.pdf")
        
        
        //return self.exportAsPdfFromView(page: invoiceView, name: "becker8.pdf")
    }
    
    class func exportAsPdfFromView(page: UIView, name: String) -> NSMutableData {
        
        let pdfPageFrame = page.bounds
        let pdfData = NSMutableData()
        UIGraphicsBeginPDFContextToData(pdfData, pdfPageFrame, nil)
        UIGraphicsBeginPDFPageWithInfo(pdfPageFrame, nil)
        guard let pdfContext = UIGraphicsGetCurrentContext() else { return pdfData }
        page.layer.render(in: pdfContext)
        UIGraphicsEndPDFContext()
        //return self.saveViewPdf(data: pdfData, name: name)
        return pdfData
    }
    
    // Save pdf file in document directory
    class func saveViewPdf(data: NSMutableData, name: String) -> String {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let docDirectoryPath = paths[0]
        let pdfPath = docDirectoryPath.appendingPathComponent(name)
        print(pdfPath)
        if data.write(to: pdfPath, atomically: true) {
            return pdfPath.path
        } else {
            return ""
        }
    }
    
    
    // MARK: - show Loder
    class func showLoder(text : String, detail : String, view : UIView?, completion: (() -> Swift.Void)? = nil)
    {
        let Indicator = MBProgressHUD.showAdded(to: view!, animated: true)
        Indicator.label.text = text
        Indicator.isUserInteractionEnabled = false
        Indicator.detailsLabel.text = detail
        Indicator.show(animated: true)
    }
    class func hideLoder(view : UIView?)
    {
        DispatchQueue.main.async
        {
                MBProgressHUD.hide(for: view!, animated: true)
        }
    }
    
    // MARK: - show alert view controller
    class func showAlert(alertTitle : String, alertMessage : String, viewCtr : UIViewController?, completion: (() -> Swift.Void)? = nil) {
        
        let alertViewController = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: NSLocalizedString("OK", comment: ""), style: .cancel) { (action) -> Void in
            
            if (completion != nil) {
                completion!()
            }
        }
        
        alertViewController.addAction(okAction)
        
        viewCtr?.present(alertViewController, animated: true, completion: nil)
    }
    
    class func showAlert(alertTitle : String, alertMessage : String, okActionTitle : String, viewCtr : UIViewController?, completion: (() -> Swift.Void)? = nil) {
        
        let alertViewController = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: okActionTitle, style: .cancel) { (action) -> Void in
            
            if (completion != nil) {
                completion!()
            }
        }
        
        alertViewController.addAction(okAction)
        
        viewCtr?.present(alertViewController, animated: true, completion: nil)
    }
    
    // MARK: - show alert with 2 custon actions
    class func showAlert(alertTitle : String, alertMessage : String, okActionTitle : String,  cancelActionTitle : String, viewCtr : UIViewController?, successCompletion: (() -> Void)?, cancelCompletion: (() -> Void)?) {
        
        let alertViewController = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: cancelActionTitle, style: .cancel) { (action) -> Void in
            
            if (cancelCompletion != nil) {
                cancelCompletion!()
            }
        }
        
        alertViewController.addAction(cancelAction)
        
        let okAction = UIAlertAction(title: okActionTitle, style: .default) { (action) -> Void in
            
            if (successCompletion != nil) {
                successCompletion!()
            }
        }
        
        alertViewController.addAction(okAction)
        
        viewCtr?.present(alertViewController, animated: true, completion: nil)
    }
    // MARK: - show alert with 1 custon actions
    class func showOneActionAlert(alertTitle : String, alertMessage : String, okActionTitle : String, viewCtr : UIViewController, successCompletion: (() -> Void)?) {
        
        let alertViewController = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: okActionTitle, style: .cancel) { (action) -> Void in
            
            if (successCompletion != nil) {
                successCompletion!()
            }
        }
        
        alertViewController.addAction(okAction)
        
        viewCtr.present(alertViewController, animated: true, completion: nil)
    }
    
    // MARK: - show alert with 2 custon actions
    class func showTwoActionAlert(alertTitle : String, alertMessage : String, okActionTitle : String,  cancelActionTitle : String, viewCtr : UIViewController?, successCompletion: (() -> Void)?, cancelCompletion: (() -> Void)?) {
        
        let alertViewController = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: cancelActionTitle, style: .cancel) { (action) -> Void in
            
            if (cancelCompletion != nil) {
                cancelCompletion!()
            }
        }
        
        alertViewController.addAction(cancelAction)
        
        let okAction = UIAlertAction(title: okActionTitle, style: .default) { (action) -> Void in
            
            if (successCompletion != nil) {
                successCompletion!()
            }
        }
        
        alertViewController.addAction(okAction)
        
        viewCtr?.present(alertViewController, animated: true, completion: nil)
    }
}
