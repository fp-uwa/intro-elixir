# Introduction to Elixir

## FP @ UWA | Mark Shelton | 17 November 2017

### Prerequisites

- Install elixir (and erlang): <https://elixir-lang.github.io/install>
- Install git client: <https://git-scm.com/downloads>

### Setup

```bash
git clone https://github.com/fp-uwa/intro-elixir.git
cd intro-elixir
mix test [test/<file_name>_test.exs]
```

### Seminar [(pptx)](./talk/slides.pptx) [(pdf)](./talk/slides.pdf)

- Intro to Elixir
- History of Elixir & Erlang
- Comparison to other languages
- Basics: Functions, Data Structures
- Advanced: Piping, Patterns, Captures, Streams

### Practical Examples

- pluck: map [(problem)](./examples/lib/problems/pluck.ex) [(solution)](./examples/lib/solutions/pluck.ex) [(tests)](./examples/test/pluck_test.exs)
- unique: reduce [(problem)](./examples/lib/problems/unique.ex) [(solution)](./examples/lib/solutions/unique.ex) [(tests)](./examples/test/unique_test.exs)
- match: filter [(problem)](./examples/lib/problems/match.ex) [(solution)](./examples/lib/solutions/match.ex) [(tests)](./examples/test/match_test.exs)
- batsmen: map, filter, sort, streams [(problem)](./examples/lib/problems/batsmen.ex) [(solution)](./examples/lib/solutions/batsmen.ex) [(tests)](./examples/test/batsmen_test.exs)
- nucleotide_count: count, list comprehension [(problem)](./examples/lib/problems/nucleotide_count.ex) [(solution)](./examples/lib/solutions/nucleotide_count.ex) [(tests)](./examples/test/nucleotide_count_test.exs)
- secret_handshake: piping, pattern matching [(problem)](./examples/lib/problems/secret_handshake.ex) [(solution)](./examples/lib/solutions/secret_handshake.ex) [(tests)](./examples/test/secret_handshake_test.exs)