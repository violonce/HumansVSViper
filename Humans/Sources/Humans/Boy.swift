import Foundation

protocol BoyProtocol:HumanProtocol{
}

class Boy: EmptyHuman,BoyProtocol{
    
    required init(name:String,
                  surname:String,
                  height:Float,
                  weight:Float)
    {
        super.init(name: name, surname: surname, height: height, weight: weight)
        self.gender = .boy
    }
    
    override func talk<HumanPrototype:HumanProtocol>(human: HumanPrototype) -> Bool{
        switch human.gender {
        case .girl:
            return true
        case .boy:
            return Bool.random()
        default:
            return false
        }
    }
    
    override func endureSociety<HumanPrototype:HumanProtocol>(human: HumanPrototype) -> Bool{
        switch human.gender {
        case.boy:
            return Bool.randomWith(persent: 5.6)
        case .girl:
            return Bool.randomWith(persent: 70.0)
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
                let girl:GirlProtocol = human as! GirlProtocol
                return girl.birthToPerson(human: self)
            }
        return EmptyHuman.init(name: "", surname: "", height: 0.0, weight: 0.0)
    }
    
    override func fullInfo() -> String {
        return String(format: "%@\n%@\n%@\n%f\n%f", gender.value(type: gender), name, surname, height, weight)
    }
}
