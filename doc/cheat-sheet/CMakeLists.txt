add_latex_document(SOURCE main.tex RCFILE .latexmkrc)
dune_symlink_to_source_files(FILES run.sh)
# TODO: Ver https://cliutils.gitlab.io/modern-cmake/chapters/basics/programs.html