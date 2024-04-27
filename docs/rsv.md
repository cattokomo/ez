## `ez.rsv`

RSV parser and serializer library.

This library provides a parser/decoder and serializer/encoder for the [RSV format](https://github.com/Stenway/RSV-Specification).

### ez.rsv.encode

```nelua
function ez.rsv.encode(rows: sequence(sequence(string))): string
```

Encode List of string sequences into RSV.

`rows`: List of string or null string (string with `str.data == nilptr`) sequences.
Returns:
* `string`: RSV encoded string.

### ez.rsv.decode

```nelua
function ez.rsv.decode(data: string): (boolean, sequence(sequence(string)), string)
```

Decode RSV encoded string into list of string sequences.

`data`: RSV encoded string.
Returns:
* `boolean`: Whether it successfully decode the string.
* `sequence(sequence(string))`: List of string sequences from the RSV encoded string. String may have `data == nilptr`.
* `string`: Error message.

---
