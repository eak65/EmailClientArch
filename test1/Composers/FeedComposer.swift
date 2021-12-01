//
//  FeedComposer.swift
//  test1
//
//  Created by Ethan Keiser on 11/28/21.
//

import Foundation

class FeedComposer : EmailFeedApi {

    
    var localApi : EmailFeedApi?
    var remoteApi : EmailFeedApi?
    
    init(local: EmailFeedApi?, remote: EmailFeedApi?) {
        localApi = local
        remoteApi = remote
    }
    func loadEmailFeed(search: String, page: Int, totalPerPage: Int, success: ([EmailViewModel]) -> (), failure: (Error) -> ()) {
        if let localApi = localApi {
            localApi.loadEmailFeed(search: search, page: page, totalPerPage: totalPerPage, success: { list in
                success(list)
            }, failure: { error in
                
            })
        }
    }
    
    func loadEmail(emailId: Int, success: ([EmailViewModel]) -> (), failure: (Error) -> ()) {
        
    }
    
    
}
