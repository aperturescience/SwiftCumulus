//
//  Popular.swift
//  Cumulus
//
//  Created by Gilles De Mey on 6/9/14.
//  Copyright (c) 2014 Gilles De Mey. All rights reserved.
//

import Foundation

class PopularCollection {
	
	func getAll(
		success: (AFHTTPRequestOperation!, data: AnyObject!) -> Void,
		failure: (AFHTTPRequestOperation!, error: NSError!) -> Void)
	{
		
		AFSoundCloud().GET("https://api-v2.soundcloud.com/explore/Popular%2BMusic",
			parameters: nil,
			success: popularDidLoad,
			failure: popularDidNotLoad)
	}
	
	func popularDidLoad(op: NSURLSessionDataTask!, data: AnyObject!) -> Void {
		println(data)
	}
	
	func popularDidNotLoad(op: NSURLSessionDataTask!, error: NSError!) -> Void {
		println("Error: \(error)")
	}
	
}