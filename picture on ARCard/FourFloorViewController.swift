//
//  FourFloorViewController.swift
//  picture on ARCard
//
//  Created by 吉冨優太 on 2019/08/30.
//  Copyright © 2019 吉冨優太. All rights reserved.
//

import UIKit
import SafariServices

class FourFloorViewController: UIViewController,  UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var fourfloorImageView: UIImageView!
    @IBOutlet weak var nana: UIButton!
    @IBOutlet weak var iconDescription_layer3: UIImageView!
    @IBOutlet weak var FloorChange: UITextField!
    
    let pickerView = UIPickerView()
    let dataSource =  ["B1F", "1F", "2F", "3F", "4F", "5F", "6F", "7F", "8F", "9F"]
    
    let fourfloorImage = UIImage(named: "art.scnassets/階層画像/4f.png")!
    
    let iconDescription = UIImage(named: "art.scnassets/アイコン説明.png")!
    
    let nanaImage = UIImage(named: "art.scnassets/4F/nana's_green_tea.png")!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fourfloorImageView.image = fourfloorImage
        
        iconDescription_layer3.image = iconDescription
        
        nana.setImage(nanaImage, for: .normal)

        pickerView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: pickerView.bounds.size.height)
        pickerView.delegate   = self
        pickerView.dataSource = self
        
        let vi = UIView(frame: pickerView.bounds)
        vi.backgroundColor = UIColor.white
        vi.addSubview(pickerView)
        
        FloorChange.inputView = vi
        
        let toolBar = UIToolbar()
        toolBar.barStyle = UIBarStyle.default
        toolBar.isTranslucent = true
        toolBar.tintColor = UIColor.black
        let cancelButton = UIBarButtonItem(title: "Cancel", style: UIBarButtonItem.Style.plain, target: self, action: #selector(FourFloorViewController.cancelPressed))
        let spaceButton  = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        toolBar.setItems([cancelButton, spaceButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        toolBar.sizeToFit()
        FloorChange.inputAccessoryView = toolBar
    }
    
    @IBAction func nanaTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-X1mp__jqXXs/") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    // Cancel
    @objc func cancelPressed() {
        view.endEditing(true)
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataSource[row]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSource.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch row {
        case 0:
            let storyboard: UIStoryboard = self.storyboard!
            let bone = storyboard.instantiateViewController(withIdentifier: "bone")
            self.present(bone, animated: true, completion: nil)
        case 1:
            let storyboard: UIStoryboard = self.storyboard!
            let one = storyboard.instantiateViewController(withIdentifier: "one")
            self.present(one, animated: true, completion: nil)
        case 2:
            let storyboard: UIStoryboard = self.storyboard!
            let two = storyboard.instantiateViewController(withIdentifier: "two")
            self.present(two, animated: true, completion: nil)
        case 3:
            let storyboard: UIStoryboard = self.storyboard!
            let three = storyboard.instantiateViewController(withIdentifier: "three")
            self.present(three, animated: true, completion: nil)
        case 4:
            let storyboard: UIStoryboard = self.storyboard!
            let four = storyboard.instantiateViewController(withIdentifier: "four")
            self.present(four, animated: true, completion: nil)
        case 5:
            let storyboard: UIStoryboard = self.storyboard!
            let five = storyboard.instantiateViewController(withIdentifier: "five")
            self.present(five, animated: true, completion: nil)
        case 6:
            let storyboard: UIStoryboard = self.storyboard!
            let six = storyboard.instantiateViewController(withIdentifier: "six")
            self.present(six, animated: true, completion: nil)
        case 7:
            let storyboard: UIStoryboard = self.storyboard!
            let seven = storyboard.instantiateViewController(withIdentifier: "seven")
            self.present(seven, animated: true, completion: nil)
        case 8:
            let storyboard: UIStoryboard = self.storyboard!
            let eight = storyboard.instantiateViewController(withIdentifier: "eight")
            self.present(eight, animated: true, completion: nil)
        case 9:
            let storyboard: UIStoryboard = self.storyboard!
            let nine = storyboard.instantiateViewController(withIdentifier: "nine")
            self.present(nine, animated: true, completion: nil)
        default:
            break
        }
    }
}
