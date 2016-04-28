# Delemma [![Build Status](https://travis-ci.org/greyblake/crystal-delemma.svg?branch=master)](https://travis-ci.org/greyblake/crystal-delemma)

Crystal lemmatization tool for German language.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  delemma:
    github: greyblake/crystal-delemma
```

## Usage


```crystal
require "delemma"

Delemma.lemmatize("Bücher")   # => "Buch"
Delemmer.lemmatize("gesagt")  # => "sagen"
```

## Contributors

- [greyblake](https://github.com/greyblake) Sergey Potapov - creator, maintainer
