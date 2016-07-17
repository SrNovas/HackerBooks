//
//  AGTLibrary.swift
//  HackerBooks
//
//  Created by Adrian Perez Lopez on 13/7/16.
//  Copyright © 2016 NovasFactory. All rights reserved.
//

//    let array = [34, 56, 76, 77, 75]
//
//    if array.contains(34) {
//
//        print("contains")
//
//    }else {
//
//        print("Not Contains")
//
//    }

import Foundation

class AGTLibrary{
    
    var booksArray = [AGTBook]()
    var libraryDictionary = [Tag : [AGTBook]]()
    
    //MARK: - Initialization
    init(arrayBooks libros : [AGTBook]){
        
        libraryDictionary = [Tag : [AGTBook]]()
        
        for book in libros{
            
            for tag in book.tags{
                
                if(self.libraryDictionary.keys.contains(Tag(nameTag: tag.nameTag))){
                    
                    self.libraryDictionary[Tag(nameTag: tag.nameTag)]?.append(book)
                    
                }
                
            }
            
        }
        
    }
    
    
    //Número de tags
    var numberOfTags : Int{
        
        get{
            
            return self.libraryDictionary.keys.count
            
        }
        
    }
    
    func booksPerTag (tag : Tag) -> [AGTBook]{
        
        var mybooks : [AGTBook]
        
        if(self.libraryDictionary.keys.contains(Tag(nameTag: tag.nameTag))){
            
            mybooks = self.libraryDictionary[Tag(nameTag : tag.nameTag)]!
            
            //Aquí hay que devolver la func <(lhs : Tag, rhs : Tag) -> Bool
            return <(
            
        }
        
        return mybooks
        
    }
    
}