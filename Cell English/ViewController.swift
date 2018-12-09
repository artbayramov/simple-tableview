//
//  ViewController.swift
//  Cell English
//
//  Created by Arthur on 06/12/2018.
//  Copyright © 2018 Arthur. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    var myTableView : UITableView = {
        let tableView = UITableView()
        return tableView
    }()
    
    var animalArray : [String] = ["Dog", "Cat", "Bear", "Bat", "Otter"]
    var cellID = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor.white
        
        myTableView.frame = view.frame
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
        myTableView.delegate = self
        myTableView.dataSource = self
        view.addSubview(myTableView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: cellID)
        cell?.textLabel?.text = animalArray[indexPath.row]
        return cell!
    }
    
}

