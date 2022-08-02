//
//  UserListViewModel.swift
//  CartrackAssignment
//
//  Created by chetan kumar on 01/08/22.
//

import Foundation
import Combine

class UserListViewModel: ObservableObject {
    
    private var cancellables = Set<AnyCancellable>()
    @Published var userList = [Usermodel]()
    
    /// User List api call
    func getUserList() {
        NetworkManager.shared.getData(endpoint: .users, type: Usermodel.self)
            .sink { completion in
                switch completion {
                case .failure(let err):
                    print("Error is \(err.localizedDescription)")
                case .finished:
                    print("Finished")
                }
            }
            receiveValue: { [weak self] userList in
                self?.userList = userList
            }
            .store(in: &cancellables)
    }
}
