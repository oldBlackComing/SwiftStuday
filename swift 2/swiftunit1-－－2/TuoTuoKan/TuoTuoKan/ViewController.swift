//
//  ViewController.swift
//  TuoTuoKan
//
//  Created by 周佳兴 on 16/8/29.
//  Copyright © 2016年 周佳兴. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIAlertViewDelegate {

    @IBOutlet weak var huihe: UILabel!
    @IBOutlet weak var fenshu: UILabel!
    @IBOutlet weak var slider1: UISlider!
    @IBOutlet weak var slider: UISlider!
    
    var targetvalue :Int = 0
    var currentvalue :Int = 0
    
    var varthescore:Int = 0
    var huihe1 :Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 定义一个slider view
        
        slider.frame = CGRectMake(10, 20, 100, 200)
        
        onUpdate()
        
        
    }

    
    func onUpdate(){
        targetvalue = Int(1+arc4random()%100)
        slider1.value = Float(targetvalue)
        
        fenshu.text = String(self.varthescore)
            
        huihe1 += 1
        
        huihe.text = String(huihe1)
        
        slider.value = 50
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sliderAction(sender: AnyObject) {
        print("slider")
        
        currentvalue =  lroundf(slider!.value)// lroundf 是全局函数 四舍五入
    }
    @IBAction func Dianji(sender: AnyObject) {
        
        var diff:Int = currentvalue - targetvalue
        if diff<0 {
            diff *= -1
        }
        
        var result:Int = 100 - diff
        
        
        var message : String
        switch result {
        case 100:
            message = "真厉害 100 分"
            break
        case 90..<100 : message = "就差一点"
        case 80..<90 : message = "再接再厉"
        default:
            message  = "OOOOOOOOO\(result)"
        }
        
        
        fenshu.text = String(result)
        let alert = UIAlertView(title: "我爱你", message: message, delegate: self, cancelButtonTitle: "周家兴最受人喜爱")
        
        alert.show()
//        func alertView(alertView: UIAlertView, willDismissWithButtonIndex buttonIndex: Int){
//            onUpdate()
//        }
        

//      func  alertView(alertView: UIAlertView, willDismissWithButtonIndex buttonIndex: Int){
//        
//        }
        
        
    }
    
    func  alertView(alertView: UIAlertView, willDismissWithButtonIndex buttonIndex: Int){
        onUpdate()
    }

    @IBAction func congtouzailai(sender: AnyObject) {
        huihe1 = 0
        currentvalue = 0
        onUpdate()
    }
    @IBOutlet weak var detail: UIButton!
    @IBAction func sisiisis(sender: AnyObject) {
        let viewController = InfoViewController(nibName: "InfoViewController", bundle: nil)
        viewController.modalTransitionStyle = UIModalTransitionStyle.CoverVertical
        self.presentViewController(viewController, animated: true) { 
            
        }
        
    }
}

