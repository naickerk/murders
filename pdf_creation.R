

# Load packages
require(knitr)
require(markdown)

# Create .md, .html, and .pdf files
knit("pr.Rmd")
markdownToHTML('pr.md', 'pr.html', options=c("use_xhml"))
system("pandoc -s pr.html -o pr.pdf")

