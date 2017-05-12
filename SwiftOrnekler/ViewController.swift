//
//  ViewController.swift
//  SwiftOrnekler
//
//  Created by ZiraatTeknoloji CI on 26/04/2017.
//  Copyright © 2017 com.developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var btnUyari: UIButton!
    
    
    @IBAction func fncUyari(_ sender: UIButton) {
        
        
        
        let uyari = UIAlertController(title: "Uyari", message: "bu bir uyarıdır.", preferredStyle: .alert)
        
        let evet = UIAlertAction(title: "Evet", style: .default) { (UIAlertAction) in
            print("evet")
        }
        
        let iptal = UIAlertAction(title: "İptal", style: .cancel) { (UIAlertAction) in
            print("iptal")
        }
        
        uyari.addAction(evet)
        uyari.addAction(iptal)
        
        self.present(uyari, animated: true, completion: nil)
        
        
        
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
        self.btnUyari.resignFirstResponder()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // sınıf başlama bolumu
        
        
        // let, var
        // let sabit deger veya nesne
        let adi = "Ali"
        
        // adi = "Veli" yanlış kullanım
        
        var soyadi = "A"
        soyadi = "B"
        
        print("gelen değişken: \(soyadi)")
        
        
        
       parametresiz()
     //   parametreli(adi: "ali", soyadi: "bilmem")
       // let bilgi = func1(adi: "yasin", soyadi: "çetin")
        
        
    }
    
    
    func parametresiz()
    {
        
    }
    
    func parametreli(adi:String, soyadi:String, bilgi:Any )
    {
        print("adi: \(adi) soyadi: \(soyadi)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // 
    
    }
    
   


}

