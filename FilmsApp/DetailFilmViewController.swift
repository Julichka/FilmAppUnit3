//
//  DetailFilmViewController.swift
//  FilmsApp
//
//  Created by Kirill Timanovsky on 29.07.2021.
//

import UIKit

class DetailFilmViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {


    @IBOutlet weak var posterImageView: UIImageView!
    
    @IBOutlet weak var filmTitleLabel: UILabel!
    
    @IBOutlet weak var releaseYearLabel: UILabel!
    
    @IBOutlet weak var ratingLabel: UILabel!
    
    @IBOutlet weak var galleryCollection: UICollectionView!
    
    @IBOutlet weak var descriptionTextView: UITextView!
    
    var model: TestModel? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filmTitleLabel.text = model?.testTitle
        ratingLabel.text = model?.testRating
        posterImageView.image = UIImage(named: model?.testPic ?? "")
        releaseYearLabel.text = model?.testYear
        descriptionTextView.text = model?.overview
        galleryCollection.delegate = self
        galleryCollection.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model?.frames.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = galleryCollection.dequeueReusableCell(withReuseIdentifier: "frameIcon", for: indexPath) as? FilmFrame else { return  UICollectionViewCell() }
                    
        let data = model?.frames[indexPath.row]
        cell.iconFrame.image = UIImage(named: data ?? "")
                     
        return cell
    }
    
    @IBAction func onTapIcon(_ sender: Any) {
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! FullPicViewController
        vc.imageName = model?.testPic
    }

}
