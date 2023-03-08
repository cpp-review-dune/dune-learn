add_executable("dune-learn" dune-learn.cc)
target_link_dune_default_libraries("dune-learn")

dune_symlink_to_source_files(FILES dune-learn.cc)