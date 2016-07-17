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
 "image_url": "https://hackershelf.com/media/cache/b4/24/b42409de128aa7f1c9abbbfa549914de.jpg",
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
        
        //MARK: - Separate
        //Procesar authors y tags, desde el JSON vienen de la siguiente manera "X, Y", tengo que separarlos
        
        //Para este no hace falta tanta historia, la función magica te lo trata como un "array", así que a piñón al return y elimino lo sobrante, se queda en una línea
        let splitAuthor = authors.componentsSeparatedByString(", ")
        
        //Ahora con Tags, creo array y le inserto...
        var tagsArray = [Tag]()
        let splitTags = tags.componentsSeparatedByString(", ")
        
        for elements in splitTags {
            
            //
            //Meto en el array mu nombre del tag (de ahí nameTag, que está en mi clase Tag)
            //¡¡¡¡¡¡¡¡¡¡Ojo por que estoy insertando, puedo estar metiendo repetidos!!!!!!!!!!
            //
            tagsArray.append(Tag(nameTag: elements))
            
        }
        
        return AGTBook(title : title, authors : splitAuthor, tags : tagsArray, imageUrl : image_url, pdfUrl : pdf_url)
        
    }

    //MARK - Loading JSON
    //El bundle (carpeta que se hace pasar por fichero) se usa para indcar donde está alojado (si no lo indicas busca en el principal)
    func loadFromLocalFile(fileName name : String, bundle : NSBundle
        = NSBundle.mainBundle()) throws -> JSONArray{
        
        if let url = NSBundle.mainBundle().URLForResource("books_readable", withExtension: "json"),
            data = NSData(contentsOfURL: url),
            maybeArray = try? NSJSONSerialization.JSONObjectWithData(data,
                                                                     options: NSJSONReadingOptions.MutableContainers) as? JSONArray,
            array = maybeArray{
            
            return array
            
        }else{
            
            throw commonErrors.jsonParsingError
            
        }
        
    }
    
}

