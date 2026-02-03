# Ride Hailing
Sample project setup using melos with separate apps for rider/driver with flavors (development, staging, production) support.


## Features

-  Feature goes here...

## Getting Started

### Prerequisites

- Flutter SDK (3.38.x or higher)
- Dart SDK (3.10.7 or higher)
- VSCode (recommended) or android studio
- Flutter Bloc for state management

### Installation

This app uses Melos for managing multiple packages.
For more details, visit: https://melos.invertase.dev

1. Install melos
```bash
dart pub global activate melos
```

Windows installation using git bash needs to add this on your `~/.bash_profile`:
```bash
function melos() {
  melos.bat $@
}
```

2. Add .env files in the respective app folders:
- apps/leggo_driver/.env.development
- apps/leggo_driver/.env.staging
- apps/leggo_driver/.env.production

- apps/leggo_rider/.env.development
- apps/leggo_rider/.env.staging
- apps/leggo_rider/.env.production

3. Install flutter dependencies:
```bash
melos bootstrap

# or
melos bs
```

4. Run the app:
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
eggo_android/
├── apps/
│ ├── leggo_driver/ # Driver application
│ │ ├── android/ # Android native code
│ │ ├── lib/
│ │ │ ├── bootstrap.dart # App initialization
│ │ │ ├── main.dart # Entry point
│ │ │ ├── app/ # App configuration and routing
│ │ │ ├── home/ # Home feature module
│ │ │ └── l10n/ # Localization files
│ │ └── test/ # Tests
│ │
│ └── leggo_rider/ # Rider application
│ ├── android/ # Android native code
│ ├── lib/
│ │ ├── bootstrap.dart # App initialization
│ │ ├── main.dart # Entry point
│ │ ├── app/ # App configuration and routing
│ │ ├── home/ # Home feature module
│ │ └── l10n/ # Localization files
│ └── test/ # Tests
│
└── packages/
└── shared/ # Shared code between apps
├── lib/
│ ├── shared.dart # Public API
│ └── src/ # Internal implementation
└── test/ # Tests
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


## Running via emulator

```bash
# Driver app 
melos run driver:dev

# Rider app 
melos run rider:dev
```

## Building
Generate required storeFile before building the app.

### Android
```bash
# Driver app build 
melos run build:driver:prod

# Rider app build 
melos run build:rider:prod
```
