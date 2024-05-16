let smartphonePrices: [String: Double] = [
    "iPhone 14": 999.99,
    "Samsung Galaxy S21": 849.99,
    "Google Pixel 6": 699.99,
    "OnePlus 9": 729.99
]

class SmartphoneOrder {
    var model: String
    var quantity: Int
    var customerName: String
    var customerCIN: String?
    
    init(model: String, quantity: Int, customerName: String, customerCIN: String? = nil) {
        self.model = model
        self.quantity = quantity
        self.customerName = customerName
        self.customerCIN = customerCIN
    }
    
    func orderDetails() {
        print("Customer Name: \(customerName)")
        if let cin = customerCIN {
            print("Customer CIN: \(cin)")
        }
        print("Model: \(model)")
        print("Quantity: \(quantity)")
    }
    
    func totalCost() -> Double {
        if let price = smartphonePrices[model] {
            return price * Double(quantity)
        } else {
            return 0.0
        }
    }
}

let order1 = SmartphoneOrder(model: "iPhone 14", quantity: 2, customerName: "Alice Dupont", customerCIN: "AB123456")
let order2 = SmartphoneOrder(model: "Samsung Galaxy S21", quantity: 1, customerName: "Bob Martin")

order1.orderDetails()
print("Total Cost: \(order1.totalCost())")

print("---")

order2.orderDetails()
print("Total Cost: \(order2.totalCost())")
