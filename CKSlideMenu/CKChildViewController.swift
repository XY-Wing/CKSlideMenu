//
//  CKChildViewController.swift
//  CKSlideMenu
//
//  Created by ck on 2017/6/19.
//  Copyright © 2017年 caike. All rights reserved.
//

import UIKit

class CKChildViewController: UIViewController {

    var exmapleIndex = 0
    var slideMenu:CKSlideMenu?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
        view.backgroundColor = UIColor.white
        
        switch exmapleIndex {
        case 0:
            view.backgroundColor = UIColor.init(red: CGFloat(arc4random()%256)/255, green: CGFloat(arc4random()%256)/255, blue: CGFloat(arc4random()%256)/255, alpha: 1)
        case 1:
            example1()
        case 2:
            example2()
        case 3:
            example3()
        case 4:
            example4()
        default:
            break
        }
        
    }
    
    func example1()  {
        let titles = ["今天","速度","是啊","测试","水电","今天","速度","是啊","今天","速度","是啊"]
        var arr:Array<UIViewController> = []
        for _ in 0 ..< titles.count {
            let vc = CKChildViewController()
            self.addChildViewController(vc)
            arr.append(vc)
        }
        slideMenu = CKSlideMenu(frame: CGRect(x:0,y:64,width:view.frame.width,height:40), titles:titles, childControllers:arr)
        view.addSubview(slideMenu!)
    }
    
    func example2()  {
        let titles = ["今天","速度100","是啊","测试机","水电","今天","速度","是啊","今天","速度","是啊"]
        var arr:Array<UIViewController> = []
        for _ in 0 ..< titles.count {
            let vc = CKChildViewController()
            self.addChildViewController(vc)
            arr.append(vc)
        }
        slideMenu = CKSlideMenu(frame: CGRect(x:0,y:64,width:view.frame.width,height:40), titles:titles, childControllers:arr)
        slideMenu?.indicatorStyle = .normal
        slideMenu?.indicatorWidth = 25

        slideMenu?.titleStyle = .transfrom
        slideMenu?.selectedColor = UIColor.orange
        slideMenu?.unSelectedColor = UIColor.gray
        //        slideMenu?.font = UIFont.systemFont(ofSize: 10)
        view.addSubview(slideMenu!)
    }
    
    func example3()  {
        let titles = ["今天","速度","是啊","测试"]
        var arr:Array<UIViewController> = []
        for _ in 0 ..< titles.count {
            let vc = CKChildViewController()
            self.addChildViewController(vc)
            arr.append(vc)
        }
        slideMenu = CKSlideMenu(frame: CGRect(x:0,y:64,width:view.frame.width,height:40), titles:titles, childControllers:arr)
        slideMenu?.indicatorStyle = .stretch
        slideMenu?.titleStyle = .transfrom
        slideMenu?.indicatorHeight = 1.5
        view.addSubview(slideMenu!)
    }
    
    func example4()  {
        let titles = ["今天","速度100","是啊","测试机","水电","今天","速度","是啊","今天","速度","是啊"]
        var arr:Array<UIViewController> = []
        for _ in 0 ..< titles.count {
            let vc = CKChildViewController()
            self.addChildViewController(vc)
            arr.append(vc)
        }
        slideMenu = CKSlideMenu(frame: CGRect(x:0,y:64,width:view.frame.width,height:40), titles:titles, childControllers:arr)
        
        slideMenu?.titleStyle = .gradient
        slideMenu?.indicatorStyle = .followText
        slideMenu?.bottomPadding = 0
        view.addSubview(slideMenu!)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
