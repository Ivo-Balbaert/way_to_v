import http

fn main() {
	html := http.get_text('https://news.ycombinator.com')  
	mut pos := 0
	for {
		pos = html.index_after('https://', pos + 1)
		if pos == -1 {
			break
		}
		end := html.index_after('"', pos)
		println(html[pos..end])
	}
}

/* Output:
https://news.ycombinator.com
https://news.bloomberglaw.com/privacy-and-data-security/facebook-google-donate-heavily-to-privacy-advocacy-groups
https://www.intel.com/content/www/us/en/support/topics/idsa-cip.html#CollectedData
https://www.vogons.org/viewtopic.php?f=46&amp;t=69184
https://blog.floydhub.com/a-pirates-guide-to-accuracy-precision-recall-and-other-scores/
https://arstechnica.com/tech-policy/2019/11/google-search-results-have-more-human-help-than-you-think-report-finds/
https://en.wikipedia.org/wiki/Crinkle_crankle_wall
https://ahajournals.org/doi/full/10.1161/circulationaha.111.061770
https://github.com/norvig/paip-lisp/issues/10
https://www.1843magazine.com/culture/look-closer/hokusai-old-man-crazy-to-paint
https://github.com/khstangherlin/monker
https://www.scmp.com/lifestyle/food-drink/article/3037576/highs-and-lows-lowell-cafe-americas-first-cannabis-cafe-where
https://github.com/dosycorp/browsergap.ce
https://medium.com/through-the-looking-glass/colossal-holograms-b7f86f5925bd
https://www.nytimes.com/2019/11/14/science/stars-black-hole-milky-way.html
https://www.joshmcguigan.com/blog/understanding-serde/
https://www.currentaffairs.org/2019/11/the-innocent-pleasure-of-trespassing
https://www.collectorsweekly.com/articles/how-boomboxes-got-so-badass/
https://littlemountainman.github.io/2019/11/27/selfdrivingfun/
https://www.scottaaronson.com/blog/?p=4414
https://www.pnas.org/content/early/2019/11/11/1907883116
https://www.reuters.com/article/us-interpol-encryption-exclusive/exclusive-interpol-plans-to-condemn-encryption-spread-citing-predators-sources-say-idUSKBN1XR0S7
https://www.wbur.org/hereandnow/2019/11/15/amtrak-profit-train-ceo-richard-anderson
https://www.shacknews.com/article/114982/world-on-fire-the-oral-history-of-fallout-and-fallout-2
https://blog.benjojo.co.uk/post/userspace-usb-drivers
https://www.reuters.com/article/us-apple-germany-apple-pay/apple-warns-of-risks-from-german-law-to-open-up-mobile-payments-idUSKBN1XP16M
https://www.bfilipek.com/2019/11/perfguidecpu.html
https://github.com/HackerNews/API
*/