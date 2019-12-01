// TODO: this will be implemented later in May
struct Button {
	widget Widget
	title string
}

button := new_button('Click me')
button.set_pos(x, y)

// Without embedding we'd have to do
button.widget.set_pos(x,y)