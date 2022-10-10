//
//  CityListViewController.swift
//  weatherApp
//
//  Created by 정현화 on 2022/10/10.
//

import UIKit

class CityListViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
    }
    
}

extension CityListViewController: UISearchBarDelegate {
    private func dismissKeyBoard() {
        searchBar.resignFirstResponder()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        dismissKeyBoard()
        
        guard let searchText = searchBar.text, searchText.isEmpty == false else { return }
        
    }
}

