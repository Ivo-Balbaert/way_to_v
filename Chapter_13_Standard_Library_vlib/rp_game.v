struct Place {
    name string
mut:
    left &Place
    right &Place
    previous &Place
}

struct Traveler {
mut:
    location &Place
}

fn nonnil_or_stay(old_place &Place, new_place &Place) &Place {
    if isnil(new_place) {
       println("Nothing is there.")
       return old_place
    } else {
       return new_place
    }
}

fn move(trav mut Traveler, direction string) {
    place := trav.location
    back := place.previous
    left := place.left
    right := place.right

    println("Old location $trav.location.name")
    println("Trying to move $direction")

    if direction == "back" {
        trav.location = nonnil_or_stay(place, back)
    } else if direction == "left" {
        trav.location = nonnil_or_stay(place, left)
    } else if direction == "right" {
        trav.location = nonnil_or_stay(place, right)
    } else {
        println("$direction is not valid, use back, left or right")
    }
    println("New location $trav.location.name")
}

fn main() {
    mut tree := Place{name: "Tree"}
    mut pile := Place{name: "Pile of old leaves"}
    mut shrub := Place{name: "Shrubbery"}
    mut bear := Place{name: "Bear behind Shrubbery"}

    // connect tree node with its children
    tree.left = &pile
    tree.right = &shrub
    pile.previous = &tree
    shrub.previous = &tree

    // forward-connect shrub node only
    // because it already has 'previous' set
    shrub.right = &bear
    bear.previous = &shrub

    println(&tree)
    println(tree)

    println(&pile)
    println(pile)

    println(&shrub)
    println(shrub)

    println(&bear)
    println(bear)

		traveler := Traveler{location: &tree}
		println(traveler.location.name) // Tree

	move(mut traveler, "back")
    move(mut traveler, "left")
    move(mut traveler, "back")
    move(mut traveler, "right")
    move(mut traveler, "back")
}
/*
Tree
Old location Tree
Trying to move back
Nothing is there.
New location Tree
Old location Tree
Trying to move left
New location Pile of old leaves
Old location Pile of old leaves
Trying to move back
New location Tree
Old location Tree
Trying to move right
New location Shrubbery
Old location Shrubbery
Trying to move back
New location Tree
*/