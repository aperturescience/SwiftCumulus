//
//  LoginViewController.swift
//  Cumulus
//
//  Created by Gilles De Mey on 6/9/14.
//  Copyright (c) 2014 Gilles De Mey. All rights reserved.
//

import Foundation
import Cocoa

class LoginViewController: NSViewController {
	
	override func viewDidLoad() {
		
	}
	
	@IBAction func doLogin(sender : NSButton) {
		requestLogin()
	}
	
	func requestLogin() {
		NXOAuth2AccountStore.sharedStore().requestAccessToAccountWithType("SoundCloud")
	}
	
}