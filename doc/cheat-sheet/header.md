colorlinks: true
header-includes:
  # Include the minted package, set global style, define colors, etc.
  - "\\usepackage{minted}"
  - "\\usemintedstyle{tango}"
  # Prevent italics in the `minted` environment.
  - "\\AtBeginEnvironment{minted}{\\let\\itshape\\relax}"
  # Prevent italics in the `\mintinline` command.
  - "\\usepackage{xpatch}"
  - "`\\xpatchcmd{\\mintinline}{\\begingroup}{\\begingroup\\let\\itshape\\relax}{}{}`{=latex}"