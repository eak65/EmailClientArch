//
//  LoadEmailFeedApi.swift
//  test1
//
//  Created by Ethan Keiser on 11/28/21.
//

import Foundation

protocol EmailFeedApi {
    func loadEmailFeed(search:String,page:Int,totalPerPage:Int, success:([EmailViewModel])->(), failure:(Error) -> ())
    func loadEmail(emailId:Int, success:([EmailViewModel])->(), failure:(Error) -> ())
}

class RemoteEmailFeedApi : EmailFeedApi {
    func loadEmail(emailId: Int, success: ([EmailViewModel]) -> (), failure: (Error) -> ()) {
        
    }
    
    func loadEmailFeed(search: String, page: Int, totalPerPage: Int, success: ([EmailViewModel]) -> (), failure: (Error) -> ()) {
        
    }
}

class LocalEmailFeedApi : EmailFeedApi {
    func loadEmail(emailId: Int, success: ([EmailViewModel]) -> (), failure: (Error) -> ()) {
        
    }
    
    func loadEmailFeed(search: String, page: Int, totalPerPage: Int, success: ([EmailViewModel]) -> (), failure: (Error) -> ()) {
        // make an adapter?
        success([EmailViewModel(subject: "hey", intro: "whats up")])
    }
}


