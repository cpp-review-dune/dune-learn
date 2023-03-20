add_latex_document(SOURCE main.report.tex RCFILE .latexmkrc)
add_latex_document(SOURCE main.beamer.tex RCFILE .latexmkrc)
dune_symlink_to_source_files(FILES run.sh)
# TODO: Ver https://cliutils.gitlab.io/modern-cmake/chapters/basics/programs.html

add_custom_command(
  TARGET doc_cheat-sheet_main_report_tex
  # POST_BUILD
  COMMAND /bin/bash run.sh
)
