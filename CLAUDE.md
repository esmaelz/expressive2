# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Flutter application named "expressive2" using Dart SDK 3.9.2+. The project supports multiple platforms: Android, iOS, Web, Linux, macOS, and Windows.

## Development Commands

### Building and Running
- **Run the app**: `flutter run`
- **Run on specific device**: `flutter run -d <device_id>`
- **List available devices**: `flutter devices`
- **Build for production**:
  - Android: `flutter build apk` or `flutter build appbundle`
  - iOS: `flutter build ios`
  - Web: `flutter build web`
  - Windows: `flutter build windows`
  - macOS: `flutter build macos`
  - Linux: `flutter build linux`

### Testing
- **Run all tests**: `flutter test`
- **Run a specific test file**: `flutter test test/widget_test.dart`
- **Run tests with coverage**: `flutter test --coverage`

### Code Quality
- **Run linter**: `flutter analyze`
- **Format code**: `flutter format .`
- **Check for outdated packages**: `flutter pub outdated`

### Dependencies
- **Get dependencies**: `flutter pub get`
- **Upgrade dependencies**: `flutter pub upgrade`
- **Clean build artifacts**: `flutter clean`

## Project Structure

- `lib/main.dart` - Application entry point containing the main app widget
- `test/` - Widget and unit tests
- `android/`, `ios/`, `web/`, `linux/`, `macos/`, `windows/` - Platform-specific code
- `pubspec.yaml` - Project configuration and dependencies
- `analysis_options.yaml` - Dart analyzer configuration using flutter_lints package

## Code Style

The project uses `flutter_lints` package for linting rules. All lints are configured in `analysis_options.yaml`.
