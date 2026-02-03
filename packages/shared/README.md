# Leggo Driver 

description goes here...

## Features

-  Feature goes here...

## Getting Started

### Prerequisites

- Flutter SDK (3.38.x or higher)
- Dart SDK (3.10.7 or higher)
- VSCode (recommended) or android studio
- Flutter Bloc for state management

### Installation

1. Install melos
```bash
    dart pub global activate melos
```

2. Install dependencies:
```bash
melos bootstrap

# or
melos bs
```

3. Run the app:
```bash

# development
melos run driver:dev

# staging
melos run driver:stg

# Production
melos run driver:prod
```

## Project Structure

```
lib/
├── bootstrap.dart             # App initialization
├── main.dart                  # Entry point
├── app/                       # App configuration and routing
└── l10n/                      # Localization files
```

## Available Scripts

Run from the monorepo root using Melos:

```bash
# Run tests
melos test

# Run analysis
melos analyze 

# Clean build files
melos clean 
```

## Environment Configuration

The app supports three environments:
- **Development**: For local development with debug features
- **Staging**: For testing in a production-like environment
- **Production**: For release builds


## Building

### Android
```bash
melos run build:driver:prod
```
