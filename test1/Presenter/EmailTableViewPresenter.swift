//
//  EmailTableViewPresenter.swift
//  test1
//
//  Created by Ethan Keiser on 11/28/21.
//

import Foundation
protocol EmailTableView  {
    
    func refresh(_ viewModel:[EmailViewModel])
    func displayLoading()
    func displayError(errorMessage: String)
}
struct EmailTableViewPresenter<delegate :EmailTableView> {
    let view : delegate
    let api : EmailFeedApi
    
    func loadData() {
        view.displayLoading()
        api.loadEmailFeed(search: "", page: 1, totalPerPage: 25) { list in
            view.refresh(list)
        } failure: { Error in
            view.displayError(errorMessage: "Cannot Load")
        }
    }

}
