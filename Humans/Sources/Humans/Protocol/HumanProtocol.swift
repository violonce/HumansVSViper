import Foundation

protocol HumanProtocol{
    
    var gender: HumanGenderType { get set}
    var name:String { get set}
    var surname: String { get set}
    var height: Float { get set}
    var weight: Float { get set}
    
    init(name:String, surname:String, height:Float, weight:Float)
    
    func talk<HumanPrototype:HumanProtocol>(human: HumanPrototype) -> Bool
    func endureSociety<HumanPrototype:HumanProtocol>(human: HumanPrototype) -> Bool
    func spendingTimeTogether<HumanPrototype:HumanProtocol>(human: HumanPrototype) -> Bool
    func beInRelationship(human: HumanProtocol) -> HumanProtocol
    
    func fullInfo() -> String
}
