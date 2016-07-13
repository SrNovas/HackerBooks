//
//  Tag.swift
//  HackerBooks
//
//  Created by Adrian Perez Lopez on 13/7/16.
//  Copyright © 2016 NovasFactory. All rights reserved.
//

import Foundation

class Tag : Comparable, Equatable, Hashable{

    var nameTag : String
    
    //MARK: - Initialization
    init(nameTag : String){
        
        self.nameTag = nameTag
        
    }
    
    //MARK: - Proxies
    var proxyForComparison : String{
        
        get{
            
            return "\(nameTag)"
            
        }
        
    }
    
    var proxyForSorting : String{
        
        get{
            
            //También podría poner return "\(nameTag)" como arriba
            return proxyForComparison
            
        }
        
    }
    
    //MARK: - Hashable
    //public var hashValue: Int { get }
    var hashValue: Int{
        
        get{
            
            return nameTag.hashValue
            
        }
        
    }
    
    
}

//MARK: - Comparable
//public func <(lhs: Self, rhs: Self) -> Bool, comparar 2 clases, ver cual es menor y poder ordenar
func <(lhs : Tag, rhs : Tag) -> Bool{
    
    return lhs.proxyForSorting < rhs.proxyForSorting
    
}

//MARK: - Equatable
//public func ==(lhs: Self, rhs: Self) -> Bool
func ==(lhs : Tag, rhs : Tag) -> Bool{
    
    guard !(lhs === rhs) else {
        
        return true
        
    }
    
    //Esto lo hace en StarWars, era para comparar las clases, si son iguales OK, si no, false
    guard (lhs.dynamicType == rhs.dynamicType) else{
        
        return false
        
    }
    
    return lhs.proxyForSorting == rhs.proxyForSorting
    
}