//
//  EightFloorViewController.swift
//  picture on ARCard
//
//  Created by 吉冨優太 on 2019/08/30.
//  Copyright © 2019 吉冨優太. All rights reserved.
//

import UIKit
import SafariServices

class EightFloorViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var eightfloorImageView: UIImageView!
    @IBOutlet weak var ciao: UIButton!
    @IBOutlet weak var ginpei: UIButton!
    @IBOutlet weak var oyster_blue: UIButton!
    @IBOutlet weak var osaka_basara: UIButton!
    @IBOutlet weak var dancing: UIButton!
    @IBOutlet weak var ryumieru: UIButton!
    @IBOutlet weak var teppan: UIButton!
    @IBOutlet weak var joe: UIButton!
    @IBOutlet weak var FloorChange: UITextField!
    @IBOutlet weak var iconDescription_layer3: UIImageView!
    
    let pickerView = UIPickerView()
    let dataSource =  ["B1F", "1F", "2F", "3F", "4F", "5F", "6F", "7F", "8F", "9F"]
    
    let eightfloorImage = UIImage(named: "art.scnassets/階層画像/8f.png")!
    
    let iconDescription = UIImage(named: "art.scnassets/アイコン説明.png")!
    
    let joeImage = UIImage(named: "art.scnassets/8F/Joe's_Shanghal.png")!
    let teppanImage = UIImage(named: "art.scnassets/8F/碧.png")!
    let ryumieruImage = UIImage(named: "art.scnassets/8F/リュミエール大阪Karato.png")!
    let dancingImage = UIImage(named: "art.scnassets/8F/Dancing_Club.png")!
    let osaka_basaraImage = UIImage(named: "art.scnassets/8F/大坂ばさら.png")!
    let oyster_blueImage = UIImage(named: "art.scnassets/8F/Oyster_Blue.png")!
    let ginpeiImage = UIImage(named: "art.scnassets/8F/銀平.png")!
    let ciaoImage = UIImage(named: "art.scnassets/8F/Ciao_Nature.png")!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        eightfloorImageView.image = eightfloorImage
        
        iconDescription_layer3.image = iconDescription
        
        joe.setImage(joeImage, for: .normal)
        teppan.setImage(teppanImage, for: .normal)
        ryumieru.setImage(ryumieruImage, for: .normal)
        dancing.setImage(dancingImage, for: .normal)
        osaka_basara.setImage(osaka_basaraImage, for: .normal)
        oyster_blue.setImage(oyster_blueImage, for: .normal)
        ginpei.setImage(ginpeiImage, for: .normal)
        ciao.setImage(ciaoImage, for: .normal)

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
        let cancelButton = UIBarButtonItem(title: "Cancel", style: UIBarButtonItem.Style.plain, target: self, action: #selector(EightFloorViewController.cancelPressed))
        let spaceButton  = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        toolBar.setItems([cancelButton, spaceButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        toolBar.sizeToFit()
        FloorChange.inputAccessoryView = toolBar
    }
    
    @IBAction func JoesTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-i-N4msSje0s/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func TeppanTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-Qga-9x6MdxM/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func RyumieTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-veRQER6MdxN/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func DancingTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-hzpxlepKdQs/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func NihonTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-E5XDJB6MdxM/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func OysterTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-TbM_wj68E0A/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func UoshoTappped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-9GdN_tl0riw/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func SantyokuTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-51VoGx6MdxM/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }

    // Done
    @objc func donePressed() {
        view.endEditing(true)
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

