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
    let title : String?
    let authors : [String]
    let tags : Set<String>
    let imageUrl : NSURL?
    let pdfUrl : NSURL?
    
    //MARK: - Computed properties
    var titleName : String?{
        
        get{
            
            guard let myTitle = title else {
                
                return "Al carajo, title a nil"
                
            }
            
            return myTitle
            
        }
        
    }
    
    var imageSource : NSURL?{
        
        get{
            
            guard let myImage = imageUrl else{
                
                return imageUrl
                
            }
            
            return myImage
            
        }
        
    }
    
    var pdfSource : NSURL?{
        
        get{
            
            guard let myPdf = pdfUrl else{
                
                return pdfUrl
                
            }
            
            return myPdf
            
        }
        
    }
    
    //MARK: - Initialization
    init(title : String, authors : [String], tags : Set<String>, imageUrl : NSURL, pdfUrl : NSURL){

        self.title = title
        self.authors = authors
        self.tags = tags
        self.imageUrl = imageUrl
        self.pdfUrl = pdfUrl

    }
    
}