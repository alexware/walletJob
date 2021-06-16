//
//  ViewController.swift
//  walletJob
//
//  Created by Alejandro Ramos Grifé on 27/03/2020.
//  Copyright © 2020 alexware. All rights reserved.
//

import UIKit

protocol WelcomeViewProtocol {
    func setLists(with objects:[String])
}

class WelcomeViewController: UIViewController, WelcomeViewProtocol  {
    
    var presenter: WelcomePresenter?
    
    private var objects:[String]?
    private var tableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigation()
        setupTableView()
        //self.view.backgroundColor = UIColor.red
    }
    
    func setupNavigation() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNewObject))
    }
    
    func setupTableView(){
    //Registers a class for use in creating new table cells.
        tableView = createTableView
        tableView?.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        guard let table = tableView else {
            fatalError()
        }
        table.delegate = self
        table.dataSource = self
        
        self.view.addSubview(table)
        
        table.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        table.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        table.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        table.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
    }
    
    var createTableView = { () -> UITableView in
        var table = UITableView.init(frame: UIScreen.main.bounds)
        return table
    }()
    
    func setLists(with objects: [String]) {
        self.objects = objects
        self.tableView?.reloadData()
    }
    
    @objc func addNewObject() {
        guard let presenter = presenter else { return }
        presenter.addNewObject()
    }
    
}

extension WelcomeViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.objects?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = objects?[indexPath.row] ?? ""
        
        return cell
    }
}

extension WelcomeViewController: UITableViewDataSource {
    
}

