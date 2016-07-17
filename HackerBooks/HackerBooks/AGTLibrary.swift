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
    
    var library: [Tag : [AGTBook]]
    
    //Array de libros
    var books : [AGTBook]
    
    var tags : [Tag]
    
    
    //MARK: - Initialization
    init(library : [Tag : [AGTBook]], books : [AGTBook], tags : [Tag]){
        
        self.library = library
        self.books = books
        self.tags = tags
        
    }
    
    
//    var numberOfTags : Int{
//        
//        get{
//            
//            return self.library.keys.count
//            
//        }
//        
//    }
    
    //Array de tags
    
    
    //Recorrer los libros de "books", miro sus tags e inserto en el diccionario
    func createDictionary(arrayBooks books : [AGTBook])-> Void{
        
        self.library = [Tag : [AGTBook]]()
        
        for book in books{
            
            for tag in book.tags{
                
                if(self.library.keys.contains(Tag(nameTag: tag.nameTag))){
                    
                    self.library[Tag(nameTag: tag.nameTag)]?.append(book)
                    
                }
                
            }
            
        }
        
    }
    
    
    
    
}