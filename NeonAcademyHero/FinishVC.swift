//
//  FinishVC.swift
//  NeonAcademyHero
//
//  Created by Kerem Caan on 8.08.2023.
//

import UIKit

class FinishVC: UIViewController {
    
    let label: UILabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
    

    func configureUI() {
        
        view.backgroundColor = .gray
        
        view.addSubview(label)
        label.text = "Congrats! You escaped from the maze."
        label.font = .boldSystemFont(ofSize: 30)
        label.numberOfLines = 0
        label.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalToSuperview()
        }
        
    }

}
