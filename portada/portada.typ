#import "../data.typ": *
#import "../sizes.typ": *

#let portada() = context {
  table(
    columns: (20%, 1fr, 20%),
    align: center,
    image("escudo_upm.png", height: 13%),
    {
      context {
        set text(size: huge_size)
        [
          Universidad Politécnica \
          de Madrid
        ]
      }

      v(0.5cm)

      context {
        set text(size: Large_size, weight: "bold")
        [
          Escuela Técnica Superior de\
          Ingenieros Informáticos
        ]
      }
    },
    image("escudo_etsiinf.png", height: 13%),
  )
  v(1cm)
  context {
    set align(center)
    context {
      set text(size: Large_size)
      [
        #estudios en #titulo_estudios
      ]
    }
    v(1cm)
    context {
      set text(size: huge_size)
      [
        Trabajo de Fin de #estudios
      ]
    }
    v(0.5cm)
    context {
      set text(size: huge_size, weight: "bold")
      [
        #titulo_trabajo
      ]
    }
  }

  v(5cm	)
  context {
    set text(size: large_size)
    [
      Autor: #nombre_autor\
      Tutor(a): #nombre_tutor
    ]
  }

	v(4cm)
	context {
		set align(center)
		[Madrid, #fecha.display("[month repr:long] [year]")]
	}
}
