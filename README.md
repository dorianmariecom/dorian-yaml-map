# `dorian-yaml-map`

Map YAML to YAML with a Ruby snippet.

## Install

```bash
gem install dorian-yaml-map
```

Also included in the aggregate gem:

```bash
gem install dorian
```

## Usage

```bash
yaml-map [file ...] "ruby code"
```

Run `yaml-map -h` for generated option details and `yaml-map -v` for the installed version.

## Notes

- Arrays map each element. Hashes map each `[key, value]` pair. The final YAML is printed.

## Examples

### Increment array items

```bash
printf -- '- 1\n- 2\n' | yaml-map "it += 1"
```
