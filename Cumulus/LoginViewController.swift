//
//  LoginViewController.swift
//  Cumulus
//
//  Created by Gilles De Mey on 6/9/14.
//  Copyright (c) 2014 Gilles De Mey. All rights reserved.
//

import Foundation
import Cocoa

import WebKit

class LoginViewController: NSViewController {
	
	override func viewDidLoad() {
		
	}
	
	@IBAction func doLogin(sender : NSButton) {
		requestLogin()
	}
	
	@IBOutlet var connectWebView : WebView
	
	func requestLogin() {
		
		NXOAuth2AccountStore.sharedStore().requestAccessToAccountWithType("SoundCloud",
			withPreparedAuthorizationURLHandler: loadConnectView)
		
	}
	
	func loadConnectView(url: NSURL!) {
		connectWebView.mainFrame.loadRequest(NSURLRequest(URL: url))
		connectWebView.hidden = false
	}
	
}