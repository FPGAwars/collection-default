

# default Collection

[![Icestudio][icestudio-image]][icestudio-url]
![Version][version-image]


Default collection in Icestudio


## License

Licensed under [GPL-2.0](https://opensource.org/licenses/GPL-2.0).

## Install

For installing and using this colection in Icestudio follow these steps:

* Download the collection: [stable](https://github.com/FPGAwars/collection-default/archive/refs/tags/v0.4.1.zip) or [development](https://github.com/FPGAwars/collection-default/archive/refs/heads/main.zip)
* Install the collection: *Tools > Collections > Add*
* Select the collection: *Select > Collection*

## Translations
| Language | Locale | Translated strings |
|----------|--------|--------------------|
| English  |  en    | ![](https://progress-bar.dev/100) |
| CZech |  cs_CZ | ![](https://progress-bar.dev/44) |
| en |  en | ![](https://progress-bar.dev/100) |
| Spanish |  es_ES | ![](https://progress-bar.dev/100) |

## Blocks
* **Bit**
  * 0
  * 1
* **Logic**
  * **Combinational**
    * Mux 2-1
  * **Gate**
    * AND
    * NAND
    * NOR
    * NOT
    * OR
    * XNOR
    * XOR
  * **Sequential**
    * Debouncer
    * Flip-flop-D
    * Flip-flop-T
    * Prescaler22
    * PrescalerN
* **Setup**
  * Pull-up-ecp5
  * Pull-up-ice40
  * Tri-state

## Examples
* **1. Basic**
  * 01. One LED
  * 02. Two LEDs
  * 03. Three LEDs
  * 04. One LED blink
  * 05. Two LEDs alternate blink
  * 06. Pushbutton and LED
* **2. Flip-flops**
  * 01. DFF manual load
  * 02. Chain of three DFFs
  * 03. Ring of four DFFs
  * 04. Toggle button
  * 05. Binary counter with three TFFs
* **3. Gates**
  * 01. AND gate
  * 02. OR gate
  * 03. AND truth table
  * 04. OR truth table
  * 05. Multiplexer 2-1
  * 06. Decoder 2-4
  * 07. One bit adder
* **4. Muxes**
  * 01. Blinking fixed LED
  * 02. LED three states
  * 03. Multiplexer 4-1
  * 04. Shift register
* **5. Markdown**
  * 01. Headers list fonts
  * 02. Links and images
  * 03. Tables
  * 04. Code task list
  * 05. Youtube videos
* **6. Verilog**
  * 01. Four bits fixed binary value
  * 02. Four bits fixed hexadecimal value
  * 03. Eight bits fixed value buses
  * 04. Eight bits counter
  * 05. Split buses
  * 06. ROM 16x8
  * 07. ROM 16x8 file
  * 08. ROM 16x8 file generic
  * 09. ROM 16x8 table

## Authors
* [Jesús Arroyo Torrens](https://github.com/Jesus89)
* [Juan González](https://github.com/Obijuan)
* [Carlos Díaz](https://github.com/C47D)
* [Salvador E. Tropea](https://github.com/set-soft)



-------


<!-- Badges -->
[icestudio-image]: https://img.shields.io/badge/collection-icestudio-blue.svg
[icestudio-url]: https://github.com/FPGAwars/icestudio
[version-image]: https://img.shields.io/badge/version-v0.4.1-orange.svg
