//
//  HomeViewController.swift
//  W8-Project1-Gumi
//
//  Created by Thành Nguyên on 06/05/2021.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var keyTextField: UITextField!
    
    var networkManager = NetworkManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
    }
    
    @IBAction func getMovieButtonTapped(_ sender: Any) {
        let key = keyTextField.text
        NetworkManager.MovieAPIKey = key ?? ""
        networkManager.getNewMovies(page: 1) { movies, error in
        }
    }
    
}


/*
200 OK – Trả về thành công cho những phương thức GET, PUT, PATCH hoặc DELETE.
201 Created – Trả về khi một Resouce vừa được tạo thành công.
204 No Content – Trả về khi Resource xoá thành công.
304 Not Modified – Client có thể sử dụng dữ liệu cache.
400 Bad Request – Request không hợp lệ
401 Unauthorized – Request cần có auth.
403 Forbidden – bị từ chối không cho phép.
404 Not Found – Không tìm thấy resource từ URI
405 Method Not Allowed – Phương thức không cho phép với user hiện tại.
410 Gone – Resource không còn tồn tại, Version cũ đã không còn hỗ trợ.
415 Unsupported Media Type – Không hỗ trợ kiểu Resource này.
422 Unprocessable Entity – Dữ liệu không được xác thực
429 Too Many Requests – Request bị từ chối do bị giới hạn
*/
