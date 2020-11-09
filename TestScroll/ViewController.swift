//
//  ViewController.swift
//  TestScroll
//
//  Created by Eva González Ferreira on 09/11/2020.
//

import UIKit

class TestViewController: UIViewController {
    
    lazy var image1 : UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "image"))
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 800)
        return imageView
    }()
    
    lazy var image2 : UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "image"))
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 400)
        return imageView
    }()
    
    lazy var image3 : UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "image"))
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 400)
        return imageView
    }()
    
    lazy var viewContent : UIStackView = {
        let viewContent = UIStackView()
        viewContent.translatesAutoresizingMaskIntoConstraints = false
        viewContent.backgroundColor = .blue
        viewContent.axis = .vertical
        viewContent.spacing = 10;
        return viewContent
    }()
    
    
    let scrollView: UIScrollView = {
        let v = UIScrollView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = .cyan
        return v
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // La vista padre
        print(view.bounds) //(0.0, 0.0, 414.0, 896.0)
        view.backgroundColor = .lightGray

        // Añado el scroll a la vista
        view.addSubview(scrollView)
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8.0),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 8.0) ,
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8.0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -8.0)
        ])
        print(scrollView.bounds) //(0.0, 0.0, 0.0, 0.0)
        
        // Añado la vista contenido dentro del scroll
        scrollView.addSubview(viewContent)
        NSLayoutConstraint.activate([
            viewContent.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 8.0),
            viewContent.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: -8.0),
            viewContent.topAnchor.constraint(equalTo: scrollView.topAnchor),
            viewContent.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            viewContent.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        print(viewContent.bounds)
        
        // Añado un imageview dentro de la vista contenido
        viewContent.addArrangedSubview(image1)
        
        viewContent.addArrangedSubview(image2)
        viewContent.addArrangedSubview(image3)
    }
    
}

