//
//  iTunesMusik.swift
//  musikSearch2
//
//  Created by Ернат on 12.06.2023.
//

import Foundation
import SwiftyJSON

struct iTunesMusik {
    var artistName = ""
    var artworkUrl100 = ""
    var previewUrl = ""
    var trackName = ""
    
    init() {
        
    }
    
    init(json: JSON) {
        if let item = json["artistName"].string {
            artistName = item
        }
        if let item = json["artworkUrl100"].string {
            artworkUrl100 = item
        }
        if let item = json["previewUrl"].string {
            previewUrl = item
        }
        if let item = json["trackName"].string {
            trackName = item
        }
        
    }
}
