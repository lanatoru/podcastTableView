//
//  ViewController.swift
//  PodcastTableView
//
//  Created by Yuliya Masalkina on 31.07.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var dateUpdated: UILabel!
   
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    var podcast = Podcast()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameLabel.text = podcast.name
        dateUpdated.text = podcast.updated
        descriptionLabel.text = podcast.description
        imageView.image = UIImage(named: podcast.imagename)
    }


}

