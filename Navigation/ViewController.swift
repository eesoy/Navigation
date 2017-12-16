//
//  ViewController.swift
//  Navigation
//
//  Created by SO YOUNG on 2017. 12. 16..
//  Copyright © 2017년 SO YOUNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func goPage2(_ sender: UIButton) {
//        let vc = Page2ViewController()
//        self.navigationController?.pushViewController(vc, animated: true)
        //optional 오류 방지 래핑
        if let pc =  self.storyboard?.instantiateViewController(withIdentifier: "Page2View") {
            navigationController?.pushViewController(pc, animated: true)
        }
        
    }
    
    @IBAction func goPage2WithSegue(_ sender: Any) {
        performSegue(withIdentifier: "goToPage2Segue", sender: self)
    }
    
    @IBAction func goPage4WithAnotherStoryBoard(_ sender: UIButton) {
        let page4StoryBoard = UIStoryboard(name: "Page4Storyboard", bundle: nil)
        
        let pc4 = page4StoryBoard.instantiateViewController(withIdentifier: "Page4View")
       
        //네비게이션 뷰
        // navigationController?.pushViewController(pc4, animated: true)
        
        //모달
        present(pc4, animated: true, completion: nil)
        
        
    }
}

