# Inker App - Architecture Guide

<!-- TOC -->
- [Inker App - Architecture Guide](#inker-app---architecture-guide)
  - [1. Introduction](#1-introduction)
  - [2. Architecture Overview](#2-architecture-overview)
    - [2.1. Clean Architecture Layers](#21-clean-architecture-layers)
    - [2.2. Core Principles](#22-core-principles)
  - [3. Core Components by Layer](#3-core-components-by-layer)
    - [3.1. UI Layer (`lib/ui`)](#31-ui-layer-libui)
      - [3.1.1. Widget Structure](#311-widget-structure)
      - [3.1.2. Theming (`lib/ui/theme`)](#312-theming-libuitheme)
      - [3.1.3. Navigation and Routing (`lib/routes.dart`, `lib/ui/views/app_view.dart`)](#313-navigation-and-routing-libroutesdart-libuiviewsapp_viewdart)
      - [3.1.4. UI Examples](#314-ui-examples)
    - [3.2. Domain Layer (`lib/domain`)](#32-domain-layer-libdomain)
      - [3.2.1. BLoC/Cubit (`lib/domain/blocs`, `lib/domain/cubits`)](#321-bloccubit-libdomainblocs-libdomaincubits)
      - [3.2.2. Models (`lib/domain/models`)](#322-models-libdomainmodels)
      - [3.2.3. Repositories/Services (`lib/domain/services`)](#323-repositoriesservices-libdomainservices)
      - [3.2.4. Use Cases (`lib/domain/usecases`)](#324-use-cases-libdomainusecases)
    - [3.3. Data Layer (`lib/data`)](#33-data-layer-libdata)
      - [3.3.1. API Communication (`lib/data/api`)](#331-api-communication-libdataapi)
      - [3.3.2. Local Storage (`lib/data/local`)](#332-local-storage-libdatalocal)
      - [3.3.3. Firebase (`lib/data/firebase`)](#333-firebase-libdatafirebase)
  - [4. State Management: BLoC & Freezed In-depth](#4-state-management-bloc--freezed-in-depth)
    - [4.1. The BLoC Pattern](#41-the-bloc-pattern)
    - [4.2. Freezed for Immutability](#42-freezed-for-immutability)
    - [4.3. Example: `QuotationListBloc`](#43-example-quotationlistbloc)
    - [4.4. Consuming State in the UI](#44-consuming-state-in-the-ui)
      - [4.4.1. Providing the BLoC/Cubit](#441-providing-the-bloccubit)
      - [4.4.2. Building UI with `BlocBuilder` and Freezed Pattern Matching](#442-building-ui-with-blocbuilder-and-freezed-pattern-matching)
      - [4.4.3. Freezed Pattern Matching Methods](#443-freezed-pattern-matching-methods)
  - [5. Dependency Injection (`lib/dependencies/dependencies.dart`)](#5-dependency-injection-libdependenciesdependenciesdart)
  - [6. Authentication (`lib/domain/blocs/auth/auth_bloc.dart`)](#6-authentication-libdomainblocsauthauth_blocdart)
  - [7. Notifications System](#7-notifications-system)
    - [7.1. Core Components](#71-core-components)
    - [7.2. Flow](#72-flow)
  - [8. Localization (`lib/l10n`, `lib/generated/l10n.dart`)](#8-localization-libl10n-libgeneratedl10ndart)
  - [9. Utilities (`lib/utils`)](#9-utilities-libutils)
  - [10. Development and Build Process](#10-development-and-build-process)
  - [11. Application Overview](#11-application-overview)
  - [12. Conclusion](#12-conclusion)
<!-- /TOC -->

## 1. Introduction

Welcome to the Inker App, a Flutter-based mobile application designed to bridge the gap between tattoo artists and clients. The platform facilitates discovery, communication, and management of tattoo-related services, including appointments, quotations, and design inspiration.

This document provides a comprehensive guide to the application's architecture, development practices, and core functionalities. It aims to serve as a reference for developers working on the project, ensuring consistency and maintainability.

The application leverages a modern Flutter stack, emphasizing:
- **Clean Architecture:** For separation of concerns and scalability.
- **BLoC/Cubit:** For robust and predictable state management.
- **Freezed:** For immutable data classes, states, and events, reducing boilerplate and enhancing type safety.
- **Firebase:** For backend services including authentication, remote configuration, and cloud messaging.
- **SQLite:** For local data persistence.
- **GoRouter:** For declarative navigation.

## 2. Architecture Overview

The Inker App adheres to the principles of Clean Architecture, promoting a separation of concerns that leads to a more testable, maintainable, and scalable codebase.

### 2.1. Clean Architecture Layers

The application is primarily divided into three distinct layers:

1.  **Data Layer (`lib/data`):**
    *   Responsible for data retrieval and storage.
    *   Contains implementations of repositories, API service clients, local database interactions (SQLite), and Firebase service integrations.
    *   Abstracts the data sources from the rest of the application.

2.  **Domain Layer (`lib/domain`):**
    *   Contains the core business logic of the application.
    *   Includes entities (models), use cases (interactors), and repository interfaces.
    *   This layer is independent of any UI or specific data source implementation, making it highly reusable and testable.
    *   BLoCs and Cubits reside here, orchestrating data flow between the UI and repositories.

3.  **UI Layer (`lib/ui`):**
    *   Responsible for presenting data to the user and handling user interactions.
    *   Contains Flutter widgets, screens (pages), and UI-specific logic.
    *   Interacts with BLoCs/Cubits from the Domain Layer to manage state and trigger actions.
    *   Includes theming, localization, and navigation components.

```
lib/
├── data/                 # Data Layer (Repositories, API clients, Local DB, Firebase)
│   ├── api/
│   ├── firebase/
│   ├── gcp/
│   └── local/
├── domain/               # Domain Layer (BLoCs, Cubits, Models, Repositories Interfaces, Use Cases)
│   ├── blocs/
│   ├── cubits/
│   ├── errors/
│   ├── mixins/
│   ├── models/
│   ├── services/         # Repository Interfaces
│   └── usescases/
├── ui/                   # UI Layer (Widgets, Screens, Theme, Navigation)
│   ├── views/            # Main app views and navigation setup
│   ├── pages/            # Specific screen/page widgets (often feature-based)
│   ├── widgets/          # Reusable UI components
│   ├── theme/
│   └── ... (feature-specific UI folders)
├── dependencies/         # Dependency Injection setup
├── generated/            # Code generated by build_runner (e.g., Freezed, intl)
├── l10n/                 # Localization files
├── utils/                # Utility functions and constants
└── main.dart             # Application entry point
```

### 2.2. Core Principles

-   **Separation of Concerns:** Each layer has a distinct responsibility.
-   **Dependency Rule:** Dependencies flow inwards. The UI layer depends on the Domain layer, and the Domain layer depends on the Data layer (through abstractions/interfaces). The Data layer implements these abstractions.
-   **Immutability:** Freezed is used extensively to create immutable data models, BLoC states, and events, ensuring predictable state changes and reducing side effects.
-   **State Management:** BLoC (Business Logic Component) and Cubit are used for managing UI state in a reactive and structured manner.
-   **Repository Pattern:** Used to abstract data sources, allowing for easier testing and flexibility in data source implementation.
-   **Dependency Injection:** `flutter_bloc`'s `RepositoryProvider` and `BlocProvider` are used to inject dependencies (services, BLoCs) where needed.
-   **Code Generation:** Tools like `build_runner`, `freezed`, and `json_serializable` are used to automate boilerplate code generation.

## 3. Core Components by Layer

This section details the key components within each architectural layer.

### 3.1. UI Layer (`lib/ui`)

The UI layer is responsible for everything the user sees and interacts with. It's built using Flutter widgets and is organized by features and shared components.

#### 3.1.1. Widget Structure

-   **Feature-Specific UI:** Widgets related to a specific feature (e.g., `artist`, `customer`, `quotation`, `tattoo_generator`) are grouped within their respective directories under `lib/ui/`. For example, `lib/ui/artist/agenda/` contains widgets for the artist's agenda feature.
-   **Shared Widgets:** Reusable widgets across multiple features are located in `lib/ui/shared/widgets/`.
-   **Pages/Views:** Top-level screens or views that compose different widgets are typically found in feature directories (e.g., `lib/ui/notifications/notification_page.dart`) or under `lib/ui/views/` for more general app views like `app_view.dart`.

#### 3.1.2. Theming (`lib/ui/theme`)

The application's visual appearance is managed through a centralized theming system in `lib/ui/theme/`:

-   `app_theme.dart`: Defines the `ThemeData` for both light and dark modes (e.g., `AppTheme.lightTheme`, `AppTheme.darkTheme`). This includes color schemes, typography, and component themes.
-   `app_styles.dart`: Contains common `BoxDecoration`, `TextStyle` constants, and other style-related utilities that are not part of the main `ThemeData` but are frequently used.
-   `text_style_theme.dart`: Provides a set of predefined `TextStyle`s (e.g., `TextStyleTheme.headline1`, `TextStyleTheme.bodyText1`) to ensure typographic consistency across the app. These styles are often derived from the main `ThemeData` but offer convenient access.
-   `app_theme_cubit.dart`: A Cubit responsible for managing and switching between light and dark themes. It persists the user's theme preference.
-   `localization_cubit.dart`: Manages the application's current locale for internationalization.
-   `overlay_style.dart`: Utility to manage system UI overlay styles (e.g., status bar color).

#### 3.1.3. Navigation and Routing (`lib/routes.dart`, `lib/ui/views/app_view.dart`)

Navigation in the app is handled using named routes, managed primarily by `lib/routes.dart` and integrated within `lib/ui/views/app_view.dart`.

-   `AppRoutes` (`lib/routes.dart`): Defines a static `onGenerateRoute` method that acts as a central route factory. It takes `RouteSettings` and returns the appropriate `MaterialPageRoute` (or other `Route` types) based on the `settings.name`.
    -   It handles passing arguments to routes, often by casting `settings.arguments` to the expected type.
    -   For routes requiring specific BLoCs that are not globally provided, it often uses `BlocProvider` or `BlocProvider.value` to make them available to the new screen and its descendants.
-   `AppView` (`lib/ui/views/app_view.dart`): This widget typically builds the `MaterialApp`.
    -   It sets up `navigatorKey`, `onGenerateRoute` (pointing to `AppRoutes.onGenerateRoute`), `localizationsDelegates`, `supportedLocales`, and the current `theme`.
    -   It often includes a `BlocListener` for `AuthBloc` to handle navigation changes based on authentication status (e.g., redirecting to `OnBoardingPage` if unauthenticated, or `CustomerAppPage`/`ArtistAppPage` if authenticated).
-   `AuthenticationHandler.navigatorKey`: A global key used to access the navigator state from outside the widget tree, particularly useful for navigation from BLoCs or services.
-   `NoContextNavigator`: A utility (likely in `lib/utils/bloc_navigator.dart`) that uses the `navigatorKey` to perform navigation without needing a `BuildContext`.

#### 3.1.4. UI Examples

##### `lib/ui/tattoo_generator/tattoo_generator_page.dart`
This page allows users to generate tattoo ideas based on prompts and selected styles. 
-   It uses a `TabController` to switch between "Generate", "History", and "Favorites" views.
-   The "Generate" tab includes input fields for the tattoo description (`_promptController`) and a style selector (`_buildStyleSelector`).
-   It interacts with `TattooGeneratorBloc` to send generation requests and display results or loading/error states.
-   Results are displayed in an image carousel (`_buildResultsView`), and users can tap to view designs in an immersive viewer (`TattooImmersiveViewerPage`).
-   The "History" and "Favorites" tabs display previously generated or favorited designs in a grid view (`_buildDesignsGridView`).

##### `lib/ui/immersive_viewer/immersive_viewer_page.dart`
This page provides a full-screen, interactive viewing experience for tattoo works or stencils.
-   It accepts a `Work` or `Stencil` object as an argument.
-   Uses `InteractiveViewer` to allow pinch-to-zoom and panning of the image.
-   `Hero` animations are used for smooth transitions from the gallery to the immersive view.
-   Displays information about the work/stencil, such as title, description, tags, view counts, and like counts, in an overlay that can be toggled.
-   The layout dynamically adjusts to show basic or full information (`_buildBasicInfoPanel`, `_buildFullInfoPanel`).

### 3.2. Domain Layer (`lib/domain`)

The domain layer is the heart of the application, containing the business logic, entities, and abstractions for data handling.

#### 3.2.1. BLoC/Cubit (`lib/domain/blocs`, `lib/domain/cubits`)

State management is predominantly handled by BLoCs (Business Logic Components) and Cubits, following the `flutter_bloc` library patterns.

-   **Structure:** For each feature or complex UI component requiring state management, a BLoC or Cubit is created. A BLoC typically consists of three files:
    -   `{feature_name}_bloc.dart`: Contains the BLoC class, which extends `Bloc`. It defines event handlers that transform events into states.
    -   `{feature_name}_event.dart`: Defines the events that the BLoC can process. These are typically Freezed classes representing user actions or external triggers.
    -   `{feature_name}_state.dart`: Defines the possible states of the BLoC. These are also Freezed classes, representing the UI's condition (e.g., initial, loading, loaded, error).
-   **Interaction:** BLoCs receive events, process them (often involving calls to services/repositories from the domain layer), and emit new states. The UI layer listens to these state changes and rebuilds accordingly.
-   **Example:** `lib/domain/blocs/quoation/quotation_list/quotation_list_bloc.dart` manages the state for displaying lists of quotations.

#### 3.2.2. Models (`lib/domain/models`)

These are the data structures representing the core entities of the application (e.g., `User`, `Artist`, `Quotation`, `Work`, `Stencil`).

-   **Immutability:** Models are defined as immutable classes using the `freezed` package. This means once an instance of a model is created, its state cannot be changed directly. Instead, a new instance with updated values is created (e.g., using the `copyWith` method provided by Freezed).
-   **Serialization/Deserialization:** They often include `fromJson` factory constructors and `toJson` methods, generated by `json_serializable` in conjunction with Freezed, to facilitate conversion between Dart objects and JSON (for API communication or local storage).
    -   Example: `part '{model_name}.freezed.dart';` and `part '{model_name}.g.dart';` directives.

#### 3.2.3. Repositories/Services (`lib/domain/services`)

This directory contains the abstract interfaces for data operations. These interfaces define contracts that the Data layer must implement.

-   **Abstraction:** They decouple the Domain layer from specific data source implementations (API, database). For example, `AuthService` defines methods for authentication, while its implementation (`ApiAuthService`) handles the actual API calls.
-   **Example:** `LocalSessionService` (in `lib/domain/services/session/local_session_service.dart`) defines methods for managing user sessions locally, while `SqliteSessionService` (in `lib/data/local/sqlite/sqlite_session_service.dart`) provides the SQLite-based implementation.

#### 3.2.4. Use Cases (`lib/domain/usecases`)

Use cases (or interactors) encapsulate specific pieces of business logic or complex operations that might involve coordinating multiple repositories or services.

-   **Single Responsibility:** Each use case typically has a single responsibility (e.g., `LoginUseCase`, `CreateUserUseCase`).
-   **Orchestration:** They orchestrate the flow of data and operations between different parts of the domain and data layers.
-   **Example:** `LogoutUseCase` might interact with `AuthService` to clear the remote session and `LocalSessionService` to clear the local session data.

### 3.3. Data Layer (`lib/data`)

The data layer is responsible for all data Sourcing and management, whether from remote APIs, local databases, or device capabilities.

#### 3.3.1. API Communication (`lib/data/api`)

This sub-layer handles all interactions with the backend REST API.

-   **`HttpClientService` (`lib/data/api/http_client_service.dart`):**
    *   A centralized singleton service for making HTTP requests (GET, POST, PUT, PATCH, DELETE, multipart).
    *   It uses the `http` package.
    *   Constructs base URLs using `RemoteConfigService` to fetch the API endpoint dynamically.
    *   Handles default headers (e.g., `Content-Type`, `Accept`) and authorization tokens (Bearer tokens).
    *   Provides typed methods (`get<T>`, `post<T>`, etc.) that take a `fromJson` function to parse the JSON response into specific Dart model objects.
    *   Includes error handling (`_handleError`) that wraps HTTP errors and other exceptions into `CustomHttpException`.
-   **`HttpLogger` (`lib/utils/api/http_logger.dart`):**
    *   Used by `HttpClientService` to log request and response details (method, URL, headers, body, status code, duration) for debugging purposes. It utilizes `dev.log` from `lib/utils/dev.dart`.
-   **API Service Implementations (e.g., `lib/data/api/notifications/api_notifications_service.dart`):**
    *   These classes implement the repository interfaces defined in the Domain layer (e.g., `NotificationsService`).
    *   They use `HttpClientService` to make the actual API calls for specific features (e.g., fetching notifications, marking them as read).
-   **DTOs (Data Transfer Objects):** Some API services might use DTOs (often within their own `dto` subdirectories) for request or response payloads if they differ significantly from the domain models.
-   **`ApiClient` (`integration_test/utils/api/api_client.dart`):** While this file is in `integration_test`, it demonstrates a simpler HTTP client used for testing purposes, directly using the `http` package. The main app uses `HttpClientService`.

#### 3.3.2. Local Storage (`lib/data/local`)

Handles data persistence on the device.

-   **SQLite (`lib/data/local/sqlite`):**
    *   Used for structured relational data storage.
    *   **`SqliteService` (`lib/data/local/sqlite/core/sqlite_service.dart`):** A singleton service that manages the SQLite database connection, creation, and CRUD operations (insert, query, update, delete).
    *   **`SqliteTable` (`lib/data/local/sqlite/core/tables/sqlite_table.dart`):** An abstract class defining the contract for table schemas, requiring `getName()` and `getCreateTableQuery()` methods.
    *   **Table Definitions (e.g., `SessionTable`):** Concrete implementations of `SqliteTable` define the schema and creation query for specific tables.
    *   **Service Implementations (e.g., `SqliteSessionService`):** Implement `LocalSessionService` (from domain) to manage session data using `SqliteService`. It handles mapping domain models (like `Session`) to database table structures and vice-versa.
-   **Shared Preferences (`lib/data/local/shared_preferences/local_storage_impl.dart`):**
    *   Implements `LocalStorage` (from domain) for storing simple key-value pairs (e.g., user preferences, on-boarding status).
    *   Uses the `shared_preferences` package.

#### 3.3.3. Firebase (`lib/data/firebase`)

Integrates with Firebase services.

-   **`RemoteConfigService` (`lib/data/firebase/remote_config_service.dart`):**
    *   Manages fetching and activating configuration values from Firebase Remote Config.
    *   Used primarily to get the `INKER_API_URL`, allowing dynamic updates to the API endpoint without requiring an app update.
    *   Implements caching logic (`_cacheExpiration`, `_needsUpdate`) to control fetch frequency.
-   **`GoogleAuthService` (`lib/data/firebase/google_auth_service.dart`):**
    *   Handles Google Sign-In functionality using the `google_sign_in` package (which itself is a Firebase-related authentication method).
-   **Firebase Cloud Messaging (FCM):**
    *   Setup in `main.dart` (`FirebaseMessaging.instance...`).
    *   `FcmService` (in `lib/domain/services/notifications/fmc_service.dart`) is responsible for initializing FCM, handling incoming messages (foreground, background, terminated), token registration, and interacting with the `NotificationsBloc` to update UI or trigger navigation based on received notifications. It also interacts with `QuotationListBloc` for specific notification types.

## 4. State Management: BLoC & Freezed In-depth

State management is a critical aspect of the Inker App, ensuring UI consistency and responsiveness. The app primarily uses the BLoC (Business Logic Component) pattern, complemented by Cubits for simpler state management scenarios, and Freezed for creating immutable state and event classes.

### 4.1. The BLoC Pattern

-   **Events:** Represent user actions, system events, or any input that can trigger a state change. Events are dispatched to the BLoC.
-   **BLoC:** Receives events, processes them (often involving asynchronous operations like API calls via repositories), and emits new states.
-   **States:** Represent the condition of the UI at any given moment. Widgets listen to state changes from the BLoC and rebuild themselves accordingly.
-   **Stream-based:** BLoCs and Cubits expose states as streams, allowing widgets to reactively update.

### 4.2. Freezed for Immutability

Freezed is a code generation package used to create immutable data classes, which is ideal for BLoC states and events.

-   **Benefits:**
    *   **Immutability:** Ensures that states and events cannot be accidentally modified, leading to more predictable state transitions.
    *   **Boilerplate Reduction:** Generates `copyWith`, `==` operator, `hashCode`, `toString` methods, and pattern matching capabilities (`when`, `maybeWhen`, `map`, `maybeMap`).
    *   **Exhaustive Pattern Matching:** The `when` method forces handling of all possible states/event types, preventing runtime errors due to unhandled cases.
    *   **JSON Serialization:** Works seamlessly with `json_serializable` for models that need to be converted to/from JSON.
-   **Usage:**
    *   States and events are defined as abstract classes annotated with `@freezed`.
    *   Different variations of states/events are created using factory constructors (e.g., `const factory QuoationState.initial()`, `const factory QuotationState.loading()`).
    *   Part files (`.freezed.dart`, `.g.dart`) are generated by running `flutter pub run build_runner build --delete-conflicting-outputs` or `make build`.

### 4.3. Example: `QuotationListBloc` (`lib/domain/blocs/quoation/quotation_list/`)

This BLoC manages the state for displaying and interacting with lists of quotations.

-   **`quotation_list_event.dart`:** Defines events like:
    ```dart
    part 'quotation_list_event.freezed.dart';

    @freezed
    class QuotationListEvent with _$QuotationListEvent {
      const factory QuotationListEvent.started() = _Started;
      const factory QuotationListEvent.loadQuotations({
        List<String>? statuses,
        @Default(false) bool isNextPage,
        QuotationType? type,
      }) = _LoadQuotations;
      const factory QuotationListEvent.cancelQuotation(String quotationId) = _CancelQuotation;
      // ... other events like refreshCurrentTab, markAsRead, getQuotationById, updateOpenQuotation, acceptOffer
    }
    ```
-   **`quotation_list_state.dart`:** Defines states such as:
    ```dart
    part 'quotation_list_state.freezed.dart';

    @freezed
    class QuotationListState with _$QuotationListState {
      const factory QuotationListState.initial() = QuotationListInitial;
      const factory QuotationListState.loading() = QuotationListLoading;
      const factory QuotationListState.loaded({
        required List<Quotation> quotations,
        required Session session,
        List<String>? statuses,
        @Default(false) bool isLoadingMore,
        required int currentPage,
        required int totalItems,
        String? cancellingQuotationId,
      }) = QuotationListLoaded;
      const factory QuotationListState.error(String message) = QuotationListError;
      const factory QuotationListState.cancelSuccess() = QuotationListCancelSuccess;
    }
    ```
-   **`quotation_list_bloc.dart`:**
    *   Injects `QuotationService` and `LocalSessionService` via its constructor.
    *   Handles events like `_LoadQuotations` by calling the appropriate service methods, then emits `QuotationListLoaded` with the fetched data or `QuotationListError` on failure.
    *   Manages pagination (`isNextPage`, `currentPage`).
    *   Updates the list of quotations immutably when new data is loaded or an item is modified/cancelled.

### 4.4. Consuming State in the UI

Once a BLoC or Cubit is defined and provided to the widget tree (typically via `BlocProvider` or `MultiBlocProvider` as shown in the Dependency Injection section), the UI can listen to its state changes and react accordingly. `flutter_bloc` provides widgets like `BlocBuilder`, `BlocListener`, and `BlocConsumer` for this purpose.

#### 4.4.1. Providing the BLoC/Cubit

As detailed in the Dependency Injection section (Section 5), BLoCs/Cubits are made available to the widget tree using `BlocProvider` often within `AppView` or at the top of a specific feature's widget tree if the BLoC is scoped to that feature.

```dart
// Example from AppView.dart (simplified)
MultiBlocProvider(
  providers: [
    BlocProvider(
      create: (context) => UserBloc(userRepository: context.read<UserRepository>()),
    ),
    // ... other BLoC providers
  ],
  child: MaterialApp(
    // ...
  ),
)
```

#### 4.4.2. Building UI with `BlocBuilder` and Freezed Pattern Matching

`BlocBuilder` is a Flutter widget that handles building the UI based on the BLoC/Cubit state. When combined with Freezed's pattern matching, it provides a clean and type-safe way to render different UI for different states.

```dart
// Example: UserPage.dart consuming UserBloc/UserCubit
class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Profile')),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          // Using state.when for exhaustive pattern matching
          return state.when(
            initial: () => const Center(child: Text('Please initiate an action.')),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (User user) => UserDetailsWidget(user: user), // Assuming UserDetailsWidget exists
            error: (String message) => Center(child: Text('Error: $message')),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Dispatching an event to the BLoC
          context.read<UserBloc>().add(const UserEvent.fetchUser("someUserId"));
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
```

#### 4.4.3. Freezed Pattern Matching Methods

Freezed generates several helpful methods for pattern matching on state objects:

-   **`when`**: (Recommended for `BlocBuilder`)
    *   Ensures that all possible states defined in your Freezed union are handled. This is compile-time safe – if you add a new state, the compiler will error until you update all `when` calls.
    *   Each named parameter in `when` corresponds to a factory constructor in your Freezed state definition.
    ```dart
    state.when(
      initial: () => /* UI for Initial State */,
      loading: () => /* UI for Loading State */,
      loaded: (data) => /* UI for Loaded State, using 'data' */,
      error: (message) => /* UI for Error State, using 'message' */,
    );
    ```

-   **`maybeWhen`**:
    *   Use this when you only want to handle a subset of states and provide a default UI for all other states using the `orElse` callback.
    ```dart
    state.maybeWhen(
      loaded: (data) => /* UI for Loaded State */,
      orElse: () => /* Default UI for initial, loading, error, etc. */,
    );
    ```

-   **`map`**:
    *   Similar to `when`, but the callback for each state receives the state object itself (e.g., `_Initial initial`, `_Loading loading`). This allows you to access any properties specific to that concrete state class if needed, though often the data is passed directly as parameters in `when`.
    ```dart
    state.map(
      initial: (_Initial initial) => /* UI for Initial State */,
      loading: (_Loading loading) => /* UI for Loading State */,
      loaded: (_Loaded loadedState) => /* UI using loadedState.data */,
      error: (_Error errorState) => /* UI using errorState.message */,
    );
    ```

-   **`maybeMap`**:
    *   Similar to `maybeWhen`, but for `map`. Use it to handle specific state types and provide an `orElse` for others.

By using these patterns, the UI layer remains decoupled from the business logic, reacting to state changes emitted by BLoCs/Cubits in a clear, concise, and type-safe manner.

## 5. Dependency Injection (`lib/dependencies/dependencies.dart`)

Dependency Injection (DI) is crucial for managing dependencies between different parts of the application, promoting loose coupling and testability.
The Inker App uses `flutter_bloc`'s `RepositoryProvider` and `BlocProvider` for DI.

-   **`dependencies.dart` (`lib/dependencies/dependencies.dart`):**
    *   Contains an asynchronous function `buildProviders()` which initializes and returns a list of `RepositoryProvider`s.
    *   Services that require asynchronous initialization (like `RemoteConfigService` and `HttpClientService`) are awaited here before being provided.
    *   Providers are often dependent on each other; for example, `ApiNotificationsService` depends on `HttpClientService`, so `HttpClientService` is provided first.
-   **`main.dart`:**
    *   Calls `buildProviders()` and then wraps the main application widget (`AppView`) with `MultiRepositoryProvider`, making all registered services accessible throughout the widget tree via `context.read<ServiceType>()`.
-   **`AppView` (`lib/ui/views/app_view.dart`):**
    *   Uses `MultiBlocProvider` to instantiate and provide BLoCs/Cubits to the widget tree.
    *   BLoCs are often created here, injecting their dependencies (services) which are retrieved using `context.read<ServiceType>()` from the `RepositoryProvider`s established in `main.dart`.
    *   Some BLoCs might be provided lazily (`lazy: true`) or non-lazily (`lazy: false`) depending on when they need to be active.

**Example of provider setup in `dependencies.dart`:**
```dart
// In buildProviders():
final remoteConfig = await RemoteConfigService.getInstance();
final httpClient = await HttpClientService.getInstance();

return [
  RepositoryProvider<RemoteConfigService>(create: (_) => remoteConfig),
  RepositoryProvider<HttpClientService>(create: (_) => httpClient),
  RepositoryProvider<AuthService>(
    create: (context) => ApiAuthService(context.read<LocalSessionService>()),
  ),
  RepositoryProvider<ApiNotificationsService>(
    create: (context) => ApiNotificationsServiceImpl(context.read<HttpClientService>()),
  ),
  RepositoryProvider<NotificationsService>(
    create: (context) => NotificationsServiceImpl(context.read<ApiNotificationsService>()),
  ),
  // ... other providers
];
```

**Example of BLoC provision in `AppView.dart`:**
```dart
// In AppView's MultiBlocProvider:
BlocProvider(
  create: (context) => AuthBloc(
    authService: context.read<AuthService>(),
    logoutUseCase: context.read<LogoutUseCase>(),
    sessionService: context.read<LocalSessionService>(),
  ),
),
BlocProvider(
  lazy: false,
  create: (context) {
    final fcmService = context.read<FcmService>();
    final notificationsService = context.read<NotificationsService>();
    final sessionService = context.read<LocalSessionService>();
    
    final bloc = NotificationsBloc(fcmService, notificationsService, sessionService)
      ..add(const NotificationsEvent.initialize());
    
    fcmService.setBloc(bloc); // Example of inter-bloc/service communication setup
    fcmService.setQuotationListBloc(context.read<QuotationListBloc>());
    return bloc;
  },
),
```

## 6. Authentication (`lib/domain/blocs/auth/auth_bloc.dart`)

The authentication system manages user login, logout, and session persistence.

-   **`AuthBloc` (`lib/domain/blocs/auth/auth_bloc.dart`):**
    *   Manages the overall authentication state of the application (`AuthState`).
    *   Listens to a stream of `AuthStatus` from `AuthService`.
    *   States include `unknown`, `authenticated(Session session)`, and `unauthenticated`.
    *   Handles `AuthStatusChanged` events to transition between these states.
    *   Handles `AuthLogoutRequested` event, calling `LogoutUseCase` to clear session data both locally and potentially on the server.
    *   On `AuthStatus.authenticated`, it attempts to retrieve the active session using `LocalSessionService` (`_tryGetSession`).
-   **`AuthService` (`lib/domain/services/auth/auth_service.dart` interface, implemented by `ApiAuthService` in `lib/data/api/auth/api_auth_service.dart`):**
    *   Provides methods for login, registration, logout, and emits authentication status changes.
-   **`LocalSessionService` (`lib/domain/services/session/local_session_service.dart` interface, implemented by `SqliteSessionService` in `lib/data/local/sqlite/sqlite_session_service.dart`):**
    *   Responsible for persisting and retrieving user session data (including tokens and user information) locally using SQLite.
    *   Methods include `newSession`, `getSessionToken`, `getSession`, `removeOldSession`, `updateSession`, `tryGetActiveSession`.
-   **Session Flow:**
    1.  User logs in (e.g., via `LoginUseCase`).
    2.  `AuthService` authenticates the user with the backend and receives session data/token.
    3.  A new session is created and stored locally via `LocalSessionService` (`newSession` method in `SqliteSessionService`).
    4.  `AuthBloc` is notified of the `AuthStatus.authenticated` change.
    5.  `AuthBloc` emits an `AuthState.authenticated(session)` with the session retrieved from `LocalSessionService`.
    6.  UI listens to `AuthBloc` and navigates to the appropriate authenticated screen (e.g., `CustomerAppPage` or `ArtistAppPage` in `AppView`).
-   **`auth_event.dart` & `auth_state.dart`:** Define the events and states for `AuthBloc` using Freezed, including `AuthStatus` enum.

## 7. Notifications System

The application implements a robust notification system to keep users informed about relevant events and updates. This involves Firebase Cloud Messaging (FCM), local notification display, and state management via a dedicated BLoC.

### 7.1. Core Components

-   **`NotificationsBloc` (`lib/domain/blocs/notifications/notifications_bloc.dart`):**
    *   Manages the state of notifications, including fetching, displaying, marking as read/unread, and deleting notifications.
    *   Interacts with `NotificationsService` (domain interface) to perform these operations.
    *   Handles FCM token registration and updates.
    *   Manages pending navigation actions triggered by notification taps.
    *   Its state (`NotificationsState`) includes the list of notifications, loading status, pagination details, unread count, FCM token, permissions status, and information about the last message received while the app is in the foreground.
-   **`NotificationsService` (`lib/domain/services/notifications/notifications_service.dart` interface):**
    *   Defines the contract for notification-related operations (fetching, marking as read, etc.).
    *   Implemented by `NotificationsServiceImpl` which likely uses `ApiNotificationsService` (data layer).
-   **`ApiNotificationsService` (`lib/data/api/notifications/api_notifications_service.dart`):**
    *   Handles the actual API calls to the backend for notification data using `HttpClientService`.
-   **`FcmService` (`lib/domain/services/notifications/fmc_service.dart`):**
    *   Responsible for all Firebase Cloud Messaging interactions.
    *   Initializes FCM, requests permissions (iOS).
    *   Handles incoming messages when the app is in the foreground, background, or terminated.
    *   Listens for FCM token refreshes and updates the backend via `NotificationsBloc` or `NotificationsService`.
    *   Crucially, it has methods like `setBloc(NotificationsBloc bloc)` and `setQuotationListBloc(QuotationListBloc bloc)` allowing it to directly add events to these BLoCs upon receiving specific types of notifications. This facilitates immediate UI updates or navigation based on push notification content.
-   **`NotificationPage` (`lib/ui/notifications/notification_page.dart`):**
    *   The UI screen that displays the list of notifications to the user.
    *   Uses `BlocBuilder` to listen to `NotificationsBloc` and update the UI based on its state (loading, loaded with notifications, error, empty state).
    *   Implements pull-to-refresh and infinite scrolling for loading more notifications.
    *   Allows users to mark all notifications as read, or delete individual notifications (using `Dismissible`).
    *   Handles taps on notifications, marking them as read and navigating to relevant app sections based on `notification.type` and `notification.data` (e.g., a specific quotation detail page or agenda event).
-   **`NotificationsWrapper` (`lib/ui/notifications/notifications_wrapper.dart`):**
    *   A widget that wraps main parts of the app (likely around `MaterialApp`'s child in `AppView`).
    *   Uses `BlocListener<NotificationsBloc, NotificationsState>` to listen for specific conditions, primarily to handle foreground notifications.
    *   When a notification arrives while the app is in the foreground (`lastMessageAppState == AppState.foreground`), it displays a custom in-app notification using `Flushbar` (from `another_flushbar` package).
    *   Handles `pendingNavigation` from `NotificationsBloc` state to navigate when the app is opened from a terminated state notification tap.
-   **`notification.dart` Model (`lib/domain/models/notifications/notification.dart`):**
    *   Defines the structure of a notification object, including `id`, `type`, `title`, `body`, `data`, `read`, `createdAt`, etc. (likely a Freezed class).

### 7.2. Flow

1.  **Initialization & Token Registration:**
    *   `FcmService` initializes FCM and requests an FCM token.
    *   The token is sent to the backend via `NotificationsBloc` -> `NotificationsService` -> `ApiNotificationsService` to associate the device with the user.
2.  **Receiving Notifications:**
    *   **Foreground:** `FcmService` receives the message. It likely passes the `RemoteMessage` to `NotificationsBloc` (e.g., via an event). `NotificationsWrapper` listens to the BLoC state and shows a `Flushbar` if `lastMessageAppState` indicates foreground.
    *   **Background/Terminated:** FCM displays a system notification. When the user taps it:
        *   `FcmService`'s background message handler (or `onMessageOpenedApp` handler) is invoked.
        *   It processes the `RemoteMessage` and dispatches an event to `NotificationsBloc` (e.g., `NotificationOpened`) which sets up `pendingNavigation` in its state.
        *   `AppView` or `NotificationsWrapper` then consumes this `pendingNavigation` to route the user appropriately.
3.  **Displaying Notifications in `NotificationPage`:**
    *   `NotificationPage` adds an event to `NotificationsBloc` (e.g., `GetNotifications`) to fetch the list.
    *   The BLoC calls `NotificationsService` which fetches data from the API.
    *   The page updates reactively based on the BLoC's state.
4.  **Interaction:**
    *   Tapping a notification in `NotificationPage` marks it as read (via BLoC event) and navigates based on its content.
    *   Swiping deletes a notification.
    *   Tapping a `Flushbar` (foreground notification) can also trigger navigation and mark the underlying notification as handled/read via the BLoC.

## 8. Localization (`lib/l10n`, `lib/generated/l10n.dart`)

Internationalization (i18n) and localization (l10n) are handled using the `flutter_intl` package, enabling the app to support multiple languages.

-   **ARB Files (`lib/l10n/intl_*.arb`):**
    *   Application Resource Bundle (`.arb`) files store localized strings. There is typically one file per supported locale (e.g., `intl_en.arb`, `intl_es_CL.arb`).
    *   These files contain key-value pairs, where the key is a message ID and the value is the translated string for that locale.
    *   Placeholders for dynamic values are supported (e.g., `{userName}`).
-   **Code Generation (`lib/generated/l10n.dart`):**
    *   The `flutter_intl` tool (often run via `make intl` or `dart run intl_utils:generate`) processes the `.arb` files and generates Dart code in `lib/generated/l10n.dart`.
    *   This generated file contains a class (usually `S`) with methods for accessing localized strings (e.g., `S.of(context).pageTitle`, `S.of(context).greeting(userName)`).
-   **`S` Class:**
    *   Provides static methods `load(Locale locale)` and `of(BuildContext context)` to load and access localized strings.
    *   `S.current` can be used to access the current locale's strings if a `BuildContext` is not readily available (after initialization).
-   **Setup in `MaterialApp` (`lib/ui/views/app_view.dart`):**
    *   `localizationsDelegates`: Includes `S.delegate`, `GlobalMaterialLocalizations.delegate`, `GlobalWidgetsLocalizations.delegate`, and `GlobalCupertinoLocalizations.delegate`.
    *   `supportedLocales`: Lists the locales supported by the app (e.g., `Locale('en', '')`, `Locale('es', 'CL')`).
    *   `locale`: Typically bound to a `LocalizationCubit` to allow dynamic language switching.
-   **Usage in Widgets:**
    *   Localized strings are accessed using `S.of(context).yourStringKey`.
-   **Adding New Strings:**
    1.  Add the new string (with its ID and default value) to the primary `.arb` file (e.g., `intl_en.arb`).
    2.  Translate the string in other `.arb` files.
    3.  Run the code generation command (`make intl` or `dart run intl_utils:generate`).

## 9. Utilities (`lib/utils`)

The `lib/utils` directory houses various helper functions, constants, and extensions that are used across different parts of the application.

-   **`api/` (`lib/utils/api`):**
    *   `http_logger.dart`: As described in API Communication, used for logging HTTP requests and responses.
-   **`forms/` (`lib/utils/forms`):** Likely contains form validation logic, input formatters, or form-related helper widgets/functions.
-   **`image/` (`lib/utils/image`):** May include utilities for image picking, processing, caching, or placeholder widgets.
    *   `cached_image_manager.dart`: (Mentioned in `ImmersiveViewerPage`) Likely a custom manager or wrapper around image caching, possibly `cached_network_image`.
-   **`layout/` (`lib/utils/layout`):** Widgets or functions for managing layout, responsiveness, or common UI patterns (e.g., `InkerProgressIndicator`).
-   **`snackbar/` (`lib/utils/snackbar`):** Helpers for displaying SnackBars or custom notification messages.
-   **`styles/` (`lib/utils/styles`):** Could contain additional style constants or theme-related extensions not covered by `lib/ui/theme`.
-   **`bloc_navigator.dart`:** Utility for navigating from BLoCs/services using a global navigator key, avoiding the need to pass `BuildContext` down.
-   **`constants.dart`:** Defines app-wide constants (e.g., API keys if not in `.env`, default values, fixed strings not suitable for l10n).
-   **`date_time_formatter.dart`:** Utilities for formatting `DateTime` objects into user-readable strings.
-   **`dev.dart`:** Contains development-specific utilities, especially for logging (`dev.log`, `dev.logError`). This helps centralize logging and potentially disable it in release builds.
-   **`random.dart`:** Utilities for generating random data, possibly for testing or placeholders.
-   **`response_utils.dart`:** Helper functions to process or validate API responses.
-   **`symbolize_keys.dart`:** Likely a utility to convert string keys in Maps to symbols or vice-versa, sometimes used in dynamic programming or when working with certain APIs.
-   **`timestamp_column_helper.dart`:** Helper for managing timestamp columns in SQLite or data models.

## 10. Development and Build Process

The project uses a `Makefile` to simplify common development tasks and relies on `build_runner` for code generation.

-   **Code Generation:**
    *   Models, BLoC/Cubit states, and events using Freezed, as well as JSON serialization logic with `json_serializable`, require code generation.
    *   Command: `make build` or `dart run build_runner build --delete-conflicting-outputs`.
    *   For continuous generation during development: `dart run build_runner watch --delete-conflicting-outputs`.
-   **Internationalization (i18n) Generation:**
    *   Generates Dart code for localized strings from `.arb` files.
    *   Command: `make intl` or `dart run intl_utils:generate`.
-   **Build All:**
    *   Combines code generation and i18n generation.
    *   Command: `make build-all`.
-   **Linting:**
    *   The project uses `flutter_lints` (defined in `analysis_options.yaml`) to enforce code style and identify potential issues.
    *   Command: `flutter analyze`.
-   **Testing:**
    *   Run unit/widget tests: `flutter test path/to/test_file.dart`.
    *   Run integration tests: `make test-specific test=integration_test/path/to/test_file.dart device=<device_id>`.
    *   Run tests with coverage: `make test-coverage`.
-   **Building App Bundles:**
    *   iOS: `make build-ios`
    *   Android: `make build-android`

Refer to the `Makefile` and `custom_instructions` (provided in the initial context) for a complete list of development commands and further code style guidelines.

## 11. Application Overview

The Inker App is a platform designed to connect clients seeking tattoo services with talented tattoo artists. It aims to streamline the process of finding artists, getting design ideas, requesting quotations, and managing appointments.

**Key User Roles & Features:**

-   **Clients (Customers):**
    *   Explore artist profiles, portfolios (works), and stencils.
    *   Search for artists based on location, style, etc.
    *   Use the **Tattoo Generator** (`lib/ui/tattoo_generator/tattoo_generator_page.dart`) to create AI-powered tattoo ideas based on textual descriptions and styles.
    *   Request direct quotations from specific artists.
    *   Create "Open Quotations" to receive offers from multiple artists.
    *   Manage their appointments and quotations.
    *   View tattoo designs and works in an **Immersive Viewer** (`lib/ui/immersive_viewer/immersive_viewer_page.dart`).
    *   Leave reviews for artists.

-   **Artists:**
    *   Create and manage their professional profile, including bio, studio photos, and contact information.
    *   Upload and manage their tattoo **Works** (portfolio) and **Stencils** (design gallery).
    *   Set their availability and manage their **Agenda** (`lib/ui/artist/agenda/`).
    *   Receive and respond to direct quotation requests from clients.
    *   View and make offers on "Open Quotations" from clients.
    *   Manage appointments and communicate with clients.

**Core Functionalities:**

-   **User Authentication:** Secure login and registration for both clients and artists.
-   **Profiles:** Detailed profiles for artists showcasing their work, style, location, and reviews. Client profiles for managing their activity.
-   **Search & Discovery:** Advanced search filters for clients to find artists and inspiration.
-   **Quotation System:**
    *   Direct quotations between a client and a specific artist.
    *   Open quotations where clients describe their needs and artists can submit offers.
    *   Management of quotation statuses (pending, quoted, accepted, rejected, appealed, canceled).
-   **Appointment Scheduling:** Tools for artists to manage their agenda and for clients to book appointments.
-   **Tattoo Generation:** An AI-powered feature for clients to generate unique tattoo design ideas.
-   **Immersive Media Viewing:** A rich, full-screen experience for viewing tattoo images and stencil designs.
-   **Notifications:** Real-time updates for users regarding quotations, appointments, messages, etc.
-   **Localization:** Support for multiple languages (e.g., English and Spanish).

## 12. Conclusion

The Inker App is built on a robust and scalable architecture that emphasizes clean code, separation of concerns, and modern Flutter development practices. The use of Clean Architecture, BLoC for state management, Freezed for immutable data, and a well-defined layer for data handling (including API, local DB, and Firebase services) provides a solid foundation for future development and maintenance.

By adhering to the principles outlined in this guide, developers can contribute effectively to the project, ensuring consistency and high quality in the codebase. The detailed structure for UI, domain logic, data management, and supporting features like notifications and localization, makes the Inker App a comprehensive example of a modern Flutter application.