// Copyright (c) 2019 Alexander Medvednikov. All rights reserved.
// Use of this source code is governed by an MIT license
// that can be found in the LICENSE file.

import http
import json
import sync

const (
	NR_THREADS = 4
)

struct Story {
	title string
	url string
}

struct Fetcher {
mut:
	mu      &sync.Mutex
	ids     []int
	cursor  int
	wg      &sync.WaitGroup
}

fn (f mut Fetcher) fetch() {
	for {
		if f.cursor >= f.ids.len {
			return
		}
		id := f.ids[f.cursor]
		f.mu.lock()
		f.cursor++
		f.mu.unlock()
		cursor := f.cursor
		resp := http.get('https://hacker-news.firebaseio.com/v0/item/${id}.json') or {
			println('failed to fetch data from /v0/item/${id}.json')
			exit(1)
		}
		story := json.decode(Story, resp.text) or {
			println('failed to decode a story')
			exit(1)
		}
		println('#$cursor) $story.title | $story.url')
		f.wg.done()
	}
}

// Fetches top HN stories in 4 coroutines
fn main() {
	resp := http.get('https://hacker-news.firebaseio.com/v0/topstories.json') or {
		println('failed to fetch data from /v0/topstories.json')
		return
	}
	// resp := http.get('https://hacker-news.firebaseio.com/v0/topstories.json')?
	mut ids := json.decode([]int, resp.text) or {
		println('failed to decode topstories.json')
		return
	}
	
  // keep only 10 top stories:
  if ids.len > 10 {
	  ids = ids[..10]  
  }
	
	wg := sync.new_waitgroup()
	mtx := sync.new_mutex()
	mut fetcher := &Fetcher{ids: ids}
	fetcher.mu = &mtx
	fetcher.wg = &wg
	fetcher.wg.add(ids.len)
	for i := 0; i < NR_THREADS; i++ {					
		go fetcher.fetch()
	}
	fetcher.wg.wait()
}

/* Output:
#1) The cognitive costs of air pollution | https://patrickcollison.com/pollution
#2) Your throat hurts, your brain hurts: the life of the audiobook star | https://www.theguardian.com/books/2019/nov/16/throat-hurts-brain-hurts-secret-life-of-audiobook-stars-tim-dowling
#4) How Containers Work: Overlayfs | https://jvns.ca/blog/2019/11/18/how-containers-work--overlayfs/
#3) Hacker Publishes 2TB of Data from Cayman National Bank | https://twitter.com/DDoSecrets/status/1195899716653010945
#5) MacBook Pro 16" 2019 Teardown | https://www.ifixit.com/Teardown/MacBook+Pro+16-Inch+2019+Teardown/128106
#7) Empathic concern does not reduce partisan animosity: study | https://www.wired.com/story/empathy-is-tearing-us-apart/
#8) Sourcetrail, interactive source explorer, is now free and open-source | https://www.sourcetrail.com/blog/open_source/
#6) Office noise bothers some people more than others | https://www.bbc.com/worklife/article/20191115-office-noise-acceptable-levels-personality-type
#9) A Dead-Simple Web Stack in Haskell | https://williamyaoh.com/posts/2019-11-16-a-dead-simple-web-stack.html
#10) Music Generates Feelings That Are Only Weakly Bound to the Music | https://whatismusic.info/blog/MusicGeneratesFeelingsThatAreOnlyWeaklyBoundToTheMusic.html
*/
