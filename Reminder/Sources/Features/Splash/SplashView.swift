//
//  SplashView.swift
//  Reminder
//
//  Created by Sophia Muraro on 25/02/25.
//

import UIKit

class SplashView: UIView {
    
    private let logoImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Logo")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let titleLogolabel: UILabel = {
        let label = UILabel()
        label.text = "Remind"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init (frame: CGRect){
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        self.backgroundColor = UIColor(red: 192/255, green: 38/255, blue: 54/255, alpha: 1)
        
        addSubview(logoImageView)
        addSubview(titleLogolabel)
        
        setupConstraints ()
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            titleLogolabel.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 24),
            titleLogolabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -24),
           
            logoImageView.trailingAnchor.constraint(equalTo: titleLogolabel.leadingAnchor, constant: -8),
            logoImageView.bottomAnchor.constraint(equalTo: titleLogolabel.bottomAnchor)
        ])
    }
}
