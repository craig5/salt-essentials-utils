track_example_tag:
  local.file.append:
  - tgt: master.example
  - arg:
    - /tmp/reactor_example.txt
    - {{ data }}
