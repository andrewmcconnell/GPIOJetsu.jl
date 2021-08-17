using Documenter
using GPIOJetsu

makedocs(
    modules = [GPIOJetsu],
    format = Documenter.HTML(
        prettyurls = !("local" in ARGS),
        canonical = "https://",
    ),
    sitename = "GPIOJetsu",
    authors = "Andrew McConnell",
    pages = [
        "Home"            => "index.md",
        "GPIO"            => "man/gpio.md",
        "SPI"             => "man/spi.md",
        "Examples"        => Any[
            "LED"         => "man/examples/led.md",  
        ],
        "Library"  => "lib/library.md",
    ]
)

deploydocs(
    repo = "github.com/andrewmcconnell/GPIOJetsu.jl.git",
    target = "build",
)
