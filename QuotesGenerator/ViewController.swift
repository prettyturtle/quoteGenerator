//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by yc on 2021/09/03.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let quotes = [
        Quote(contents: "삶이 있는 한 희망은 있다", name: "키케로"),
        Quote(contents: "산다는것 그것은 치열한 전투이다.", name: "로망로랑"),
        Quote(contents: "하루에 3시간을 걸으면 7년 후에 지구를 한바퀴 돌 수 있다.", name: "사무엘존슨"),
        Quote(contents: "언제나 현재에 집중할수 있다면 행복할것이다.", name: "파울로 코엘료"),
        Quote(contents: "진정으로 웃으려면 고통을 참아야하며, 나아가 고통을 즐길 줄 알아야 해", name: "찰리 채플린")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tapQuoteGeneratorButton(_ sender: UIButton) {
        let random = Int(arc4random_uniform(5)) // 0 ~ 4 사이의 난수를 반환(UInt32)
        let quote = quotes[random]
        
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
        
    }
}


