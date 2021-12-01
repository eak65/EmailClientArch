//
//  AuthenticationApi.swift
//  GmailArchitecture
//
//  Created by Ethan Keiser on 11/28/21.
//

import Foundation

protocol AuthenticationApi {
    
    func login(username:String, password:String, success:(URLResponse)->(), failure:(URLError) ->())
    
}

class BasicLoginService : AuthenticationApi {
    
    func login(username:String, password:String, success:(URLResponse)->(), failure:(URLError) ->()) {
        success(URLResponse(url: URL(string:"https://google.com")!, mimeType: nil, expectedContentLength: 1, textEncodingName: nil))
    }
}
