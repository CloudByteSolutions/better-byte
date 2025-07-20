# Contributing to Better Byte

Thank you for your interest in contributing to Better Byte! This document provides guidelines and information for contributors.

## 🤝 How to Contribute

### Reporting Issues

Before creating a new issue, please:

1. **Check existing issues** - Search for similar issues that may already be reported
2. **Provide detailed information** - Include:
   - VS Code version
   - Operating system
   - Extension version
   - Steps to reproduce
   - Expected vs actual behavior
   - Screenshots if applicable

### Feature Requests

When suggesting new features:

1. **Describe the use case** - Explain why this feature would be valuable
2. **Provide examples** - Show how the feature would work
3. **Consider impact** - Think about how it affects existing functionality

### Pull Requests

We welcome pull requests! Here's how to contribute:

## 🛠️ Development Setup

### Prerequisites

- Node.js (v16 or higher)
- npm or pnpm
- VS Code (for testing)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/CloudByteSolutions/better-byte.git
   cd better-byte
   ```

2. **Install dependencies**
   ```bash
   npm install
   # or
   pnpm install
   ```

3. **Compile the extension**
   ```bash
   npm run compile
   # or
   pnpm run compile
   ```

### Development Workflow

1. **Create a feature branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```

2. **Make your changes**
   - Follow the coding standards below
   - Test your changes thoroughly
   - Update documentation if needed

3. **Run tests and linting**
   ```bash
   npm run lint
   # or
   pnpm run lint
   ```

4. **Test the extension**
   - Press `F5` in VS Code to launch the extension development host
   - Test your changes in the new VS Code window

5. **Submit a pull request**
   - Provide a clear description of your changes
   - Include any relevant issue numbers
   - Add screenshots if UI changes are involved

## 📝 Coding Standards

### TypeScript

- Use TypeScript for all new code
- Follow existing naming conventions
- Add proper type annotations
- Use meaningful variable and function names

### Code Style

- Use 4 spaces for indentation
- Follow the existing code formatting
- Add comments for complex logic
- Keep functions focused and small

### Git Commit Messages

Follow conventional commit format:

```
type(scope): description

[optional body]

[optional footer]
```

Examples:
- `feat: add support for new comment tags`
- `fix: resolve issue with multiline comments`
- `docs: update README with new features`
- `refactor: improve comment parsing logic`

## 🧪 Testing

### Manual Testing

Test your changes with:

1. **Different file types** - Test with various language files
2. **Different comment styles** - Single-line, multiline, JSDoc
3. **Edge cases** - Empty comments, special characters
4. **Performance** - Large files, many comments

### Test Files

Create test files in different languages to verify functionality:

```hcl
# OpenTofu/Terraform EXAMPLE
/**
 * * Important information about this infrastructure
 * ! This configuration is deprecated, do not use in new deployments
 * ? Should we refactor this for better performance?
 * TODO: Add comprehensive validation rules
 * //TODO: Mark this task as complete.
 * FIXME: The resource naming convention needs standardization
 * HACK: Temporary workaround for provider version issue
 * BUG: This module has known issues with nested loops
 * UNDONE: Remove debug outputs before production
 */

variable "project_name" {
  description = "The name of the project"
  type        = string
  default     = "my-project"
  
  #? Should we add validation for project name format?
  #TODO: Add regex validation
}

locals {
  #* Common tags applied to all resources
  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "terraform"
    #UNDONE: Add cost center tag after approval
  }
  
  #BUG: This calculation might overflow for large numbers
  resource_count = length(var.resource_list) * 2
  
  #FIXME: This naming convention needs review
  resource_name = "${var.project_name}-${var.environment}"
}

output "project_name" {
  description = "The name of the project"
  value       = var.project_name
  
  #* This output is used by other modules
}

#//// aws_instance.example -- commentedOut;
```

## 📦 Building and Packaging

### Build Commands

```bash
# Compile TypeScript
npm run compile

# Package for distribution
npm run package

# Build web version
npm run build-web
```

### Version Management

- Update version in `package.json`
- Update `CHANGELOG.md` with new features/fixes
- Follow semantic versioning (MAJOR.MINOR.PATCH)

## 🎯 Areas for Contribution

### High Priority

- **Performance improvements** - Faster comment parsing
- **New language support** - Missing language configurations
- **Bug fixes** - Issues with comment highlighting
- **Documentation** - Improving README and guides

### Medium Priority

- **New tag types** - Additional comment categories
- **UI improvements** - Better visual feedback
- **Configuration options** - More customization
- **Testing** - Unit tests and integration tests

### Low Priority

- **Themes** - Dark/light theme optimizations
- **Accessibility** - Screen reader support
- **Internationalization** - Multi-language support

## 📋 Pull Request Checklist

Before submitting a PR, ensure:

- [ ] Code compiles without errors
- [ ] Linting passes (`npm run lint`)
- [ ] Tests pass (if applicable)
- [ ] Documentation is updated
- [ ] Changelog is updated
- [ ] Commit messages follow conventional format
- [ ] Changes are tested manually
- [ ] No breaking changes (unless intentional)

## 🏷️ Issue Labels

We use the following labels to categorize issues:

- `bug` - Something isn't working
- `enhancement` - New feature or request
- `documentation` - Improvements or additions to documentation
- `good first issue` - Good for newcomers
- `help wanted` - Extra attention is needed
- `question` - Further information is requested

## 📞 Getting Help

If you need help contributing:

1. **Check existing issues** - Your question may already be answered
2. **Create a discussion** - Use GitHub Discussions for general questions
3. **Join our community** - Connect with other contributors

## 📄 License

By contributing to Better Byte, you agree that your contributions will be licensed under the same license as the project.

## 🙏 Recognition

Contributors will be recognized in:

- The project README
- Release notes
- GitHub contributors page

Thank you for contributing to Better Byte! 🚀 