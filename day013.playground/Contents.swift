import Cocoa

// Protocols and extensions
// Checkpoint 8

protocol Building {
    var room: Int { get set }
    var cost: Int { get set }
    var estateAgent: String { get set }
    func summary() -> Void;
}

extension Building {
    func summary() -> Void {
        print("This building has \(room) rooms, costs \(cost) and the estate agent is \(estateAgent).");
    }
}

struct House: Building {
    var room: Int
    var cost: Int
    var estateAgent: String
}


struct Office: Building {
    var room: Int
    var cost: Int
    var estateAgent: String
}

var house = House(room: 2, cost: 500, estateAgent: "Agent 1");
house.summary(); // This building has 2 rooms, costs 500 and the estate agent is Agent 1.

var office = Office(room: 5, cost: 10000, estateAgent: "Agent 2");
office.summary(); // This building has 5 rooms, costs 10000 and the estate agent is Agent 2.
