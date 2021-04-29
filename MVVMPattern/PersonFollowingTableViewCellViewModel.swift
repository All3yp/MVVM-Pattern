//
//  PersonFolowwingTableViewCellViewModel.swift
//  MVVMPattern
//
//  Created by Alley Pereira on 29/04/21.
//

import UIKit

struct PersonFollowingTableViewCellViewModel {
    let name: String
    let username: String
    var currentlyFollowing: Bool
    let image: UIImage?

    init(with model: Person) {
        name = model.name
        username = model.username
        currentlyFollowing = false
        image = UIImage(systemName: "person")
    }
}
