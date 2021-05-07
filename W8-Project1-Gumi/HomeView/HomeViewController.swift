//
//  HomeViewController.swift
//  W8-Project1-Gumi
//
//  Created by Thành Nguyên on 06/05/2021.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var keyTextField: UITextField!
    
    var networkManager = NetworkManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
    }
    
    @IBAction func getMovieButtonTapped(_ sender: Any) {
        let key = keyTextField.text
        NetworkManager.MovieAPIKey = key ?? ""
        networkManager.getNewMovies(page: 1) { movies, error in
            if let err = error {
                print(err)
            } else {
                print("Success")
//                print(movies ?? "")
            }
        }
    }
    
}
