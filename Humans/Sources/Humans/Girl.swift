import Foundation

protocol GirlProtocol:HumanProtocol{
    func birthToPerson(human: HumanProtocol) -> HumanProtocol
}

class Girl: EmptyHuman, GirlProtocol{
    
    required init(name:String,
                  surname:String,
                  height:Float,
                  weight:Float)
    {
        super.init(name: name, surname: surname, height: height, weight: weight)
        self.gender = .girl
    }
    
    override func talk<HumanPrototype:HumanProtocol>(human: HumanPrototype) -> Bool{
        return true
    }
    
    override func endureSociety<HumanPrototype:HumanProtocol>(human: HumanPrototype) -> Bool{
        switch human.gender {
        case.boy:
            return Bool.randomWith(persent: 70.0)
        case .girl:
            return Bool.randomWith(persent: 5.0)
        default:
            return false
        }
    }
    
    override func spendingTimeTogether<HumanPrototype:HumanProtocol>(human: HumanPrototype) -> Bool{
        let differenceHeight = (self.height - human.height)/self.height
        if differenceHeight > -0.1 && differenceHeight < 0.1 { return Bool.randomWith(persent: 95)}
        else { return Bool.randomWith(persent: 85)}
    }
    
    override func beInRelationship(human: HumanProtocol) -> HumanProtocol{
        if (self.talk(human: human) &&
            self.endureSociety(human: human) &&
            self.spendingTimeTogether(human: human) &&
            self.gender != human.gender )
            {
                return self.birthToPerson(human: human )
            }
        return EmptyHuman(name: "", surname: "", height: 0.0, weight: 0.0)
    }
    
    func birthToPerson(human: HumanProtocol) -> HumanProtocol{
        let gender = Bool.random() ? "M" : "W"
        let childType:EmptyHuman.Type = HumanGenderType.classWith(value: gender)
        let name = String.randomName()
        let surname = human.surname
        
        let height:Float
        let weight:Float
        
        switch childType {
        case is Boy.Type:
            height = human.height * 1.1
            weight = human.weight * 1.1
        case is Girl.Type:
            height = self.height * 1.1
            weight = self.weight * 1.1
        default:
            height = 0.0
            weight = 0.0
        }
        
        return childType.init(name: name, surname: surname, height: height, weight: weight)
    }
    
    override func fullInfo() -> String {
        return String(format: "%@\n%@\n%@\n%f\n%f", gender.value(type: gender), name, surname, height, weight)
    }
}
