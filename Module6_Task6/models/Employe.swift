
import Foundation

class Employe:Decodable {
    var id:Int?
    var name:String?
    var salary:String?
    var age:String?
    
    init() {
        
    }
    
    init(id:Int,name:String,salary:String,age:String) {
        self.id = id
        self.name = name
        self.salary = salary
        self.age = age
    }
}
