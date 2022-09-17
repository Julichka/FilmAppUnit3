//
//  ViewController.swift
//  FilmsApp
//
//  Created by Kirill Timanovsky on 29.07.2021.
//

import UIKit

class MainViewController: UIViewController {
    
    
    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    
    @IBOutlet weak var filmsSearchBar: UISearchBar!
    
    var testArray: [TestModel] = [
                                
        TestModel(testPic: "image1", testTitle: "Фильм 1", testYear: "2001", testRating: "4.7", overview: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when", frames: ["image1", "image2", "image3", "image1", "image2", "image3"]),
        
        TestModel(testPic: "image2", testTitle: "Фильм 2", testYear: "2003", testRating: "4.1", overview: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when", frames: ["image1", "image2", "image3", "image1", "image2", "image3"]),
        
        TestModel(testPic: "image3", testTitle: "Фильм 3", testYear: "2013", testRating: "4.3", overview: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when", frames: ["image1", "image2", "image3", "image1", "image2", "image3"]),
        
        TestModel(testPic: "image4", testTitle: "Фильм 4", testYear: "2015", testRating: "4.8", overview: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when", frames: ["image1", "image2", "image3", "image1", "image2", "image3"]),
        
        TestModel(testPic: "image5", testTitle: "Фильм 5", testYear: "2016", testRating: "9.0", overview: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when", frames: ["image1", "image2", "image3", "image1", "image2", "image3"]),
        
        TestModel(testPic: "image6", testTitle: "Фильм 6", testYear: "2017", testRating: "4.6", overview: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when", frames: ["image1", "image2", "image3", "image1", "image2", "image3"]),
        
        TestModel(testPic: "image7", testTitle: "Фильм 7", testYear: "2021", testRating: "6.9", overview: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when", frames: ["image1", "image2", "image3", "image1", "image2", "image3"]),
        
        TestModel(testPic: "image8", testTitle: "Фильм 8", testYear: "2004", testRating: "5.3", overview: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when", frames: ["image1", "image2", "image3", "image1", "image2", "image3"]),
        
        TestModel(testPic: "image9", testTitle: "Фильм 9", testYear: "2005", testRating: "1.4", overview: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when", frames: ["image1", "image2", "image3", "image1", "image2", "image3"]),
        
        TestModel(testPic: "image10", testTitle: "Фильм 10", testYear: "2008", testRating: "5.8", overview: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when", frames: ["image1", "image2", "image3", "image1", "image2", "image3"]),
        
        TestModel(testPic: "image11", testTitle: "Фильм 11", testYear: "2000", testRating: "4.9", overview: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when", frames: ["image1", "image2", "image3", "image1", "image2", "image3"]),
        
        TestModel(testPic: "image12", testTitle: "Фильм 12", testYear: "2009", testRating: "4.3", overview: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when", frames: ["image1", "image2", "image3", "image1", "image2", "image3"]),
        
        TestModel(testPic: "image13", testTitle: "Фильм 13", testYear: "2007", testRating: "1.9", overview: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when", frames: ["image1", "image2", "image3", "image1", "image2", "image3"]),
        
        TestModel(testPic: "image14", testTitle: "Фильм 14", testYear: "2001", testRating: "8.5", overview: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when", frames: ["image1", "image2", "image3", "image1", "image2", "image3"]),
        
        TestModel(testPic: "image15", testTitle: "Фильм 15", testYear: "2004", testRating: "7.7", overview: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when", frames: ["image1", "image2", "image3", "image1", "image2", "image3"])
        
                                ]
 
    override func viewDidLoad() {
        super.viewDidLoad()
        mainCollectionView.dataSource = self
        mainCollectionView.delegate = self
        
        filmsSearchBar.delegate = self
        
        let xibCell = UINib(nibName: "FilmCollectionViewCell", bundle: nil)
        
        mainCollectionView.register(xibCell, forCellWithReuseIdentifier: "FilmCell")
        
        mainCollectionView.reloadData()
    }

}

extension MainViewController: UICollectionViewDataSource, UICollectionViewDelegate, UISearchBarDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return testArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = mainCollectionView.dequeueReusableCell(withReuseIdentifier: "FilmCell", for: indexPath) as? FilmCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        
        cell.posterPreviewImageView.image = UIImage(named: testArray[indexPath.row].testPic ?? "image1")
        cell.filmTitleLabel.text = testArray[indexPath.row].testTitle
        cell.releaseYearLabel.text = testArray[indexPath.row].testYear
        cell.ratingLabel.text = testArray[indexPath.row].testRating
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let secondViewController = storyBoard.instantiateViewController(withIdentifier: "DetailFilmViewController") as! DetailFilmViewController
        secondViewController.model = testArray[indexPath.row]
        self.present(secondViewController, animated:true, completion:nil)
    }
}
