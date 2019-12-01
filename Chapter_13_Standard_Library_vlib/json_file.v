import os
import json 

struct Extract {
        origin string
        target_language string
        category int
        source string
        source_language string
        target string
    }

fn main() {
    file := os.read_file('weblate-memory.json') or {
        eprintln('Error opening file!')
        return
    }

    users:= json.decode([]Extract, file) or {
        eprintln('Failed to decode json')
        return
    }

    for u in users {
      println(u.source)
      println(u.target)
    }
}

/* Output:
Card callback failure
କାର୍ଡ଼ କଲବ୍ୟାକ ଅସଫଳ
Sink callback failure
ସିଙ୍କ କଲବ୍ୟାକ ଅସଫଳ
*/