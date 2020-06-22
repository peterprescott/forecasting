# Bits for Publishing

This should be set up to swiftly publish a document to pdf and html using pweave and pandoc.

Navigate to this folder and then `./publi.sh NAME`, where `NAME` is the filename *minus extension*.

This assumes that the file is saved in the `rmd` folder as `NAME.rmd`, which in turn is set up in sync with the corresponding `NAME.ipynb` file in the `notebooks` folder, as I suggest you do your analysis there with Jupyter.

References (manage them with Zotero) should be saved in this folder in a file called `refs.bib`, which should also be referenced in the YAML header of the `.Rmd` file.

It will then produce a `NAME.pdf` file in the `pdf` folder, and a `NAME.html` file in the `html` folder.
