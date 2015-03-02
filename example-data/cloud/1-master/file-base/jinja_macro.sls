{% macro exclaim(string) -%}
{{ string + '!!!' -}}
{%- endmacro %}
jinja_macro:
  cmd.run:
  - name: "echo {{ exclaim('Yay') }}"
