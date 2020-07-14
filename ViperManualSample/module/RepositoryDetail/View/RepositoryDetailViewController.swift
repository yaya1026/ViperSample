//
//  RepositoryDetailViewController.swift
//  ViperManualSample
//
//  Created by Yaya Watanabe on 2020/07/14.
//  Copyright © 2020 Yaya Watanabe. All rights reserved.
//

import UIKit
import WebKit

protocol RepositoryDetailView: AnyObject {
    func load(request urlRequest: URLRequest)
}

class RepositoryDetailViewController: UIViewController {

    var presenter: RepositoryDetailPresentation!
    @IBOutlet private weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }

}
extension RepositoryDetailViewController : RepositoryDetailView {
    func load(request urlRequest: URLRequest) {
        webView.load(urlRequest)
    }
}

extension RepositoryDetailViewController: WKUIDelegate {
}

extension RepositoryDetailViewController: WKNavigationDelegate {
}
