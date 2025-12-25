#import "../data.typ": *
#import "../sizes.typ": *

#context {
  grid(
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

  v(1fr)
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
    [Madrid, #display_fecha]
  }
  v(2cm)

  pagebreak()


  [
    Este Trabajo Fin de #estudios se ha depositado en la ETSI Informáticos de la Universidad Politécnica de Madrid para su defensa.
  ]

  v(4cm)
  [
    _Trabajo Fin de #estudios _\
    #estudios en #titulo_estudios


  ]
  stack(dir: ltr, [_Título:_], h(0.5cm), block(width: 88%)[#titulo_trabajo])

  [#display_fecha]

  v(4cm)

  grid(
    align: left,
    columns: (auto, 85%),
    column-gutter: 0.5cm,
		row-gutter: 0.3cm,
    [_Autor:_], [#nombre_autor],
		[_Tutor:_], [
    #nombre_tutor\
    #departamento\
    Escuela Técnica Superior de Ingenieros Informáticos\
    Universidad Politécnica de Madrid
  ]
  )

}
