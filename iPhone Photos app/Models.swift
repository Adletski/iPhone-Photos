//
//  Model.swift
//  iPhone Photos app
//
//  Created by Adlet Zhantassov on 15.03.2023.
//

import UIKit

struct AlbumModel {
    var image: String
    var title: String
    var quantity: String
}

extension AlbumModel {
    static let modelsArray = [
        [AlbumModel(image: "thanos", title: "Недавние", quantity: "100"),
         AlbumModel(image: "thanos", title: "Whatsapp", quantity: "50"),
         AlbumModel(image: "thanos", title: "Избранное", quantity: "30"),
         AlbumModel(image: "thanos", title: "Media", quantity: "30"),
         AlbumModel(image: "thanos", title: "Telegram", quantity: "30"),
         AlbumModel(image: "thanos", title: "Chrome", quantity: "30"),
         AlbumModel(image: "thanos", title: "Firefox", quantity: "30"),
         AlbumModel(image: "thanos", title: "Family", quantity: "30")],
        [AlbumModel(image: "thanos", title: "Недавние", quantity: "100"),
         AlbumModel(image: "thanos", title: "Whatsapp", quantity: "50"),
         AlbumModel(image: "thanos", title: "Избранное", quantity: "30"),
         AlbumModel(image: "thanos", title: "Избранное", quantity: "30"),
         AlbumModel(image: "thanos", title: "Избранное", quantity: "30"),
         AlbumModel(image: "thanos", title: "Избранное", quantity: "30"),
         AlbumModel(image: "thanos", title: "Избранное", quantity: "30"),
         AlbumModel(image: "thanos", title: "Избранное", quantity: "30")],
        [AlbumModel(image: "thanos", title: "Недавние", quantity: "100"),
         AlbumModel(image: "thanos", title: "Whatsapp", quantity: "50"),
         AlbumModel(image: "thanos", title: "Избранное", quantity: "30"),
         AlbumModel(image: "thanos", title: "Избранное", quantity: "30"),
         AlbumModel(image: "thanos", title: "Избранное", quantity: "30"),
         AlbumModel(image: "thanos", title: "Избранное", quantity: "30"),
         AlbumModel(image: "thanos", title: "Избранное", quantity: "30"),
         AlbumModel(image: "thanos", title: "Избранное", quantity: "30")]
    ]
}
