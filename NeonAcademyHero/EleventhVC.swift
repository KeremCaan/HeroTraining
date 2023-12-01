//
//  EleventhVC.swift
//  NeonAcademyHero
//
//  Created by Kerem Caan on 8.08.2023.
//

import UIKit

class EleventhVC: UIViewController {

    let imageView: UIImageView = UIImageView()
    let buttonUp: UIButton = UIButton()
    let buttonRight: UIButton = UIButton()
    let buttonDown: UIButton = UIButton()
    let buttonLeft: UIButton = UIButton()
    let arrowImageView: UIImageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    func configureUI() {
        
        arrowImageView.hero.id = "first"
        
        view.backgroundColor = .white
        
        view.addSubview(imageView)
        imageView.image = UIImage(named: "maze")
        imageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(100)
            make.centerX.equalToSuperview()
            make.height.width.equalTo(300)
        }
        
        view.addSubview(arrowImageView)
        arrowImageView.image = UIImage(systemName: "person.fill")
        arrowImageView.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(-275)
            make.centerX.equalToSuperview().offset(-40)
            make.height.width.equalTo(30)
        }
        
        view.addSubview(buttonUp)
        buttonUp.setBackgroundImage(UIImage(systemName: "arrow.up"), for: .normal)
        buttonUp.addTarget(self, action: #selector(buttonUpTapped), for: .touchUpInside)
        buttonUp.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(100)
            make.centerX.equalToSuperview()
            make.height.width.equalTo(100)
        }
        
        view.addSubview(buttonLeft)
        buttonLeft.setBackgroundImage(UIImage(systemName: "arrow.left"), for: .normal)
        buttonLeft.addTarget(self, action: #selector(buttonLeftTapped), for: .touchUpInside)
        buttonLeft.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(200)
            make.left.equalToSuperview().offset(50)
            make.height.width.equalTo(100)
        }
        
        view.addSubview(buttonRight)
        buttonRight.setBackgroundImage(UIImage(systemName: "arrow.right"), for: .normal)
        buttonRight.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(200)
            make.right.equalToSuperview().offset(-50)
            make.height.width.equalTo(100)
        }
        
        view.addSubview(buttonDown)
        buttonDown.setBackgroundImage(UIImage(systemName: "arrow.down"), for: .normal)
        buttonDown.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(300)
            make.centerX.equalToSuperview()
            make.height.width.equalTo(100)
        }
        
    }
    
    @objc func buttonLeftTapped() {
        let vc = TenthVC()
                    vc.modalPresentationStyle = .fullScreen
                    vc.hero.isEnabled = true
                    present(vc, animated: true, completion: nil)
         
                }
    
    @objc func buttonUpTapped() {
        let vc = FinishVC()
                    vc.modalPresentationStyle = .fullScreen
                    vc.hero.isEnabled = true
                    present(vc, animated: true, completion: nil)
         
                }


}
