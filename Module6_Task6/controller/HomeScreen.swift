//
//  HomeScreen.swift
//  Module6_Task6
//
//  Created by macbro on 08/05/22.
//

import SwiftUI

struct HomeScreen: View {
    
    // getAll Employe
    
    func getAllEmploye(){
        AFHttp.get(url: AFHttp.EMPLOYE_GETALL, params: AFHttp.paramsEmpty(), handler: { response in
            switch response.result {
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
        })
    }
    
    // getSingle Employe
    func getSingleEmploye(id:Int){
        AFHttp.get(url: AFHttp.SINGLE_GET_EMPLOYE + String(id), params: AFHttp.paramsEmpty(), handler: { response in
            switch response.result {
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
            
        })
    }
    
    
    // create Employe
    
    func createEmploye(employe:Employe){
        AFHttp.post(url: AFHttp.EMPLOYE_CREATE, params: AFHttp.paramsEmployeCreate(employe: employe), handler: { response in
            switch response.result {
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
        })
    }
    
    
    // update employe
    func updateEmploye(employe:Employe){
        AFHttp.put(url: AFHttp.EMPLOYE_UPDATE + String(employe.id!), params: AFHttp.paramsUpdateEmploye(employe: employe), handler: { response in
            switch response.result {
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
        })
    }
    
    
    
    // delete Employe
    func deleteEmploye(employe:Employe){
        AFHttp.delete(url: AFHttp.EMPLOYE_DELETE + String(employe.id!), params: AFHttp.paramsEmpty(), handler: { response in
            switch response.result {
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
        })
    }
    
    var body: some View {
        NavigationView {
            Text("Employe")
                .font(.system(size: 20))
                .navigationBarTitle("List Employe",displayMode: .inline)
        }
        .onAppear{
          //  getAllEmploye()
            
            //getSingleEmploye(id: 10)
            
            let employe = Employe(id: 7056, name: "Dostonbek Eshmurodov", salary: "1200", age: "21")
           
            // createEmploye(employe: employe)
            
            //updateEmploye(employe: employe)
            
            deleteEmploye(employe: employe)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
