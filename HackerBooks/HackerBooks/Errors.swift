//
//  Errors.swift
//  HackerBooks
//
//  Created by Adrian Perez Lopez on 13/7/16.
//  Copyright © 2016 NovasFactory. All rights reserved.
//

import Foundation

// MARK : JSON errors
//ErrorType es un protocolo que está vacío, sirve para decirle al sistema de tipos que es un valor valido para lanzarlo como error

enum commonErrors : ErrorType{
    
    //URL no válida
    case wrongURLFormatForJSONResource
    
    //URL válida pero apunta a recurso NO existente
    case resourcePointedByURLNotReachable
    
    //JSON proporcionado no puede ser serializado
    case jsonParsingError
    
    //Formato chungo
    case wrongJSONFormat
    
    //nilazo
    case nilJSONObject
    
    
}