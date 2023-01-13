//
//  ViewController.swift
//  TableViewWithCollectionViewCell
//
//  Created by Arpan Bhowmik on 11/1/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var models: [Model] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        models.append(Model(text: "First", imageName: "image1"))
        models.append(Model(text: "Second", imageName: "image2"))
        models.append(Model(text: "Third", imageName: "image3"))
        models.append(Model(text: "Demo", imageName: "image4"))
        
        models.append(Model(text: "First", imageName: "image1"))
        models.append(Model(text: "Second", imageName: "image2"))
        models.append(Model(text: "Third", imageName: "image3"))
        models.append(Model(text: "Demo", imageName: "image4"))

        tableView .register(UINib(nibName: TableViewCell.identifier, bundle: nil), forCellReuseIdentifier: TableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as! TableViewCell
        cell.configure(with: models)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 260.0
    }
}

struct Model {
    let text: String
    let imageName: String
}

