//
//  TodoItemTableViewCell.swift
//  MvvmDemoWithTableView
//
//  Created by Puspank Kumar on 09/06/19.
//  Copyright © 2019 Puspank Kumar. All rights reserved.
//

import UIKit

class TodoItemTableViewCell: UITableViewCell {

    @IBOutlet weak var txtIndex: UILabel!
    @IBOutlet weak var txtTodoItem: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(withViewModel viewModel: TodoItemPresentable) ->  (Void) {
        txtIndex.text = viewModel.id
        txtTodoItem.text = viewModel.textValue
    }
    
}
