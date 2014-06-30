
ALL : OnDemocracy.epub OnDemocracy.mobi OnDemocracy.pdf

OnDemocracy.epub: 
	rm -f OnDemocracy.epub
	zip -X0 OnDemocracy.epub mimetype
	zip -Xur9D OnDemocracy.epub META-INF/* OEBPS/*

OnDemocracy.mobi: OnDemocracy.epub
	rm -f OnDemocracy.mobi
	ebook-convert OnDemocracy.epub OnDemocracy.mobi

OnDemocracy.pdf: OnDemocracy.epub
	rm -f OnDemocracy.pdf
	ebook-convert OnDemocracy.epub OnDemocracy.pdf --embed-all-fonts --margin-left 24 --margin-top 24 --margin-right 24 --margin-bottom 24 --minimum-line-height 160

