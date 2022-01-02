//
//  ViewController.swift
//  ProgressView2022-01-02
//
//  Created by 村中令 on 2022/01/02.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressView: UIProgressView!
    var count = 0
    let max = 5

    override func viewDidLoad() {
        super.viewDidLoad()
        progressView.tintColor = .quaternaryLabel
        progressView.progress = 0
    }

    @IBAction func button1(_ sender: Any) {
        count += 1
        if count > max {
            count = 0
        }
        let float =  Float(count) / Float(max)

        progressView.setProgress(float, animated: true
        )
        progressView.tintColor = .black

    }

}

