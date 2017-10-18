//
//  ViewController.swift
//  BrokenSearch
//
//  Created by Jacob Schwartz on 10/18/17.
//  Copyright © 2017 com.omgpanda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let searchController = UISearchController(searchResultsController: nil)
        navigationItem.searchController = searchController
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next",
                                                            style: .plain,
                                                            target: self,
                                                            action: #selector(ViewController.onSwitch))
        
        searchController.searchBar.showsCancelButton = false
        
        let label = UILabel(frame: view.bounds)
        label.text = "UISearchController with showsCancelButton = \(searchController.searchBar.showsCancelButton)"
        view.addSubview(label)
    }
    
    @objc func onSwitch() {
        navigationController?.pushViewController(AnotherViewController(), animated: true)
    }
}

class AnotherViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let searchController = UISearchController(searchResultsController: nil)
        navigationItem.searchController = searchController
        
        searchController.searchBar.showsCancelButton = true
        
        let label = UILabel(frame: view.bounds)
        label.text = "UISearchController with showsCancelButton = \(searchController.searchBar.showsCancelButton)"
        view.addSubview(label)
    }
}
