//
//  ViewController.swift
//  API
//
//  Created by Nguyễn Tuấn on 13/05/2023.
//

import UIKit

struct Todo : Codable{
    var userId : Int?
    var id : Int?
    var title : String?
    var completed : String?
}

struct Photo : Codable{
    var albumId : Int?
    var id : Int?
    var tiltle : String?
    var url : String?
    var thumbnailUrl : String?
}

struct Album : Codable{
    var userId : Int?
    var id : Int?
    var title : String?
}

struct Comment : Codable{
    var postId : Int?
    var id : Int?
    var email : String?
    var body : String?
}

struct Post : Codable{
    var userId : Int?
    var id : Int?
    var title : String?
    var body : String?
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlTodo = "https://jsonplaceholder.typicode.com/todos"
        let urlPhoto = "https://jsonplaceholder.typicode.com/photos"
        let urlAlbum = "https://jsonplaceholder.typicode.com/albums"
        let urlComments = "https://jsonplaceholder.typicode.com/comments"
        let urlPosts = "https://jsonplaceholder.typicode.com/posts"
        loadData(urlPhoto)
    }


    func loadData(_ urlString: String) {
            // Khởi tạo cấu hình cho URLSession
            let sessionConfiguration = URLSessionConfiguration.ephemeral
            
            // Khởi tạo URL
            let url = URL(string: urlString)!
            
            // Khởi tạo session
            let session = URLSession(configuration: sessionConfiguration)
            
            // Khởi tạo task
            let task = session.dataTask(with: url) { data, response, error in
                
                guard let data = data else {
                    return
                }
                
                // pass data thành json
                do {
                    let obj = try JSONDecoder().decode([Photo].self, from: data)
                    print(obj.count)
                } catch {
                   print("Không thể đọc data")
                }
                
            }
            
            task.resume()
        }

}
