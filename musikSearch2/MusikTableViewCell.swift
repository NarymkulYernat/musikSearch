//
//  MusikTableViewCell.swift
//  musikSearch2
//
//  Created by Ернат on 12.06.2023.
//

import UIKit
import SDWebImage

class MusikTableViewCell: UITableViewCell {
    
    @IBOutlet weak var albomImageView: UIImageView!
    @IBOutlet weak var songNameLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setData(musik: iTunesMusik) {
        artistNameLabel.text = musik.artistName
        
        songNameLabel.text = musik.trackName
        
        albomImageView.sd_setImage(with: URL(string: musik.artworkUrl100), completed: nil)
    }

}
