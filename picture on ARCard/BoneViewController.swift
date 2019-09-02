//
//  BoneViewController.swift
//  picture on ARCard
//
//  Created by 吉冨優太 on 2019/08/30.
//  Copyright © 2019 吉冨優太. All rights reserved.
//

import UIKit
import SafariServices

class BoneViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var b1ffloorImageView: UIImageView!
    @IBOutlet weak var tully: UIButton!
    @IBOutlet weak var yamabiko: UIButton!
    @IBOutlet weak var izumi: UIButton!
    @IBOutlet weak var jiitiro: UIButton!
    @IBOutlet weak var banan: UIButton!
    @IBOutlet weak var the_buffet: UIButton!
    @IBOutlet weak var marumo: UIButton!
    @IBOutlet weak var sakanagashi: UIButton!
    @IBOutlet weak var horiuti: UIButton!
    @IBOutlet weak var iconDescription_layer3: UIImageView!
    @IBOutlet weak var FloorChage: UITextField!
    
    let pickerView = UIPickerView()
    let dataSource =  ["B1F", "1F", "2F", "3F", "4F", "5F", "6F", "7F", "8F", "9F"]
    
    let b1ffloorImage = UIImage(named: "art.scnassets/階層画像/b1f.png")!
    
    let iconDescription = UIImage(named: "art.scnassets/アイコン説明.png")!
    let horiutiImage = UIImage(named: "art.scnassets/B1F/堀内果実園.png")!
    let sakanagashiImage = UIImage(named: "art.scnassets/B1F/魚がし日本一.png")!
    let marumoImage = UIImage(named: "art.scnassets/B1F/マルモキッチン.png")!
    let thebuffetImage = UIImage(named: "art.scnassets/B1F/The_Buffet&marche.png")!
    let bananImage = UIImage(named: "art.scnassets/B1F/Banan.png")!
    let jiitiroImage = UIImage(named: "art.scnassets/B1F/治一郎.png")!
    let izumiImage = UIImage(named: "art.scnassets/B1F/いずみカリー.png")!
    let yamabikoImage = UIImage(named: "art.scnassets/B1F/やまびこベーカリー.png")!
    let tullyImage = UIImage(named: "art.scnassets/B1F/Turry's_Coffee&Tea.png")!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        b1ffloorImageView.image = b1ffloorImage
        
        iconDescription_layer3.image = iconDescription
        
        horiuti.setImage(horiutiImage, for: .normal)
        sakanagashi.setImage(sakanagashiImage, for: .normal)
        marumo.setImage(marumoImage, for: .normal)
        the_buffet.setImage(thebuffetImage, for: .normal)
        banan.setImage(bananImage, for: .normal)
        jiitiro.setImage(jiitiroImage, for: .normal)
        izumi.setImage(izumiImage, for: .normal)
        yamabiko.setImage(yamabikoImage, for: .normal)
        tully.setImage(tullyImage, for: .normal)
        
        pickerView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: pickerView.bounds.size.height)
        pickerView.delegate   = self
        pickerView.dataSource = self
        
        let vi = UIView(frame: pickerView.bounds)
        vi.backgroundColor = UIColor.white
        vi.addSubview(pickerView)
        
        FloorChage.inputView = vi
        
        let toolBar = UIToolbar()
        toolBar.barStyle = UIBarStyle.default
        toolBar.isTranslucent = true
        toolBar.tintColor = UIColor.black
        let cancelButton = UIBarButtonItem(title: "Cancel", style: UIBarButtonItem.Style.plain, target: self, action: #selector(BoneViewController.cancelPressed))
        let spaceButton  = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        toolBar.setItems([cancelButton, spaceButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        toolBar.sizeToFit()
        FloorChage.inputAccessoryView = toolBar
    }
    
    @IBAction func HoriuchiTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-JwvEp9rC9Fg/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func SushiTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-5UkTrRLVE1M/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func MarumoTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-JunNbhVXtcY/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func BuffetTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-Qk6DJjqy37A/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func BananTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-5Za2VxJB2vE/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    
    @IBAction func JiichiroTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-Lh5RYVbEsws/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func IzumiTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-usMcyE6U_hA/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func YamabikoTapped(_ sender: Any) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-nXRI8LexkoA/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func TurryTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-NDzfl7fXEDA/?genrecd=01") else { return }
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
