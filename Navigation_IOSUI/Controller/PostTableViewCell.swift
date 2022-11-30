//
//  PostTableViewCell.swift
//  Navigation_IOSUI
//
//  Created by Mac on 30.11.2022.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    private lazy var author: UILabel = {
        let author = UILabel()
        author.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        author.textColor = .black
        author.translatesAutoresizingMaskIntoConstraints = false
        author.numberOfLines = 2
        return author
    }()
    
    private lazy var postDescription: UILabel = {
        let description = UILabel()
        description.textColor = .systemGray
        description.font = UIFont.systemFont(ofSize: 14)
        description.translatesAutoresizingMaskIntoConstraints = false
        description.numberOfLines = 0
        return description
    }()
    
    private lazy var image: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var likes: UILabel = {
        let likes = UILabel()
        likes.font = UIFont.systemFont(ofSize: 16)
        likes.textColor = .black
        likes.translatesAutoresizingMaskIntoConstraints = false
        return likes
    }()
    
    private lazy var views: UILabel = {
        let views = UILabel()
        views.font = UIFont.systemFont(ofSize: 16)
        views.textColor = .black
        views.translatesAutoresizingMaskIntoConstraints = false
        return views
    }()

   func configure(post: ProfilePost) {
        image.image = UIImage(named: post.image)
        author.text = post.author
        postDescription.text = post.description
        likes.text = "Likes: (String(describing: post.likes))"
        views.text = "Views: (String(describing: post.views))"
    }
    
    private func setupConstraints(){
        contentView.addSubview(likes)
        contentView.addSubview(views)
        contentView.addSubview(author)
        contentView.addSubview(image)
        contentView.addSubview(postDescription)

        NSLayoutConstraint.activate([
            
            contentView.widthAnchor.constraint(equalTo: self.widthAnchor),
            
            author.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            author.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            author.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),

            image.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 45),

            image.widthAnchor.constraint(equalTo: contentView.widthAnchor),
            image.heightAnchor.constraint(equalTo: image.widthAnchor),

            postDescription.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 16),
            postDescription.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            postDescription.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            likes.topAnchor.constraint(equalTo: postDescription.bottomAnchor, constant: 16),
            likes.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            likes.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),

            views.topAnchor.constraint(equalTo: postDescription.bottomAnchor, constant: 16),
            views.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            views.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
        ])
    }
    
}

