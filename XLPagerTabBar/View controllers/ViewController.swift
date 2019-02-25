//
//  ViewController.swift
//  XLPagerTabBar
//
//  Created by Mai Hassan on 2/20/19.
//  Copyright © 2019 Abanoub Ghaly. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class ViewController: ButtonBarPagerTabStripViewController {

    override func viewDidLoad() {
        settings.style.buttonBarItemBackgroundColor = .white
        settings.style.buttonBarItemTitleColor = .black
        // tableView.register(UINib(nibName: "FirstTableViewCell", bundle: nil), forCellReuseIdentifier: "firstCell")
        settings.style.buttonBarBackgroundColor = .white
        settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 14)
        settings.style.selectedBarHeight = 2.0
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.buttonBarItemTitleColor = .black
        settings.style.buttonBarItemsShouldFillAvailiableWidth = true
        settings.style.buttonBarLeftContentInset = 0
        settings.style.buttonBarRightContentInset = 0
        super.viewDidLoad()
    }

    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        
        let first = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "first")
        let second = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "second")
        return [first, second]
    }

}

