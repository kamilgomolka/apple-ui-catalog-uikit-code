//
//  TableViewStyleGroupedViewController.swift
//  AppleUICatalogUIKitCode
//
//  Created by Kamil Gomółka on 13/04/2022.
//

import UIKit

class TableViewStyleGroupedViewController: SimpleTableViewController {

    // MARK: Setup

    override func createTableView() -> UITableView {
        UITableView(frame: .zero, style: .grouped)
    }

    // MARK: UITableViewDataSource

    override func numberOfSections(in tableView: UITableView) -> Int {
        3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SimpleTableViewCell.identifier, for: indexPath)

        cell.textLabel?.text = "IndexPath [\(indexPath.section), \(indexPath.row)]"

        return cell
    }
}
