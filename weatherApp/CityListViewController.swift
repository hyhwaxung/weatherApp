//
//  CityListViewController.swift
//  weatherApp
//
//  Created by 정현화 on 2022/10/10.
//

import UIKit

class ResultsVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
    }
}

class CityListViewController: UIViewController, UISearchResultsUpdating {
    
    let searchController = UISearchController(searchResultsController: ResultsVC())

    override func viewDidLoad() {
        super.viewDidLoad()
        searchController.searchBar.delegate = self
        searchController.searchResultsUpdater = self
        navigationItem.searchController = searchController
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else { return }
        
        let vc = searchController.searchResultsController as? ResultsVC
        vc?.view.backgroundColor = .systemYellow
    }
}

extension CityListViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        //
    }
}
