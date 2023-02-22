//
//  ViewController.swift
//  preOnBoardingTest
//
//  Created by Chanhee on 2023/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var secondImage: UIImageView!
    @IBOutlet weak var thirdImage: UIImageView!
    @IBOutlet weak var fourthImage: UIImageView!
    @IBOutlet weak var fifthImage: UIImageView!
    @IBAction func firstLoad(_ sender: UIButton)  {
        
        var result: UIImage = UIImage(systemName: "photo.fill")!
        Task{
            firstImage.image = result
            result = try await requestImageURL(requestURL: URL(string:"https://picsum.photos/id/237/200/100")!)
            firstImage.image = result
            print("success")
        }
    }
    @IBAction func secondLoad(_ sender: UIButton) {
        
        var result: UIImage = UIImage(systemName: "photo.fill")!
        Task{
            secondImage.image = result
            result = try await requestImageURL(requestURL: URL(string:"https://picsum.photos/id/238/200/100")!)
            secondImage.image = result
        }
    }
    
    @IBAction func thirdLoad(_ sender: UIButton) {
        
        var result: UIImage = UIImage(systemName: "photo.fill")!
        Task{
            thirdImage.image = result
            result = try await requestImageURL(requestURL: URL(string:"https://picsum.photos/id/239/200/100")!)
            thirdImage.image = result
        }
    }
    @IBAction func fourthLoad(_ sender: UIButton) {
        
        var result: UIImage = UIImage(systemName: "photo.fill")!
        Task{
            fourthImage.image = result
            result = try await requestImageURL(requestURL: URL(string:"https://picsum.photos/id/144/200/100")!)
            fourthImage.image = result
        }
    }
    @IBAction func fifthLoad(_ sender: UIButton) {
        
        var result: UIImage = UIImage(systemName: "photo.fill")!
        Task{
            fifthImage.image = result
            result = try await requestImageURL(requestURL: URL(string:"https://picsum.photos/id/242/200/100")!)
            fifthImage.image = result
        }
    }
    @IBAction func loadAll(_ sender: UIButton) {
        
        
        Task{
            var result: UIImage = UIImage(systemName: "photo.fill")!
            firstImage.image = result
            result = try await requestImageURL(requestURL: URL(string:"https://picsum.photos/id/237/200/100")!)
            firstImage.image = result
        }
        Task{
            var result: UIImage = UIImage(systemName: "photo.fill")!
            secondImage.image = result
            result = try await requestImageURL(requestURL: URL(string:"https://picsum.photos/id/238/200/100")!)
            secondImage.image = result
        }
        Task{
            var result: UIImage = UIImage(systemName: "photo.fill")!
            thirdImage.image = result
            result = try await requestImageURL(requestURL: URL(string:"https://picsum.photos/id/239/200/100")!)
            thirdImage.image = result
        }
        Task{
            var result: UIImage = UIImage(systemName: "photo.fill")!
            fourthImage.image = result
            result = try await requestImageURL(requestURL: URL(string:"https://picsum.photos/id/144/200/100")!)
            fourthImage.image = result
        }
        Task{
            var result: UIImage = UIImage(systemName: "photo.fill")!
            fifthImage.image = result
            result = try await requestImageURL(requestURL: URL(string:"https://picsum.photos/id/242/200/100")!)
            fifthImage.image = result
        }
    }
    
    
    func requestImageURL(requestURL: URL) async throws -> UIImage {
        let (data,_) = try await URLSession.shared.data(from: requestURL)
        return UIImage(data: data) ?? UIImage(systemName: "pencil")!
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

