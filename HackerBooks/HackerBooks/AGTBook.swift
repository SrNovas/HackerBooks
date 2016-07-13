//
//  AGTBook.swift
//  HackerBooks
//
//  Created by Adrian Perez Lopez on 13/7/16.
//  Copyright © 2016 NovasFactory. All rights reserved.
//

import Foundation

class AGTBook{
    
    //MARK: - Stored properties
    let title : String
    let authors : [String]
    let tags : Set<String>
    let imageUrl : NSURL
    let pdfUrl : NSURL
    
    //MARK: - Initialization
    init(title : String, authors : [String], tags : Set<String>, imageUrl : NSURL, pdfUrl : NSURL){

        self.title = title
        self.authors = authors
        self.tags = tags
        self.imageUrl = imageUrl
        self.pdfUrl = pdfUrl

    }
    
}