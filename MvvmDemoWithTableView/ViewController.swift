//
//  ViewController.swift
//  MvvmDemoWithTableView
//
//  Created by Puspank Kumar on 09/06/19.
//  Copyright © 2019 Puspank Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldItem: UITextField!
    @IBOutlet weak var tableViewItems: UITableView!
    let identifier = "cell"
    var viewModel: TodoViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "TodoItemTableViewCell", bundle: nil)
        tableViewItems.register(nib, forCellReuseIdentifier: identifier)
        viewModel = TodoViewModel()
    }

    @IBAction func addItem(_ sender: Any) {
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (viewModel?.items.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? TodoItemTableViewCell
        let itemViewModel = viewModel?.items[indexPath.row]
        cell?.configure(withViewModel: itemViewModel!)
        return cell!
    }
}

