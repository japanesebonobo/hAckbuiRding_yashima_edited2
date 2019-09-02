//
//  SevenViewController.swift
//  picture on ARCard
//
//  Created by 吉冨優太 on 2019/08/30.
//  Copyright © 2019 吉冨優太. All rights reserved.
//

import UIKit
import SafariServices

class SevenViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var sevenfloorImageView: UIImageView!
    @IBOutlet weak var pandemere: UIButton!
    @IBOutlet weak var ice_monster: UIButton!
    @IBOutlet weak var tachibana: UIButton!
    @IBOutlet weak var nuru_osaka: UIButton!
    @IBOutlet weak var honolulu: UIButton!
    @IBOutlet weak var nishiya: UIButton!
    @IBOutlet weak var hakuundai: UIButton!
    @IBOutlet weak var mizusashima: UIButton!
    @IBOutlet weak var ebirenkon: UIButton!
    @IBOutlet weak var tanala: UIButton!
    @IBOutlet weak var agehachi: UIButton!
    @IBOutlet weak var kusiyaki: UIButton!
    @IBOutlet weak var fukutaro: UIButton!
    @IBOutlet weak var omoni: UIButton!
    @IBOutlet weak var revo: UIButton!
    @IBOutlet weak var hisashi: UIButton!
    @IBOutlet weak var miyazaki: UIButton!
    @IBOutlet weak var espanol: UIButton!
    @IBOutlet weak var itarianbar: UIButton!
    @IBOutlet weak var kantaro: UIButton!
    @IBOutlet weak var hakata: UIButton!
    @IBOutlet weak var syuri: UIButton!
    @IBOutlet weak var teuchisoba: UIButton!
    @IBOutlet weak var ajinogyutan: UIButton!
    @IBOutlet weak var hima: UIButton!
    @IBOutlet weak var brasser: UIButton!
    @IBOutlet weak var asakusa: UIButton!
    @IBOutlet weak var Donna: UIButton!
    @IBOutlet weak var FloorChange: UITextField!
    @IBOutlet weak var iconDescription_layer3: UIImageView!
    
    let pickerView = UIPickerView()
    let dataSource =  ["B1F", "1F", "2F", "3F", "4F", "5F", "6F", "7F", "8F", "9F"]
    
    let sevenfloorImage = UIImage(named: "art.scnassets/階層画像/7f.png")!
    
    let iconDescription = UIImage(named: "art.scnassets/アイコン説明.png")!
    let DonnaImage = UIImage(named: "art.scnassets/7F/Donnagolosi.png")!
    let asakusaImage = UIImage(named: "art.scnassets/7F/浅草キッチン大宮.png")!
    let brasserImage = UIImage(named: "art.scnassets/7F/Brassereie_rubin.png")!
    let himaImage = UIImage(named: "art.scnassets/7F/ひつまぶし名古屋_備長.png")!
    let ajinogyutanImage = UIImage(named: "art.scnassets/7F/喜助.png")!
    let teuchisobaImage = UIImage(named: "art.scnassets/7F/石月.png")!
    let syuriImage = UIImage(named: "art.scnassets/7F/首里古酒倶楽部.png")!
    let hakataImage = UIImage(named: "art.scnassets/7F/磯貝.png")!
    let kantaroImage = UIImage(named: "art.scnassets/7F/函太郎.png")!
    let itarianbarImage = UIImage(named: "art.scnassets/7F/Italian_Bar_Pieno_Festa.png")!
    let espanolImage = UIImage(named: "art.scnassets/7F/Bar_Espanol_La_Bodega.png")!
    let miyazakiImage = UIImage(named: "art.scnassets/7F/宮崎料理_万作.png")!
    let hisashiImage = UIImage(named: "art.scnassets/7F/久.png")!
    let revoImage = UIImage(named: "art.scnassets/7F/洋食_Revo.png")!
    let omoniImage = UIImage(named: "art.scnassets/7F/オモニ.png")!
    let fukutaroImage = UIImage(named: "art.scnassets/7F/福太郎.png")!
    let kusiyakiImage = UIImage(named: "art.scnassets/7F/九志焼亭.png")!
    let agehachiImage = UIImage(named: "art.scnassets/7F/揚八.png")!
    let tanalaImage = UIImage(named: "art.scnassets/7F/Tana_La_Terrazza.png")!
    let ebirenkonImage = UIImage(named: "art.scnassets/7F/海老れんこん.png")!
    let mizusashimaImage = UIImage(named: "art.scnassets/7F/水刺間.png")!
    let hakuundaiImage = UIImage(named: "art.scnassets/7F/白雲台.png")!
    let nishiyaImage = UIImage(named: "art.scnassets/7F/にし家.png")!
    let honoluluImage = UIImage(named: "art.scnassets/7F/Honolulu_Coffee.png")!
    let nuru_osakaImage = UIImage(named: "art.scnassets/7F/ぬる燗佐藤.png")!
    let tachibanaImage = UIImage(named: "art.scnassets/7F/和食_たちばな.png")!
    let ice_monsterImage = UIImage(named: "art.scnassets/7F/Ice_Monster.png")!
    let pandemereImage = UIImage(named: "art.scnassets/7F/Pan_de_mere.png")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sevenfloorImageView.image = sevenfloorImage
        
        iconDescription_layer3.image = iconDescription
        
        Donna.setImage(DonnaImage, for: .normal)
        asakusa.setImage(asakusaImage, for: .normal)
        brasser.setImage(brasserImage, for: .normal)
        hima.setImage(himaImage, for: .normal)
        ajinogyutan.setImage(ajinogyutanImage, for: .normal)
        teuchisoba.setImage(teuchisobaImage, for: .normal)
        syuri.setImage(syuriImage, for: .normal)
        hakata.setImage(hakataImage, for: .normal)
        kantaro.setImage(kantaroImage, for: .normal)
        itarianbar.setImage(itarianbarImage, for: .normal)
        espanol.setImage(espanolImage, for: .normal)
        miyazaki.setImage(miyazakiImage, for: .normal)
        hisashi.setImage(hisashiImage, for: .normal)
        revo.setImage(revoImage, for: .normal)
        omoni.setImage(omoniImage, for: .normal)
        fukutaro.setImage(fukutaroImage, for: .normal)
        kusiyaki.setImage(kusiyakiImage, for: .normal)
        agehachi.setImage(agehachiImage, for: .normal)
        tanala.setImage(tanalaImage, for: .normal)
        ebirenkon.setImage(ebirenkonImage, for: .normal)
        mizusashima.setImage(mizusashimaImage, for: .normal)
        hakuundai.setImage(hakuundaiImage, for: .normal)
        nishiya.setImage(nishiyaImage, for: .normal)
        honolulu.setImage(honoluluImage, for: .normal)
        nuru_osaka.setImage(nuru_osakaImage, for: .normal)
        tachibana.setImage(tachibanaImage, for: .normal)
        ice_monster.setImage(ice_monsterImage, for: .normal)
        pandemere.setImage(pandemereImage, for: .normal)
        
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
        let cancelButton = UIBarButtonItem(title: "Cancel", style: UIBarButtonItem.Style.plain, target: self, action: #selector(SevenViewController.cancelPressed))
        let spaceButton  = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        toolBar.setItems([cancelButton, spaceButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        toolBar.sizeToFit()
        FloorChange.inputAccessoryView = toolBar
    }
    
    @IBAction func DonTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-A4gc2iWq3Vw/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func AsakusaTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-ibMZo4y5Hv6/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func ThecityTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-e0eH4KhyM22/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func HItsumaTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-6l-N0x6MdxM/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func AjinoTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-3JkFmrbLT6w/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func TeuchiTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-veFSJh6MdxM/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func RyukyuTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-tR4zvR6MdxM/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func HakataTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-Um2VI-eaGuY/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func HakodateTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-bL6UMB6MdxM/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func ItalianTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-CcFoax6MdxM/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func BarespanolTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-jgXPYhllTGk/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func MiyazakiTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-uq96kzqJW2c/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func OsakaodenTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-WP8EYB6MdxM/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func RevoTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-MO782B6MdxM/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func TsuruhashiTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-4Z1dgh6MdxM/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func FukutaroTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-wVkwyx6MdxM/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func KushiyakiTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-tiJ-QgMUF_M/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func AgehachiTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-tiJ-QgMUF_M/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func TanaTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-BtDS1-Hx8ic/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func EbiTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-F6fOOx6MdxM/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func KanokokuTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-6BDnlx6MdxM/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func TsruhashiyakinikuTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-TodjyR6MdxM/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func ShinsaibashiTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-SNs1ZR6MdxM/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func HonoruruTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-TZcQyB6MdxM/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func NurukanTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-lhDu2rexkoA/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func TachibanaTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-oLyofbHnJBY/") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func IceTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-oYwa9YBpQFs/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func BIstroTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-VQDrIlHB8wo/?genrecd=01") else { return }
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
