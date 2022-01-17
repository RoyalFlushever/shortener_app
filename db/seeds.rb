# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


links = %w(
  youtube.com support.google.com www.google.com play.google.com microsoft.com www.blogger.com apple.com linkedin.com
  en.wikipedia.org maps.google.com youtu.be wordpress.org mozilla.org cloudflare.com docs.google.com sites.google.com
  adobe.com googleusercontent.com plus.google.com drive.google.com whatsapp.com accounts.google.com europa.eu bp.blogspot.com
  t.me vk.com uol.com.br es.wikipedia.org github.com vimeo.com facebook.com amazon.com istockphoto.com search.google.com
  youronlinechoices.com nih.gov www.weebly.com terra.com.br bbc.co.uk wikimedia.org feedburner.com creativecommons.org
  news.google.com brandbucket.com files.wordpress.com jimdofree.com google.de developers.google.com mail.google.com
  live.com google.co.jp w3.org pt.wikipedia.org tools.google.com dailymotion.com google.es fr.wikipedia.org imdb.com
  theguardian.com medium.com globo.com line.me google.com.br nytimes.com gstatic.com reuters.com myspace.com policies.google.com
  slideshare.net issuu.com paypal.com dropbox.com who.int cnn.com bbc.com dan.com www.yahoo.com enable-javascript.com forbes.com
  google.pl plesk.com namecheap.com forms.gle huffingtonpost.com mirror.co.uk nature.com picasaweb.google.com android.com
  estadao.com.br scribd.com gravatar.com usatoday.com lefigaro.fr wp.com hugedomains.com independent.co.uk ig.com.br
  amazon.es businessinsider.com 4shared.com amazon.co.uk foxnews.com google.ru tinyurl.com id.wikipedia.org aliexpress.com
  ipv4.google.com photos.google.com telegram.me amazon.de ok.ru bloomberg.com archive.org wa.me indiatimes.com booking.com
  huffpost.com amazon.co.jp buydomains.com rakuten.co.jp office.com goo.gl myaccount.google.com sedo.com opera.com cpanel.net
  draft.blogger.com msn.com abril.com.br books.google.com twitter.com networkadvertising.org pixabay.com cdc.gov www.gov.uk
  get.google.com mediafire.com cnet.com translate.google.com washingtonpost.com google.co.uk google.fr wsj.com thesun.co.uk
  cpanel.com ytimg.com wikia.com mail.ru dailymail.co.uk hatena.ne.jp telegraph.co.uk change.org researchgate.net google.it
  fandom.com elmundo.es pinterest.com list-manage.com un.org de.wikipedia.org wired.com news.yahoo.com time.com bit.ly
  elpais.com netvibes.com t.co aboutads.info abcnews.go.com fb.com nasa.gov theverge.com smh.com.au webmd.com aol.com
  engadget.com google.ca newsweek.com ovh.net amzn.to sciencedirect.com economist.com lemonde.fr mit.edu yadi.sk www.over-blog.com
  clarin.com shopify.com naver.com doubleclick.net espn.com imageshack.us huawei.com ru.wikipedia.org latimes.com steampowered.com
  it.wikipedia.org 20minutos.es doi.org instructables.com finance.yahoo.com e-monsite.com hm.com rapidshare.com mashable.com
  berkeley.edu spiegel.de groups.google.com vice.com ovh.com nationalgeographic.com sapo.pt addthis.com calendar.google.com
  netlify.app washington.edu playstation.com google.co.in bp2.blogger.com lavanguardia.com ted.com adssettings.google.com
  google.com.tw afternic.com mozilla.com target.com nypost.com weibo.com ca.gov gizmodo.com quora.com code.google.com
  feedproxy.google.com addtoany.com pexels.com akamaihd.net dw.com yandex.ru sfgate.com ggpht.com instagram.com privacyshield.gov
  leparisien.fr nginx.org freepik.com whitehouse.gov www.wikipedia.org chicagotribune.com bloglovin.com samsung.com
  urbandictionary.com shutterstock.com thetimes.co.uk plos.org google.nl gooyaabitemplates.com akamaized.net as.com abc.es
  gmail.com kickstarter.com alexa.com ft.com npr.org guardian.co.uk vox.com gofundme.com apache.org cornell.edu discord.com
  ria.ru yahoo.co.jp britannica.com buzzfeed.com techcrunch.com detik.com nydailynews.com ebay.com liberation.fr zoom.us
  photos1.blogger.com secureserver.net hp.com t-online.de metro.co.uk ietf.org oup.com tmz.com m.wikipedia.org bandcamp.com
  nbcnews.com walmart.com prezi.com francetvinfo.fr ign.com nikkei.com springer.com rtve.es abc.net.au dreamstime.com
  cambridge.org ea.com ikea.com qq.com clickbank.net hollywoodreporter.com lycos.com gnu.org biglobe.ne.jp ftc.gov
  tripadvisor.com cnil.fr psychologytoday.com photobucket.com oracle.com rt.com dailystar.co.uk sky.com bing.com soundcloud.com
  www.wix.com standard.co.uk sciencemag.org repubblica.it cbsnews.com cnbc.com pbs.org godaddy.com news.com.au disqus.com
  php.net bitly.com storage.googleapis.com goodreads.com netflix.com unesco.org themeforest.net theatlantic.com sendspace.com
  bp1.blogger.com picasa.google.com zdf.de usnews.com mega.nz yelp.com fb.me amazon.fr slate.com www.gov.br alibaba.com
  zendesk.com arxiv.org deezer.com outlook.com pl.wikipedia.org tiktok.com sputniknews.com skype.com insider.com welt.de
  sciencedaily.com disney.com search.yahoo.com eventbrite.com wikihow.com stanford.edu amazon.it twitch.tv academia.edu
  discord.gg harvard.edu ziddu.com express.co.uk surveymonkey.com ja.wikipedia.org icann.org googleblog.com about.com
  newyorker.com wiley.com xbox.com nginx.com cbc.ca spotify.com variety.com evernote.com cisco.com qz.com behance.net
  fda.gov searchenginejournal.com dreniq.com bild.de ndtv.com udemy.com about.me ieee.org greenpeace.org steamcommunity.com
  iubenda.com faz.net legifrance.gouv.fr adweek.com dribbble.com house.gov wiktionary.org offset.com dell.com ibm.com tes.com
  thedailybeast.com newscientist.com xing.com blog.fc2.com canada.ca zdnet.com so-net.ne.jp focus.de mystrikingly.com weforum.org
  uefa.com tabelog.com answers.com naver.jp eonline.com elsevier.com corriere.it sagepub.com ebay.co.uk marriott.com goal.com
  medicalnewstoday.com a8.net airbnb.com usgs.gov google.com.au ebay.de example.com investopedia.com yale.edu yandex.com
  amazon.ca imgur.com wn.com m.me sports.yahoo.com rambler.ru foursquare.com thehill.com google.co.id si.com fifa.com
  kompas.com groups.yahoo.com bbci.co.uk si.edu vkontakte.ru statista.com pinterest.co.uk mysql.com politico.com kotaku.com
  indiegogo.com digg.com alicdn.com gutenberg.org state.gov ucoz.ru hbr.org utexas.edu billboard.com thoughtco.com thestar.com
  namesilo.com orange.fr venturebeat.com oecd.org abc.com asus.com zeit.de iso.org techradar.com merriam-webster.com
  entrepreneur.com pnas.org usda.gov fortune.com mercurynews.com imageshack.com twimg.com worldbank.org e-recht24.de box.com dot.tk
  arstechnica.com lg.com bp0.blogger.com pcmag.com salon.com)

links.sample(150).each do |w|
  Link.create(url: 'https://' + w, visits: rand(10000...1000000), remote_ip: "#{rand(0...256)}.#{rand(0...256)}.#{rand(0...256)}.#{rand(0...256)}")
end

