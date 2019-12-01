// Nov 9:  type `SmartPhone` has no field or method `take_picture` 
struct Phone { }

fn (p Phone ) call() string { 
    return 'Ring Ring'
}

struct Camera { }

fn (c Camera) take_picture() string { 
    return 'Click'
}

// multiple inheritance
struct SmartPhone {
	phone Phone
	camera Camera
}

cp := SmartPhone{}  
println('Our new SmartPhone exhibits multiple behaviors ...')
println('It exhibits behavior of a Camera: $cp.take_picture()')     
println('It works like a Phone too: $cp.call()') 
