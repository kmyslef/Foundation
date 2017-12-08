//
//  Launch.swift
//  TFoundation
//
//  Created by 狄克 on 2017/12/5.
//  Copyright © 2017年 狄克. All rights reserved.
//

import UIKit

class Launch: RabbitViewController {

    deinit{
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated);
        
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated);
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated);
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    
    
    /* 以下是自己的方法 */
    @IBAction func btnAction(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "Root", sender: nil);
    }
    
    
    /* 以下是代理方法 */

}
