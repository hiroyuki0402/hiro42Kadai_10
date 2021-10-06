//
//  PrefecturesTableViewController.swift
//  Hiro42Kadai10
//
//  Created by 白石裕幸 on 2021/10/06.
//

import UIKit

class DisplayPrefecturesToTableViewController: UITableViewController {
    private let prefectures = Prefectures.prefectures()

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prefectures.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "prefecturesCell")
        cell.textLabel?.text = prefectures[indexPath.row]
        cell.detailTextLabel?.text = "\(indexPath.row + 1)番目の都道府県です"
        return cell
    }
    override func tableView(_ tableView: UITableView,
                            willDisplay cell: UITableViewCell,
                            forRowAt indexPath: IndexPath) {
        switch indexPath.row % 3 {
        case 1:
            cell.backgroundColor = #colorLiteral(red: 0.9809280038, green: 0.7752041221, blue: 0.7940962911, alpha: 1)
        case 2:
            cell.backgroundColor = #colorLiteral(red: 0.8599545956, green: 0.9981891513, blue: 0.5744469762, alpha: 1)
        default:
            cell.backgroundColor = #colorLiteral(red: 0.6728177071, green: 0.7109459043, blue: 0.8603231907, alpha: 1)
        }
    }
}
