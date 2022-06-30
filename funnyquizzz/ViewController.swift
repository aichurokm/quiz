//
//  ViewController.swift
//  funnyquizzz
//
//  Created by Aichurok Maralbek kyzy on 25/6/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var noButton: UIButton!
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var mainview: UIView!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var mainImage: UIImageView!
    
    
    var questions: [Questions] = [.one, .two, .three, .four, .five]
    var userAnswers: [String] = []
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    setup()
    initialQuestion()
        
    }
    func setup(){
        makeCornerView(view: noButton, cornerRadius: 15)
        makeCornerView(view: yesButton, cornerRadius: 15)
        makeCornerView(view: view1, cornerRadius: 5)
        makeCornerView(view: view2, cornerRadius: 5)
        makeCornerView(view: view3, cornerRadius: 5)
        makeCornerView(view: view4, cornerRadius: 5)
        makeCornerView(view: view5, cornerRadius: 5)
        makeCornerView(view: mainview, cornerRadius: 30)
        navigationController?.navigationBar.backgroundColor = UIColor(red: 0.169, green: 0.169, blue: 0.169, alpha: 1)
        view1.backgroundColor = .green
    }
    @IBAction func answerTapped(_ sender: UIButton) {
        switch sender.tag{
        case 1:
            userAnswers.insert("Нет", at: counter)
        case 2:
            userAnswers.insert("Да", at: counter)
        default:
            print("Hello")
        }
        if questions.count - 1 == counter{
            print(userAnswers)
            
        } else{
            counter += 1
            initialQuestion()
            print(userAnswers)
            changeBG()
        }
    }
    func initialQuestion(){
        mainLabel.text = questions[counter].title
        navigationItem.title = "Question № \(counter + 1)"
        
    }
    func changeBG(){
        switch counter{
    case 0:
        view1.backgroundColor = .green
    case 1:
        view2.backgroundColor = .green
    case 2:
        view3.backgroundColor = .green
    case 3:
        view4.backgroundColor = .green
    case 4:
        view5.backgroundColor = .green
    default:
        print("Hello")
    }
    }
    func makeCornerView(view: UIView, cornerRadius: CGFloat){
        view.layer.cornerRadius = cornerRadius
        view.layer.masksToBounds = true
    }
}
