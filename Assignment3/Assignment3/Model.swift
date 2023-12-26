//
//  Model.swift
//  Assignment3
//
//  Created by 성현주 on 12/24/23.
//
//{
//  "articles": [
//    {
//      "slug": "string",
//      "title": "string",
//      "description": "string",
//      "body": "string",
//      "tagList": [
//        "string"
//      ],
//      "createdAt": "2023-12-24T05:33:10.489Z",
//      "updatedAt": "2023-12-24T05:33:10.489Z",
//      "favorited": true,
//      "favoritesCount": 0,
//      "author": {
//        "username": "string",
//        "bio": "string",
//        "image": "string",
//        "following": true
//      }
//    }
//  ],
//  "articlesCount": 0
//}

import Foundation

struct ArticleResponse: Decodable {
    let articles: [Article]
    let articlesCount: Int
}

struct Article: Decodable {
    let slug: String
    let title: String
    let description: String
    let body: String
    let tagList: [String]
    let createdAt: String
    let updatedAt: String
    let favorited: Bool
    let favoritesCount: Int
    let author: Author
}

struct Author: Decodable {
    let username: String
    let bio: String?
    let image: String
    let following: Bool
}
