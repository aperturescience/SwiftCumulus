//
//  SoundCloud.swift
//  Cumulus
//
//  Created by Gilles De Mey on 6/9/14.
//  Copyright (c) 2014 Gilles De Mey. All rights reserved.
//

import Foundation

class CUSoundCloud {
	
	var clientId = "f17c1d67b83c86194fad2b1948061c9e"
	var clientSecret = "629dac520b2936aa99a2719b64e338d0"
	var redirectUri = "cumulus://oauth/callback"
	
	var accessToken: String? = nil
	
	func requestToken(withCode: String) {
		
		AFSoundCloud().POST("/oauth2/token",
			parameters: [
				"client_id": clientId,
				"client_secret": clientSecret,
				"redirect_uri": redirectUri,
				"grant_type": "authorization_code",
				"code": withCode
			], success: didGetAuthenticationToken, failure: didNotGetAuthenticationToken)
		
	}
	
	func didGetAuthenticationToken(task: NSURLSessionDataTask!, data: AnyObject!) -> Void {
		var resp = data as Dictionary<String, String>
		self.setAccessToken(resp["access_token"]!)
	}
	
	func didNotGetAuthenticationToken(task: NSURLSessionDataTask!, error: NSError!) -> Void {
		println("error: \(error) \(task)")
	}
	
	func setAccessToken(token: String) {
		self.accessToken = token
		println("token: \(token)")
	}
	
}