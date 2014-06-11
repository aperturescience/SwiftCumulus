//
//  AFSoundCloud.swift
//  Cumulus
//
//  Created by Gilles De Mey on 6/10/14.
//  Copyright (c) 2014 Gilles De Mey. All rights reserved.
//

import Foundation

class AFSoundCloud : AFHTTPSessionManager {
	
	var config: NSURLSessionConfiguration = NSURLSessionConfiguration.defaultSessionConfiguration()
	
	init() {
		
		super.init(baseURL: NSURL(string: "https://api.soundcloud.com"), sessionConfiguration: config)
		
		self.requestSerializer	= AFJSONRequestSerializer()
		self.responseSerializer = AFJSONResponseSerializer()
		
	}
	
}
