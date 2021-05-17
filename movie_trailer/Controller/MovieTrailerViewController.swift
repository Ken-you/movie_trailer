//
//  ViewController.swift
//  movie_trailer
//
//  Created by yousun on 2021/5/16.
//

import UIKit
import WebKit


class MovieTrailerViewController: UIViewController {

    @IBOutlet weak var trailerWebView: WKWebView!
    
    // 抓取前一頁 movies[section][row] 的位置
    let movies : Movie
    
    init?(coder :NSCoder ,movies :Movie) {
        self.movies = movies
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // 讀取 url
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let url = URLRequest(url: URL(string: movies.url)!)
        
        trailerWebView.load(url)
    }
}

