//
//  MainViewController.swift
//  SmartPlayer
//
//  Created by Jianguo Wu on 2017/3/12.
//  Copyright © 2017年 Jianguo Wu. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation


class MainViewController: AVPlayerViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        player = AVPlayer(url: URL(string: "https://www.apple.com/media/cn/ipad-pro/2016/8242d954_d694_42b8_b6b7_a871bba6ed54/films/feature/ipadpro-9-7inch-feature-cn-20160321_1920x1080l.mp4")!)
        player?.rate = 2
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(6)) {
            self.player?.rate = 2
            print("set")
        }
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
