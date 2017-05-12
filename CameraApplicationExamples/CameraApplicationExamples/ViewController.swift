//
//  ViewController.swift
//  CameraApplicationExamples
//
//  Created by ZiraatTeknoloji CI on 11/05/2017.
//  Copyright © 2017 yasin. All rights reserved.
//

import UIKit
import Alamofire
import TGCameraViewController

class ViewController: UIViewController, TGCameraDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var resimView: UIImageView!
    @IBAction func fncKameraAc(_ sender: UIButton) {
        
        // thread başlat
        DispatchQueue.main.sync {
            TGCameraColor.setTint(UIColor.red)
            TGCamera.setOption(kTGCameraOptionSaveImageToAlbum, value: true)
            let nav = TGCameraNavigationController.new(with: self)
            self.present(nav!, animated: true, completion: nil)
            
        }
        
    }

    func cameraDidCancel() {
        
        
    }
    
    func cameraDidSelectAlbumPhoto(_ image: UIImage!) {
        if image != nil
        {
            self.resimView.image = image
        }
        else
        {
            print ("Albüm seçilmesi iptal edildi.")
        }
        self.dismiss(animated: true, completion: nil)
        
    }
    
    func cameraDidTakePhoto(_ image: UIImage!) {
        if image != nil
        {
            self.resimView.image = image
        }
        else
        {
          print ("camera iptal edildi.")
        }
        self.dismiss(animated: true, completion: nil)
    }
    
}

