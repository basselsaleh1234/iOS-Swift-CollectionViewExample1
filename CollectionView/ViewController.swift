//
//  ViewController.swift
//  CollectionView
//
//  Created by Bassel Saleh on 28.07.20.
//  Copyright © 2020 Bassel. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource {
    
    
    var models = [Model]()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=myTable.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath)as! MyTableViewCell
        
        cell.configure(models: models)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }
    

    @IBOutlet var myTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        models.append(Model( imageName: "Image-1" ,text:"titlel 1"))
                models.append(Model( imageName: "Image-2" ,text:"titel 2"))
                models.append(Model( imageName: "Image-3" ,text:"titel 3"))
                models.append(Model( imageName: "Image-4" ,text:"4"))
             
             
           models.append(Model( imageName: "Image-1" ,text:"titlel 1"))
                          models.append(Model( imageName: "Image-2" ,text:"titel 2"))
                          models.append(Model( imageName: "Image-3" ,text:"titel 3"))
                          models.append(Model( imageName: "Image-4" ,text:"titel 3"))
                       models.append(Model( imageName: "Image-1" ,text:"titlel 1"))
                                      models.append(Model( imageName: "Image-2" ,text:"ftitel 2"))
                                      models.append(Model( imageName: "Image-3" ,text:"titel 2"))
                                      models.append(Model( imageName: "Image-4" ,text:"titel 3"))
                                   
        
        let nib=UINib(nibName: "MyTableViewCell", bundle: nil)
        myTable.register(nib, forCellReuseIdentifier: "MyTableViewCell")
        myTable.delegate=self
        myTable.dataSource=self
        
    }


}

struct Model {
    let imageName:String
    let text:String
    
    init(imageName:String,text:String) {
        self.imageName=imageName
        self.text=text
    }
    
}

