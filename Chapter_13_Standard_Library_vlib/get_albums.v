import (
	http
	json
)

struct Album {
  user_id int
  id int
  title string
}

fn get_albums() []Album {
  response := http.get('https://jsonplaceholder.typicode.com/albums') or {
		panic("Couldn't find the albums page" )
	}
  parsed_albums := json.decode([]Album, response.text) or { return [] }

  return parsed_albums
}

albums := get_albums()
for album in albums { println(album) }

/* Output:
{
	user_id: 0
	id: 1
	title: quidem molestiae enim
}
{
	user_id: 0
	id: 2
	title: sunt qui excepturi placeat culpa
}
{
	user_id: 0
	id: 3
	title: omnis laborum odio
}
{
	user_id: 0
	id: 4
	title: non esse culpa molestiae omnis sed optio
}
...
*/