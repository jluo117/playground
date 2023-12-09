struct fruit:
    var Name: String
    var Color: String
    var Price: Int64
    var Weight: Int64
    
    fn __init__(inout self, name: String, color: String, price: Int64, weight: Int64):
        self.Name = name
        self.Color = color
        self.Price = price
        self.Weight = weight
    
    fn getPrice(self) -> Int64:
        return self.Price
    
    fn getWeightWithPrice(self) -> Int64:
        return self.Price * self.Weight
    