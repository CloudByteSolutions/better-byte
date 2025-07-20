# Change Log

## [1.1.0] (2025-01-XX)
### Features
* **Solidity support**: Added full support for Solidity (`.sol`) files with syntax highlighting and comment configuration
* **Dynamic language registration**: New `better-byte.languages` setting to specify which languages to enable comment highlighting for
* **OpenTofu support**: Added support for OpenTofu files with the official OpenTofu VSCode extension
* **Enhanced Remote-WSL compatibility**: Fixed comment highlighting issues in Remote-WSL environments for all languages
* **Configuration change handling**: Extension now responds to configuration changes without requiring reload
* **Case-insensitive tag matching**: Tags like "TODO", "todo", "Todo" all work the same way

### Improvements
* **Language discovery**: Extension now automatically discovers and supports all installed language extensions
* **Performance**: Improved language registration efficiency with dynamic configuration updates
* **Enhanced tag set**: Added FIXME, HACK, BUG, UNDONE tags with background colors for better visibility (contributed by [@IgerNolan](https://github.com/IgerNolan))

### Configuration
* Added `better-byte.languages` setting (array of language IDs, empty for all languages)
* Updated configuration title to "Better Byte configuration"
* Updated default tags: TODO (uppercase), FIXME, HACK, BUG, UNDONE with background colors (contributed by [@IgerNolan](https://github.com/IgerNolan))

### Documentation
* Updated README with comprehensive feature list and configuration examples
* Added OpenTofu to supported languages list
* Improved documentation for new dynamic language registration feature
* Added note about case-insensitive tag matching

## [1.0.2] (2023-11-09)
### Bugs
* Actually fixed remote extension bug

## [1.0.1] (2023-11-09)
### Bugs
* Fixed remote extension bug

## [1.0.0] (2023-11-08)
### Features
* Initial release to VSCode marketplace