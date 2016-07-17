//
//  BooksViewController.swift
//  HackerBooks
//
//  Created by Adrian Perez Lopez on 16/7/16.
//  Copyright © 2016 NovasFactory. All rights reserved.
//

import UIKit

class BooksViewController: UIViewController {
    
    
    
    @IBOutlet weak var bookImage: UIWebView!

    @IBOutlet weak var titleBook: UILabel!
    
    @IBOutlet weak var authorBook: UILabel!
    
    var model : AGTBook
    
    //MARK: - Initialization
    init(model : AGTBook){
        
        self.model = model
        
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Syncing
    //Sincroniación
    func syncModelWithView(){
    
        bookImage.loadRequest(NSURLRequest(URL: model.imageUrl))
        
        titleBook.text = model.title
        
        authorBook.text = model.authors[0]
        
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        syncModelWithView()
    }
    
}
