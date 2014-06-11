//
//  ViewController.swift
//  Cumulus
//
//  Created by Gilles De Mey on 6/8/14.
//  Copyright (c) 2014 Gilles De Mey. All rights reserved.
//

import Cocoa

class MainViewController: NSViewController {
                            
	override func viewDidLoad() {
		
		super.viewDidLoad()
		

//	loadPopular()
		
	}
	

	override var representedObject: AnyObject? {
		didSet {
		// Update the view, if already loaded.
		}
		                            
	}
	
	func loadPopular() {
		PopularCollection().getAll(popularDidLoad, failure: popularDidNotLoad)
	}
	
	func popularDidLoad(op: AFHTTPRequestOperation!, data: AnyObject!) -> Void {
		println(data)
	}

	func popularDidNotLoad(op: AFHTTPRequestOperation!, error: NSError!) -> Void {
		println("Error: \(error)")
	}

}

