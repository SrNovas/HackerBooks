//
//  AGTBook.swift
//  HackerBooks
//
//  Created by Adrian Perez Lopez on 13/7/16.
//  Copyright © 2016 NovasFactory. All rights reserved.
//

import Foundation

class AGTBook : Equatable, Hashable{
    
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
    
    //MARK: - Proxies
    //Para comparar, no voy a ordenar (evisto el proxyForSorting)
    var proxyForComparison : String{
        
        get{
            
            return "\(title)\(authors)\(tags)\(imageUrl)\(pdfUrl)"
            
        }
        
    }
    
    //MARK: - Hashable
    //public var hashValue: Int { get }
    var hashValue: Int {
    
        get{
            
            return title.hashValue
            
        }
    
    }
    
}

//MARK: - Equatable
//public func ==(lhs: Self, rhs: Self) -> Bool
func ==(lhs : AGTBook, rhs : AGTBook) -> Bool{

    guard !(lhs === rhs) else{
        
        return true
        
    }
    
    //Miro si tienen el mismo tipo de clase
    guard (lhs.dynamicType == rhs.dynamicType) else{
        
        return false
        
    }
    
    return lhs.proxyForComparison == rhs.proxyForComparison

}














