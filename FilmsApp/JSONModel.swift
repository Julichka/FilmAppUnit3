//
//  JSONModel.swift
//  FilmsApp
//
//  Created by Kirill Timanovsky on 30.07.2021.
//

import Foundation
import AVKit

class JSONModel: Codable {
    var original_title: String?
    var poster_path: String?
    var release_date: String?
    var overview: String?
    var vote_average: Double?
    var backdrop_path: String?
}

class TestModel {
    var testPic: String?
    var testTitle: String?
    var testYear: String?
    var testRating: String?
    var overview: String?
    var frames:[String]
    
    init(testPic: String?, testTitle: String?, testYear: String?, testRating: String?, overview: String?, frames:[String]) {
        self.testPic = testPic
        self.testTitle = testTitle
        self.testYear = testYear
        self.testRating = testRating
        self.overview = overview
        self.frames = frames
    }
}
