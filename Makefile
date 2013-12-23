STUB=cv_simon_walker

all: ${STUB}.html ${STUB}.pdf

${STUB}.html: ${STUB}.markdown
	pandoc --standalone --from markdown --to html -o $@ $< -c style.css

${STUB}.pdf: ${STUB}.markdown
	pandoc --standalone --from markdown  -o $@ $< -c style.css
