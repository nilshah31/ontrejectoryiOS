
import UIKit

class HelpCloudButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.borderWidth = 1
        layer.masksToBounds = true
        layer.cornerRadius = 7
        setTitleColor(.black, for: .normal)
        setTitleColor(.black, for: .selected)
       self.defaultButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.borderWidth = 1
        layer.masksToBounds = true
        layer.cornerRadius = 7
        setTitleColor(.black, for: .normal)
        setTitleColor(.black, for: .selected)
        self.defaultButton()
        
    }

    public func defaultButton(){
        
        let color = UIColor(red: 176/255.0, green: 189/255.0, blue: 222/255.0, alpha: 1.0)
        layer.borderColor = color.cgColor
        backgroundColor = .clear
        tintColor = UIColor(red: 176/255.0, green: 189/255.0, blue: 222/255.0, alpha: 1.0)
        isSelected = false
    }
    public func selectedButton(){
        
        let color = UIColor(red: 158/255.0, green: 232/255.0, blue: 199/255.0, alpha: 1.0)
        layer.borderColor = color.cgColor
        backgroundColor = UIColor(red: 230/255.0, green: 255/255.0, blue: 244/255.0, alpha: 1.0)
        tintColor = UIColor(red: 230/255.0, green: 255/255.0, blue: 244/255.0, alpha: 1.0)        
        isSelected = true
    }
}
