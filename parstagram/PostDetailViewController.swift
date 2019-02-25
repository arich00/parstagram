//
//  PostDetailViewController.swift
//  parstagram
//
//  Created by Alex Rich on 2/24/19.
//  Copyright © 2019 Alex Rich. All rights reserved.
//

import UIKit
import Parse
import AlamofireImage
import MessageInputBar

class PostDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    let commentBar = MessageInputBar()
    var post: PFObject!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.keyboardDismissMode = .interactive
        // Do any additional setup after loading the view.
    }
    
    
    override var inputAccessoryView: UIView? {
        return commentBar
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let comments = post["comments"]
        return comments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CommentCell") as! CommentCell
        let comments = post["comments"]
        let comment = comments[indexPath.row]
        
        let cell.username = comment["username"]
        let cell.comment = comment["comment"]
        
        return cell
    }

}
