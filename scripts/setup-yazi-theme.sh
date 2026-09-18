#!/bin/sh

ya pkg add yazi-rs/flavors:dracula && mkdir -p ~/.config/yazi && printf '[flavor]\ndark = "dracula"\n' > ~/.config/yazi/theme.toml
