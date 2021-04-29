//
//  ViewController.swift
//  MVVMPattern
//
//  Created by Alley Pereira on 28/04/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private var models = [Person]()

    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(PersonFollowingTableViewCell.self,
                           forCellReuseIdentifier: PersonFollowingTableViewCell.identifier)
        return tableView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        configureModels()
        view.addSubview(tableView)
        tableView.frame = view.bounds
        tableView.dataSource = self
        tableView.delegate = self
    }

    func configureModels() {
        let names = ["Joe", "Miguel", "Rony", "Dan", "Mike"]

        for name in names {
            models.append(Person(name: name))
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = models[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(
                withIdentifier: PersonFollowingTableViewCell.identifier,
                for: indexPath) as? PersonFollowingTableViewCell else { return UITableViewCell() }
        cell.configure(with: PersonFollowingTableViewCellViewModel(with: model))
        cell.delegate = self
        return cell
    }
}

extension ViewController: PersonFollowingTableViewCellDelegate {
    func personFollowingTableViewCell(_ cell: PersonFollowingTableViewCell, didTapWith viewModel: PersonFollowingTableViewCellViewModel) {

    }
}
