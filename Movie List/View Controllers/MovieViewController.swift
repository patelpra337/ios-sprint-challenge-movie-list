//
//  MovieViewController.swift
//  Movie List
//
//  Created by patelpra on 11/23/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, MovieTableViewCellDelegate {
    
    let movieController = MovieController()
    
    @IBOutlet var movieTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.movieTableView.delegate = self
        self.movieTableView.dataSource = self

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.movieController.movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return .init()
    }
    
    func tappedSeenButton(on cell: MovieTableViewCell) {
        guard let indexPath = self.movieTableView.indexPath(for: cell) else { return }
        self.movieController.toggledSeen(at: indexPath)
        self.movieTableView.reloadRows(at: [indexPath], with: .none)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToAddMovie" {
            guard let addMovieVC = segue.destination as? AddMovieViewController else { return }
            
            addMovieVC.movieController = self.movieController
        }
    }
}
