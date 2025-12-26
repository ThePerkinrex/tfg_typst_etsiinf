# Plantilla Typst para Memoria de Trabajo Fin de Grado/Master de la ETSIINF / UPM

Para usar esta plantilla te recomendamos:

0. Descarga la última versión de la plantilla, puedes encontrar un
   archivo en https://github.com/ThePerkinrex/tfg_typst_etsiinf/tags o la versión de la última commit mediante https://github.com/ThePerkinrex/tfg_typst_etsiinf/archive/refs/heads/main.zip. **Importante:** si quieres poner tu
   trabajo fin de estudios bajo control de versiones es mejor que **no
   clones** este repo.
1. Cambiar el nombre del documento principal (`tfg_etsiinf_plantilla.typ`) para
   que incluya el nombre del alumno (ej. `tfg_etsiinf_LuisAmigo.typ`).
2. Modifica los datos de tu TFG en `datos_tfg.typ`.
3. Observa el fichero documento principal y cómo se van incluyendo los
   contenidos de la memoria a partir de los ficheros en el directorio
   `secciones`.
4. Por supuesto puedes modificar la estructura de secciones propuestas
   para adecuarla al tipo de trabajo que realices.
5. Si no sabes Typst te recomendamos explorar el contenido de los ficheros para aprender un uso básico y algunas buenas prácticas, además de revisar la documentación y referencia oficial.
6. Si usas bibliografía, tendrás que meter entradas con formato Hayagriva `secciones/biblio.yml`, o puedes cambiarlo a formato BibTeX, cambiando la extensión a `.bib` y actualizando el documento principal

Ahora ya puedes generar el PDF ejecutando el siguiente mandato en tu terminal:

```bash
typst compile tfg_etsiinf_LuisAmigo.typ
```

## TODO

Hay muchos aspectos de esta plantilla que se pueden mejorar, entre ellas:

- Analizar la mejora en la accesibilidad al contenido de los
  documentos (etiquetado)
- Permitir que la plantilla sea multilingüe, al menos español/inglés, se ha empezado con el archivo `translations.typ`, queda analizar que otras partes habría que traducir, para integrarlo
