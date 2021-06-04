import Foundation

public extension Int {
    
    var roman: String? {
        var arabicNumber = self
        var romanNumber = ""
        if (self<1 || self>3999){
            return nil
        }
        while arabicNumber > 0 {
            switch arabicNumber {
            case 1000...3999:
                romanNumber+="M"
                arabicNumber-=1000
            case 900..<1000:
                romanNumber+="CM"
                arabicNumber-=900
            case 500..<900:
                romanNumber+="D"
                arabicNumber-=500
            case 400..<500:
                romanNumber+="CD"
                arabicNumber-=400
            case 100..<400:
                romanNumber+="C"
                arabicNumber-=100
            case 90..<100:
                romanNumber+="XC"
                arabicNumber-=90
            case 50..<90:
                romanNumber+="L"
                arabicNumber-=50
            case 40..<50:
                romanNumber+="XL"
                arabicNumber-=40
            case 10..<40:
                romanNumber+="X"
                arabicNumber-=10
            case 9..<10:
                romanNumber+="IX"
                arabicNumber-=9
            case 5..<9:
                romanNumber+="V"
                arabicNumber-=5
            case 4..<5:
                romanNumber+="IV"
                arabicNumber-=4
            case 1..<4:
                romanNumber+="I"
                arabicNumber-=1
            default:
                return nil
            }
        }
        return romanNumber
    }
    
}
