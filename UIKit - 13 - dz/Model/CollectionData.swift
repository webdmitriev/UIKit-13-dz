//
//  CollectionData.swift
//  UIKit - 13 - dz
//
//  Created by Олег Дмитриев on 28.08.2024.
//

import Foundation

enum HeaderTypes {
    case news, event, users
}

struct CollectionSection {
    let header: String
    let items: [CollectionItems]
    let footer: String?
    let type: HeaderTypes
    
    static func mockData() -> [CollectionSection] {

        let newsItems: [CollectionItems] = [
            CollectionItems(title: "Жизнь под Марсом?", date: "20 апреля 24", image: "news-01",
                            descr: "Lorem ipsum dolor sit amet consectetur"),
            CollectionItems(title: "Жизнь на Марсе?", date: "21 апреля 24", image: "news-02",
                            descr: "Lorem ipsum dolor sit amet consectetur sit amet consectetur"),
            CollectionItems(title: "Жизнь за Марсом?", date: "22 апреля 24", image: "news-03",
                            descr: "Ipsum dolor sit amet consectetur sit amet consectetur"),
        ]
        let newsSection: CollectionSection = CollectionSection(header: "Новости", items: newsItems, footer: "Lorem ipsum dolor sit amet consectetur. Enim suspendisse accumsan sed augue interdum velit aliquam lobortis donec.", type: .news)
        

        let eventsItems: [CollectionItems] = [
            CollectionItems(image: "icon-01", descr: "Текст в одну строку, если не удалось придумать больше 1"),
            CollectionItems(image: "icon-02", descr: "Текст в одну строку, если не удалось придумать больше 2"),
            CollectionItems(image: "icon-03", descr: "Текст в одну строку, если не удалось придумать больше 3"),
            CollectionItems(image: "icon-04", descr: "Текст в одну строку, если не удалось придумать больше 4"),
            CollectionItems(image: "icon-05", descr: "Текст в одну строку, если не удалось придумать больше 5"),
            CollectionItems(image: "icon-06", descr: "Текст в одну строку, если не удалось придумать больше 6"),
            CollectionItems(image: "icon-01", descr: "Текст в одну строку, если не удалось придумать больше 7"),
            CollectionItems(image: "icon-02", descr: "Текст в одну строку, если не удалось придумать больше 8"),
            CollectionItems(image: "icon-03", descr: "Текст в одну строку, если не удалось придумать больше 9"),
            CollectionItems(image: "icon-04", descr: "Текст в одну строку, если не удалось придумать больше 10"),
            CollectionItems(image: "icon-05", descr: "Текст в одну строку, если не удалось придумать больше 11"),
        ]
        let eventsSection: CollectionSection = CollectionSection(header: "События", items: eventsItems, footer: "", type: .event)
        
        
        let usersItems: [CollectionItems] = [
            CollectionItems(image: "avatar-01", descr: "Lorem ipsum dolor sit amet consectetur 1", name: "Oleg Dmitriev"),
            CollectionItems(image: "avatar-02", descr: "Lorem ipsum dolor sit amet consectetur 2", name: "Joan Tolaresa"),
            CollectionItems(image: "avatar-03", descr: "Lorem ipsum dolor sit amet consectetur 3", name: "Joan Tolaresa"),
            CollectionItems(image: "avatar-04", descr: "Lorem ipsum dolor sit amet consectetur 4", name: "Joan Tolaresa"),
            CollectionItems(image: "avatar-05", descr: "Lorem ipsum dolor sit amet consectetur 5", name: "Joan Tolaresa"),
        ]
        let usersSection: CollectionSection = CollectionSection(header: "Пользователи", items: usersItems, footer: "", type: .users)
        

        return [newsSection, eventsSection, usersSection]
    }
}

struct CollectionItems {
    var title: String?
    var date: String?
    let image: String
    let descr: String
    var name: String?
}
