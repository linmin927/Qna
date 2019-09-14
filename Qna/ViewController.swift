//
//  ViewController.swift
//  Qna
//
//  Created by 林銘 on 2019/8/27.
//  Copyright © 2019 林家銘. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var questions = [Question]()
    var index = 0
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let qusetion1 = Question()
        qusetion1.description = "中秋節必做"
        qusetion1.answer = "烤肉"
        questions.append(qusetion1)
        
        let qusetion2 = Question()
        qusetion2.description = "台中最好吃燒烤"
        qusetion2.answer = "屋馬"
        questions.append(qusetion2)
        
        let qusetion3 = Question()
        qusetion3.description = "要帶什麼去吃屋馬才不會留下來洗碗"
        qusetion3.answer = "魔法小卡"
        questions.append(qusetion3)
        
        let qusetion4 = Question()
        qusetion4.description = "中秋小朋友最愛吃什麼餅"
        qusetion4.answer = "元祖雪餅，笨蛋才說月餅～"
        questions.append(qusetion4)
        
        let qusetion5 = Question()
        qusetion5.description = "中秋節除了烤肉還可以？"
        qusetion5.answer = "放煙火"
        questions.append(qusetion5)
        
        let qusetion6 = Question()
        qusetion6.description = "你知道網路上台中最有名的特產？"
        qusetion6.answer = "慶記"
        questions.append(qusetion6)
        
        let qusetion7 = Question()
        qusetion7.description = "哪間店的珍奶最好喝"
        qusetion7.answer = "春水堂"
        questions.append(qusetion7)
        
        let qusetion8 = Question()
        qusetion8.description = "台中人最愛說的四個字"
        qusetion8.answer = "真的假的"
        questions.append(qusetion8)
        
        let qusetion9 = Question()
        qusetion9.description = "遇見誰是你的小幸運"
        qusetion9.answer = "彼得潘"
        questions.append(qusetion9)
        
        let qusetion10 = Question()
        qusetion10.description = "如果可以再次選擇？"
        qusetion10.answer = "還是彼得潘"
        questions.append(qusetion10)
        
        
        
        questionLabel.text = questions[0].description
        answerLabel.text = ""
        countLabel.text = "\(index+1)"
    }

    @IBAction func answer(_ sender: Any) {
        answerLabel.text = questions[index].answer
        
    }
    
    @IBAction func next(_ sender: Any) {
        index = index + 1
        
        if index == questions.count{
            index = 0
            
        }
        
        if index < questions.count {
        questionLabel.text = questions[index].description
        answerLabel.text = ""
        countLabel.text = "\(index+1)"
        }
        
        
    }
}

