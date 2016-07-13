//
//  JSONProcessing.swift
//  HackerBooks
//
//  Created by Adrian Perez Lopez on 13/7/16.
//  Copyright © 2016 NovasFactory. All rights reserved.
//

import Foundation
import UIKit

/*
 {
 "authors": "Scott Chacon, Ben Straub",
 "image_url": "http://hackershelf.com/media/cache/b4/24/b42409de128aa7f1c9abbbfa549914de.jpg",
 "pdf_url": "https://progit2.s3.amazonaws.com/en/2015-03-06-439c2/progit-en.376.pdf",
 "tags": "version control, git",
 "title": "Pro Git"
 }
 */

class JSONProcessing{
    
    //MARK: - Aliases
    typealias JSONObject        = AnyObject
    typealias JSONDictionary    = [String : JSONObject]
    typealias JSONArray         = [JSONDictionary]
    
    //MARK: - Decodification
    func decode(AGTBook json : JSONDictionary) throws ->AGTBook{
        
        guard let authors = json["authors"] as? String else{
            
            //A todos los String les voy a poner el wrongJSONFormat
            throw commonErrors.wrongJSONFormat
            
        }
        
        //Validamos el diccionario.
        //Extraemos el valor de image_url (anyobject), le hago cast a string, si sale bien saltamos y me queda en imageUrl la cadena para usarla, si falla -> else (devolvemos el error)
        //["image_url"] es la clave del JSON
        guard let imageUrl = json["image_url"] as? String,
            image_url = NSURL(string : imageUrl) else{
                
                //A todos los NSURL les voy a poner wrongURLFormatForJSONResource
                throw commonErrors.wrongURLFormatForJSONResource
                
        }
        
        guard let pdfUrl = json["pdf_url"] as? String,
            pdf_url = NSURL(string: pdfUrl) else{
                
                throw commonErrors.wrongURLFormatForJSONResource
                
        }
        
        guard let tags = json["tags"] as? String else{
            
            throw commonErrors.wrongJSONFormat
            
        }
        
        guard let title = json["title"] as? String else{
            
            throw commonErrors.wrongJSONFormat
            
        }
                
        //Problema, a authors y tags tengo que darle formato array, además, fijo que viene doble en el JSON (del palo "X, Y") y tengo que separarlo...
        let splitAuthor = authors.componentsSeparatedByString(", ")
        let splitTags = tags.componentsSeparatedByString(", ")
        
        //Bombazo, tags es array del tipo [Tag], asi que no puedo cambiarlo a uno de tipo [string], hay que hacer algo para transformarlo. Quizá crearme un array [string], recorrer mi [tag] e insertarlo en el nuevo
        
        return AGTBook(title : title, authors : splitAuthor, tags : splitTags, imageUrl : image_url, pdfUrl : pdf_url)
        
    }
    
}