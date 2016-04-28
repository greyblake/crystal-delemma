# Delemmer.cr

Word lemmer for German language

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  delemmer:
    github: greyblake/delemmer.cr
```

## Usage


```crystal
require "delemmer"

Delemma.lemmatize("Bücher")   # => "Buch"
Delemmer.lemmatize("gesagt")  # => "sagen"
```

## Contributors

- [greyblake](https://github.com/greyblake) Sergey Potapov - creator, maintainer
