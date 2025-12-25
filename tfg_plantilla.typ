#import "sizes.typ": *
#set text(lang: "es", size: normal_size)
#set page(paper: "a4")
#set par(justify: true)

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

#pagebreak()
#counter(page).update(1)
#set page("a4", numbering: "i")

#include "secciones/agradecimientos.typ"
#include "secciones/resumen.typ"

#pagebreak()

#outline(title: "Tabla de contenidos")


#set heading(numbering: "1.")
#{
  set page(header: none, numbering: none)
  pagebreak(weak: true, to: "odd")
}
#counter(page).update(1)
#set page("a4", numbering: "1", header: context {
  let matches = query(selector(<chapter-start>))
  let current = counter(page).get().at(0)
  let chapter-start = matches.find(m => counter(page).at(m.location()).at(0) == current)

  if chapter-start == none {
    if calc.odd(current) {
      let current_section = query(heading.where(level: 2).before(here())).last(default: none)
      if current_section != none {
        let c = counter(heading).get()
				set align(right)
        [*#current_section.supplement #numbering("1.", c.at(0), c.at(1)) #current_section.body*]
      }
    } else {
      let current_chapter = query(heading.where(level: 1).before(here())).last(default: none)
      if current_chapter != none {
        [*#current_chapter.supplement #numbering("1.", counter(heading).get().at(0)) #current_chapter.body*]
      }
    }
    move(line(length: 100%), dy: -0.25cm)
  }else{
		[#matches.last().value #current]
	}
})

= Introducción
== Hello
#lorem(100)


#lorem(100)

#lorem(100)

#lorem(100)


#lorem(100)


#lorem(100)

#lorem(100)

#lorem(100)

== Hello
#lorem(100)


#lorem(100)

#lorem(100)

#lorem(100)

= B
hdfuisghdufisdghdulaghsdl
