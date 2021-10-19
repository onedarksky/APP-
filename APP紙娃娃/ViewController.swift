//
//  ViewController.swift
//  APP紙娃娃
//
//  Created by 江庸冊 on 2021/10/19.
//

import UIKit

class ViewController: UIViewController {

    //IBO
    //要變化的物件
    @IBOutlet weak var hair: UIImageView!
    @IBOutlet weak var face: UIImageView!
    @IBOutlet weak var body: UIImageView!
    @IBOutlet weak var glasses: UIImageView!
    @IBOutlet weak var background: UIImageView!
    
    //view
    @IBOutlet var hairView: UIView!
    @IBOutlet var faceView: UIView!
    @IBOutlet var bodyView: UIView!
    @IBOutlet var glassesView: UIView!
    @IBOutlet var backgroundView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hairView.isHidden = false
        faceView.isHidden = true
        glassesView.isHidden = true
        bodyView.isHidden = true
        backgroundView.isHidden = true
    }
    
    
    //每個View 裡面的 Button
    @IBAction func changeHair(_ sender: UIButton) {
        let hairImage = sender.currentImage
        hair.image = hairImage
    }
    @IBAction func changeFace(_ sender: UIButton) {
        let faceImage = sender.currentImage
        face.image = faceImage
    }
    @IBAction func changeGlasses(_ sender: UIButton) {
        let glassesImage = sender.currentImage
        glasses.image = glassesImage
        if glassesImage?.isSymbolImage == true{
            glasses.image = nil
        }
    }
    
    @IBAction func changeBody(_ sender: UIButton) {
        let bodyImage = sender.currentImage
        body.image = bodyImage
    }
    
    @IBAction func changeBackground(_ sender: UIButton) {
        let backgroundImage = sender.currentImage
        background.image = backgroundImage
    }
    
    //Scroll View 分類選項
    //在選擇時把其他View藏起來
    @IBAction func selectHair(_ sender: UIButton) {
        hairView.isHidden = false
        faceView.isHidden = true
        glassesView.isHidden = true
        bodyView.isHidden = true
        backgroundView.isHidden = true
    }
    
    @IBAction func selectFace(_ sender: UIButton) {
        hairView.isHidden = true
        faceView.isHidden = false
        glassesView.isHidden = true
        bodyView.isHidden = true
        backgroundView.isHidden = true
    }
    
    @IBAction func selectBody(_ sender: UIButton) {
        hairView.isHidden = true
        faceView.isHidden = true
        glassesView.isHidden = true
        bodyView.isHidden = false
        backgroundView.isHidden = true
    }
    @IBAction func selectGlasses(_ sender: UIButton) {
        hairView.isHidden = true
        faceView.isHidden = true
        glassesView.isHidden = false
        bodyView.isHidden = true
        backgroundView.isHidden = true
    }
    @IBAction func selectBackground(_ sender: UIButton) {
        hairView.isHidden = true
        faceView.isHidden = true
        glassesView.isHidden = true
        bodyView.isHidden = true
        backgroundView.isHidden = false
    }
    
    //設定隨機，圖片檔案名
    @IBAction func selectRandom(_ sender: UIButton) {
        let hairs : [UIImage?] = [UIImage(named: "Buns")
                                  ,UIImage(named: "Bangs")
                                  ,UIImage(named: "Bangs 2")
                                  ,UIImage(named: "Bantu Knots")
                                  ,UIImage(named: "Bun")
                                  ,UIImage(named: "hat-hip")
                                  ,UIImage(named: "Twists 2")
                                  ,UIImage(named: "Twists")
                                  ,UIImage(named: "Medium Bangs 3")]
        
        let faces : [UIImage?] = [UIImage(named: "Hectic")
                                  ,UIImage(named: "Loving Grin 1")
                                  ,UIImage(named: "Calm")
                                  ,UIImage(named: "Concerned Fear")
                                  ,UIImage(named: "Very Angry")
                                  ,UIImage(named: "Driven")
                                  ,UIImage(named: "Eyes Closed")
                                  ,UIImage(named: "Hectic")
                                  ,UIImage(named: "Smile LOL")]
        
        let bodys : [UIImage?] = [UIImage(named: "Sweater")
                                  ,UIImage(named: "Hoodie")
                                  ,UIImage(named: "Macbook")
                                  ,UIImage(named: "Thunder T-Shirt")
                                  ,UIImage(named: "Gym Shirt")
                                  ,UIImage(named: "Sporty Tee")
                                  ,UIImage(named: "Killer")
                                  ,UIImage(named: "Fur Jacket")
                                  ,UIImage(named: "Button Shirt 1")]
        
        let glassess : [UIImage?] = [UIImage(named: "Eyepatch")
                                  ,UIImage(named: "Glasses")
                                  ,UIImage(named: "Glasses 2")
                                  ,UIImage(named: "Glasses 3")
                                  ,UIImage(named: "Glasses 4")
                                  ,UIImage(named: "Glasses 5")
                                  ,UIImage(named: "Sunglasses")
                                  ,UIImage(named: "Sunglasses 2")]
        
        let backgrounds : [UIImage?] = [UIImage(named: "1")
                                  ,UIImage(named: "2")
                                  ,UIImage(named: "3")
                                  ,UIImage(named: "4")
                                  ,UIImage(named: "5")
                                  ,UIImage(named: "6")
                                  ,UIImage(named: "7")
                                  ,UIImage(named: "8")
                                  ,UIImage(named: "9")]
        
       //設定圖片亂序，每個區塊圖片有9張 那就要設定成 0....8 以此類推
        let number = Int.random(in: 0...8)
        let number1 = Int.random(in: 0...7)
        hair.image = hairs[number]
        face.image = faces[number]
        glasses.image = glassess[number1]
        body.image = bodys[number]
        background.image = backgrounds[number]
    }
}
