import UIKit


func taumBday(b: Int, w: Int, bc: Int, wc: Int, z: Int) -> Int {

    if wc - bc > z {
        return (b+w)*bc + (z*w)
    }
    else if bc - wc > z {
        return (b+w)*wc + (z*b)
    }
    else {
        return b*bc + w*wc
    }

}



