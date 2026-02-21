# ci-demo

[![CI](https://github.com/pushkardeshmukh1992/continuous-integration-swift/actions/workflows/ci.yml/badge.svg)](https://github.com/pushkardeshmukh1992/continuous-integration-swift/actions/workflows/ci.yml)
[![Sponsor](https://img.shields.io/badge/Sponsor-❤-ea4aaa)](https://github.com/sponsors/pushkardeshmukh1992)

A demo iOS project showcasing **Continuous Integration** with GitHub Actions for Swift/iOS development.

## Overview

This project demonstrates how to set up automated builds and tests for an iOS application using GitHub Actions. It serves as a reference for developers looking to implement CI/CD pipelines in their Swift projects.

## Features

- Simple arithmetic functions (`add`, `multiply`) with unit tests
- GitHub Actions workflow for automated testing
- Runs on every pull request and push to `main`
- Build status badge integration

## Requirements

- Xcode 15.0+
- iOS 17.0+
- macOS Sonoma or later

## Getting Started

### Clone the Repository

```bash
git clone https://github.com/pushkardeshmukh1992/continuous-integration-swift.git
cd continuous-integration-swift
```

### Open in Xcode

```bash
open ci-demo.xcodeproj
```

### Run the App

1. Select a simulator (e.g., iPhone 16)
2. Press `Cmd + R` to build and run

## Running Tests

### Locally via Xcode

Press `Cmd + U` to run all unit tests.

### Locally via Command Line

```bash
xcodebuild test \
  -project ci-demo.xcodeproj \
  -scheme ci-demo \
  -destination 'platform=iOS Simulator,name=iPhone 16,OS=latest'
```

### Automated (CI)

Tests run automatically on:
- Pull requests targeting `main`
- Pushes to `main`

View test results in the [Actions tab](https://github.com/pushkardeshmukh1992/continuous-integration-swift/actions).

## Project Structure

```
ci-demo/
├── ci-demo/                  # Main app source
│   ├── AppDelegate.swift
│   ├── SceneDelegate.swift
│   └── ViewController.swift  # Contains add() and multiply() functions
├── ci-demoTests/             # Unit tests
│   └── ci_demoTests.swift
├── .github/
│   └── workflows/
│       └── ci.yml            # GitHub Actions workflow
└── ci-demo.xcodeproj/
```

## CI Workflow

The CI pipeline (`.github/workflows/ci.yml`) performs:

1. **Checkout** — Clones the repository
2. **Build & Test** — Compiles the app and runs unit tests on iOS Simulator

## Author

**Pushkar Deshmukh**

- GitHub: [@pushkardeshmukh1992](https://github.com/pushkardeshmukh1992)

## Support

If you find this project helpful, consider supporting:

[![Sponsor](https://img.shields.io/badge/Sponsor_on_GitHub-❤-ea4aaa?style=for-the-badge&logo=github)](https://github.com/sponsors/pushkardeshmukh1992)

## License

This project is available for learning and reference purposes.
