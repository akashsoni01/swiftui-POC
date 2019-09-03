//
//  ContentView.swift
//  Service-hit-swiftui
//
//  Created by Akash Soni on 02/09/19.
//  Copyright © 2019 Akash Soni. All rights reserved.
//

import SwiftUI
import Combine
//model for Employee start
struct EmployeeElement: Codable {
    let id, employeeName, employeeSalary, employeeAge: String
    let profileImage: String

    enum CodingKeys: String, CodingKey {
        case id
        case employeeName = "employee_name"
        case employeeSalary = "employee_salary"
        case employeeAge = "employee_age"
        case profileImage = "profile_image"
    }
}
typealias Employee = [EmployeeElement]
//end

class NetworkManager:ObservableObject{
    var didChange = PassthroughSubject<NetworkManager,Never>()
    
    @Published var employee = Employee(){
        didSet{
            didChange.send(self)
        }
    }
    init(){
    }
    func callApi(){
        let url = URL(string: "http://dummy.restapiexample.com/api/v1/employees")
        URLSession.shared.dataTask(with: url!) { (servicedata, _, _) in
            guard let data = servicedata else { return }
            let decoder = JSONDecoder()
            let employee = try! decoder.decode(Employee.self, from: data)
            DispatchQueue.main.async {
                                self.employee = employee
                print(self.employee)
            }
            print("data fetched succesfully")
        }.resume()
        
    }
}

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView{
            List(
                self.networkManager.employee
            , id: \.id){ (emp) in
                Text(emp.employeeName)
            }.navigationBarTitle("Employee")
        }
    }
}
struct GroupView: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            Text("test")
        }.frame(width:100,height: 180)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
