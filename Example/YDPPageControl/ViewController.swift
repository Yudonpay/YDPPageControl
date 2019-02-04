//
//  ViewController.swift
//  YDPPageControl
//
//  Created by José Miguel Herrero on 01/02/2019.
//  Copyright © 2019 José Miguel Herrero. All rights reserved.
//

import UIKit
import YDPPageControl

class ViewController: UIViewController {

    @IBOutlet weak var pageControl: YDPPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        scrollView.isPagingEnabled = true
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        // Update scroll view content size.
        let width = self.scrollView.bounds.width
        let count: CGFloat = CGFloat(self.pageControl.pageCount)
        let contentSize = CGSize(width: width * count,
                                 height: scrollView.bounds.height)
        scrollView.contentSize = contentSize
    }
    
}

extension ViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let page = scrollView.contentOffset.x / scrollView.bounds.width
        let progressInPage = scrollView.contentOffset.x - (page * scrollView.bounds.width)
        let progress = CGFloat(page) + progressInPage

        pageControl.progress = progress
    }
}

