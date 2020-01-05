struct User {
    email string
mut:
    first_name string
    last_name string

pub:
    sin_number int
pub mut:
    phone int   // this is public mutable
__global:       // this is mutable in- and out, and public
    address_1 string
    address_2 string
    city string
    country string
    zip     string
}

fn main() {}