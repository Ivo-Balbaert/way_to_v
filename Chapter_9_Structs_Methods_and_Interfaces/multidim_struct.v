struct MultArray {
pub mut:
  data [][]f64
}

fn main () {
    mut mat := MultArray {
        data :  [[f64(11),12,13]
                ,[f64(21),22,23]
                ,[f64(31),32,33]
                ,[f64(41),42,43]]
    }
    mat.data << [[f64(98),97,96,95,94,93]]
    // Work around
    b := mat.data
    c := b[4][4]
    println( c )  // 94.000000

    // same case on local variable
    mut data_local :=  [[f64(11),12,13]
		         ,[f64(21),22,23]
		         ,[f64(31),32,33]
		         ,[f64(41),42,43]]

    data_local << [[f64(98),97,96,95,94,93]]
    println(data_local[4][4]) // 94.000000
}