//
//  AvatarTableViewController.swift
//  Homework21AvatarApp
//
//  Created by 黃柏嘉 on 2021/11/25.
//

import UIKit

class AvatarTableViewController: UITableViewController {
    
    //紙娃娃主體
    @IBOutlet weak var sittingPoseImage: UIImageView!
    @IBOutlet weak var headImage: UIImageView!
    @IBOutlet weak var faceImage: UIImageView!
    @IBOutlet weak var accessoriesImage: UIImageView!
    @IBOutlet weak var moustacheImage: UIImageView!
    //背景切換
    @IBOutlet weak var backgroundScrollView: UIScrollView!
    @IBOutlet weak var backgroundPageControl: UIPageControl!
    //列表
    @IBOutlet weak var listScrollView: UIScrollView!
    @IBOutlet var bodyView: UIView!
    @IBOutlet var headView: UIView!
    @IBOutlet var faceView: UIView!
    @IBOutlet var moustacheView: UIView!
    @IBOutlet var accessoriesView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundScrollView.delegate = self
    }

    //背景切換顯示
    override func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let page = backgroundScrollView.contentOffset.x/414
        backgroundPageControl.currentPage = Int(page)
    }
    @IBAction func changeBackground(_ sender: UIPageControl) {
        backgroundScrollView.contentOffset.x = CGFloat(backgroundPageControl.currentPage*414)
    }
    //切換列表
    @IBAction func showBodyList(_ sender: UIButton) {
        let lastView = listScrollView.subviews
        lastView[0].removeFromSuperview()
        listScrollView.addSubview(bodyView)
    }
    @IBAction func showHeadList(_ sender: UIButton) {
        let lastView = listScrollView.subviews
        lastView[0].removeFromSuperview()
        listScrollView.addSubview(headView)
    }
    @IBAction func showMoustacheList(_ sender: UIButton) {
        let lastView = listScrollView.subviews
        lastView[0].removeFromSuperview()
        listScrollView.addSubview(moustacheView)
    }
    @IBAction func showFaceList(_ sender: UIButton) {
        let lastView = listScrollView.subviews
        lastView[0].removeFromSuperview()
        listScrollView.addSubview(faceView)
    }
    @IBAction func showAccessoriesList(_ sender: UIButton) {
        let lastView = listScrollView.subviews
        lastView[0].removeFromSuperview()
        listScrollView.addSubview(accessoriesView)
    }
    
    //隨機變換造型
    @IBAction func randomStyle(_ sender: UIButton) {
        accessoriesImage.image = UIImage(named: "accessories\(Int.random(in: 0...8))")
        faceImage.image = UIImage(named: "face\(Int.random(in: 0...19))")
        headImage.image = UIImage(named: "head\(Int.random(in: 0...19))")
        moustacheImage.image = UIImage(named: "Moustache\(Int.random(in: 0...16))")
        sittingPoseImage.image = UIImage(named: "sitting\(Int.random(in: 0...10))")
        backgroundPageControl.currentPage = Int.random(in: 0...4)
        backgroundScrollView.contentOffset.x = CGFloat(backgroundPageControl.currentPage*414)
    }
    
    //清單點選
    @IBAction func changeBody(_ sender: UIButton) {
        sittingPoseImage.image = UIImage(named: "sitting\(sender.tag)")
    }
    @IBAction func changeHead(_ sender: UIButton) {
        headImage.image = UIImage(named: "head\(sender.tag)")
    }
    @IBAction func changeFace(_ sender: UIButton) {
        faceImage.image = UIImage(named: "face\(sender.tag)")
    }
    @IBAction func changeMoustache(_ sender: UIButton) {
        moustacheImage.image = UIImage(named: "Moustache\(sender.tag)")
    }
    @IBAction func changeAccessories(_ sender: UIButton) {
        accessoriesImage.image = UIImage(named: "accessories\(sender.tag)")
    }
    
   
}
