/*** PROTOCOLS ***/

/// Declaring a Protocol

protocol ProtokolKesehatan {
  func pakaiFaceMask(_ brand: String)
  func jagaJarak(minimal meter: Int)
  func cuciTangan(withSabun: Bool)
  func checkInPeduliLindungi()
}

/// Implementing a Protocol

struct Universitas: ProtokolKesehatan {
  var name: String

  func pakaiFaceMask(_ brand: String) {
    print("Di \(name) wajib pakai face mask merk \(brand)")
  }

  func jagaJarak(minimal meter: Int) {
    print("Di \(name) jaga jarak minimal \(meter)m")
  }

  func cuciTangan(withSabun: Bool) {
    if withSabun {
      print("Di \(name) wajib cuci tangan pakai sabun")
    } else {
      print("Di \(name) wajib cuci tangan")
    }
  }

  func checkInPeduliLindungi() {
    print("Di \(name) wajib checkin Peduli Lindungi")
  }
}

let uc = Universitas(name: "UC")
uc.pakaiFaceMask("KN95")
uc.jagaJarak(minimal: 2)
uc.cuciTangan(withSabun: true)
uc.checkInPeduliLindungi()

/// Sebuah Mall, bernama PTC, diharuskan mengikuti protokol kesehatan

/// Buat pernyataan diatas dalam bentuk OOP

class Building {
  var name: String
  var location: String

  init(name: String, location: String) {
    self.name = name
    self.location = location
  }
}

class Mall: Building, ProtokolKesehatan {
  
   func pakaiFaceMask(_ brand: String) {
    print("Di \(name) wajib pakai face mask merk \(brand)")
  }

  func jagaJarak(minimal meter: Int) {
    print("Di \(name) jaga jarak minimal \(meter)m")
  }

  func cuciTangan(withSabun: Bool) {
    if withSabun {
      print("Di \(name) wajib cuci tangan pakai sabun")
    } else {
      print("Di \(name) wajib cuci tangan")
    }
  }

  func checkInPeduliLindungi() {
    print("Di \(name) wajib checkin Peduli Lindungi")
  }
}

let ptc = Mall(name: "PTC", location: "Surabaya")
ptc.pakaiFaceMask("KF94")
ptc.jagaJarak(minimal: 2)
ptc.cuciTangan(withSabun: true)
ptc.checkInPeduliLindungi()

/// Protocols in Game app

// Main.swift
let potion1 = Potion(name: "Small Potion", quantity: 100)
print(potion1.name, potion1.quantity)
potion1.store(in: "Item Box")

potion1.consume(by: 15)
print(potion1.name, potion1.quantity)

print()

let sword1 = Sword(name: "Long Sword")
print(sword1.name)
sword1.store(in: "Backpack")
sword1.equip()

print()

let shield1 = Shield(name: "Iron Shield")
print(shield1.name)
shield1.store(in: "In-Hand")
shield1.equip()

print()


// Item.swift
public class Item {
    public var name: String
    
    public init(name: String)
    {
        self.name = name
    }

  public func store(in storage: String) {
        print("\(name) stored in \(storage)")
    }
}

// Potion.swift
public class Potion: Item, Consumable {
    
    public var quantity: Int
    
    public init(name: String, quantity: Int) {
        self.quantity = quantity
        
        super.init(name: name)
    }
    
    public func consume(by quantity: Int) {
        self.quantity -= quantity
        
        print("\(name) consumed: \(quantity)")
    }
}

// Shield.swift
public class Shield: Item, Equipable {
    
    public func equip() {
        print("\(name) is equipped")
    }
}

// Sword.swift
public class Sword: Item, Equipable {
    
    public func equip() {
        print("\(name) is equipped")
    }
}

// Storable.swift
public protocol Storable {
    func store(in storage: String)
}

// Consumable.swift
public protocol Consumable {
    var quantity: Int { 
        get 
    }
    
    func consume(by quantity: Int)
}

// Equipable.swift
public protocol Equipable {
    func equip()
}
