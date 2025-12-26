#import "sizes.typ": *
#import "util.typ":custom_outline_size
#set text(lang: "es", size: normal_size)
#set page(paper: "a4")
#set par(justify: true)

#let page_zone = counter(<page-zone>)

#include "portada/portada.typ"


#show heading: it => {
  v(0.7cm)
  it
	if it.level == 2 [
		#metadata([#counter(heading).display("1.") #it.body]) <section-start>
	]
  v(0.5cm)
}
#show heading.where(level: 1): set heading(supplement: [Capítulo])
#show heading.where(level: 1): it => {
  [
    #{
      set page(header: none, numbering: none)
      pagebreak(weak: true, to: "odd")
    }
    // #
    // #set page(numbering: none)
    // #
    #v(4.5cm)
    #if heading.numbering != none [
      #set text(size: LARGE_size)
      #heading.supplement #counter(heading).display("1")
    ]

    #set text(size: Huge_size + 2pt)
    #it.body
		#metadata([
			#if heading.numbering != none [ #heading.supplement #counter(heading).display("1.") ] #it.body]) <chapter-start>
    #v(1cm)
  ]
}
#set page(header: context {
  let matches = query(selector(<chapter-start>))
  let current_page = counter(page).get().at(0)
  let current_zone = page_zone.get().at(0)
  let chapter-start = matches.find(m => counter(page).at(m.location()).at(0) == current_page and page_zone.at(m.location()).at(0) == current_zone)

  if chapter-start == none {
    if calc.odd(current_page) {
      let current_section = query(selector(<section-start>).before(here())).last(default: none)
      if current_section != none {
        let c = counter(heading).get()
				set align(right)
        // [*#current_section.supplement #numbering("1.", c.at(0), c.at(1)) #current_section.body*]
        [*#current_section.value*]
      }
    } else {
      let current_chapter = query(selector(<chapter-start>).before(here())).last(default: none)
      if current_chapter != none {
        [*#current_chapter.value*]
      }
    }
    move(line(length: 100%), dy: -0.25cm)
  }
})

#pagebreak()
#metadata("roman-numbers")<page-zone>
#counter(page).update(1)
#set page("a4", numbering: "i")

#include "secciones/agradecimientos.typ"
#include "secciones/resumen.typ"

#pagebreak()

#show outline.entry.where(
  level: 1
): set block(above: 1.2em)

#show outline.entry.where(
  level: 1
): set text(weight: "bold")
// #set outline.entry(fill: repeat([.], gap: 0.35em))

#show outline.entry.where(
  level: 1
): it => {
  let sz = custom_outline_size.at(it.element.location())
  if sz != none {
    set text(size: sz)
    it
  }else{
    it
  }
  // [#(sz, it.element.location()) #it]
}
#outline(title: "Tabla de contenidos")


#set heading(numbering: "1.")
#{
  set page(header: none, numbering: none)
  pagebreak(weak: true, to: "odd")
}
#metadata("arabic-numbers")<page-zone>
#counter(page).update(1)
#set page("a4", numbering: "1")

= Introducción
== Hello 1
#lorem(100)


#lorem(100)

#lorem(100)

#lorem(100)


#lorem(100)


#lorem(100)

#lorem(100)

#lorem(100)

== Hello 2
#lorem(100)


#lorem(100)

#lorem(100)

#lorem(100)

== Hello 3

#lorem(50)

= B
hdfuisghdufisdghdulaghsdl

== A
#lorem(50)

