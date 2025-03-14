# Inker Studio - Artist Profile System

## Overview

The Artist Profile System is a critical component of the Inker Studio application, enabling tattoo artists to showcase their work, stencil designs, and studio information. This document outlines the technical implementation details for the profile page, portfolio management, stencil gallery, and feed functionality.

## Table of Contents

1. [Profile Page](#profile-page)
2. [Portfolio System](#portfolio-system)
3. [Stencil Gallery](#stencil-gallery)
4. [Feed Implementation](#feed-implementation)
5. [Work Types Distinction](#work-types-distinction)
6. [Database Schema](#database-schema)
7. [API Endpoints](#api-endpoints)
8. [Future Enhancements](#future-enhancements)

## Profile Page

The profile page has been redesigned with a focus on visual appeal and functionality for tattoo artists. Key components include:

- **Immersive Header**: Parallax effect with studio photo background
- **Profile Quick Actions**: Fast access to adding works and stencils
- **Artist Stats Section**: Display metrics on works, stencils, and clients
- **Enhanced Profile Information**: Professional display of artist details
- **Portfolio Gallery**: Horizontal scrollable gallery of artist's work
- **Stencil Gallery**: Dedicated section for stencil designs
- **Contact Information**: Clear presentation of contact details

### Technical Implementation

The profile page is implemented using Flutter's CustomScrollView with SliverAppBar for the parallax effect and multiple sections for organizing content. The BLoC pattern manages state via the ArtistMyProfileBloc.

```dart
CustomScrollView(
  slivers: [
    _buildAppBar(context, artist),
    SliverToBoxAdapter(
      child: Column(
        children: [
          _buildProfileHeader(context, artist),
          _buildQuickActions(context),
          _buildArtistStats(context, artist),
          _buildProfileDetails(context, artist),
          _buildPortfolioSection(context, artist),
          _buildStencilGallery(context),
          _buildContactInfo(context, artist),
        ],
      ),
    ),
  ],
)
```

## Portfolio System

The portfolio system manages the artist's tattoo work, including both in-app created designs and imported external work.

### Database Schema

**Works Table**
```sql
CREATE TABLE works (
  id UUID PRIMARY KEY,
  artist_id UUID NOT NULL REFERENCES artists(id),
  title VARCHAR(100) NOT NULL,
  description TEXT,
  creation_date TIMESTAMP NOT NULL,
  is_external BOOLEAN NOT NULL DEFAULT FALSE,
  external_date DATE,
  tags JSONB,
  style VARCHAR(50),
  category VARCHAR(50),
  image_url VARCHAR(255) NOT NULL,
  thumbnail_url VARCHAR(255),
  views INTEGER DEFAULT 0,
  likes INTEGER DEFAULT 0,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX works_artist_id_idx ON works(artist_id);
CREATE INDEX works_creation_date_idx ON works(creation_date);
CREATE INDEX works_is_external_idx ON works(is_external);
CREATE INDEX works_style_idx ON works(style);
CREATE INDEX works_category_idx ON works(category);
```

**WorkTags Table (for more efficient tag searches)**
```sql
CREATE TABLE work_tags (
  id UUID PRIMARY KEY,
  work_id UUID NOT NULL REFERENCES works(id),
  tag VARCHAR(50) NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX work_tags_work_id_idx ON work_tags(work_id);
CREATE INDEX work_tags_tag_idx ON work_tags(tag);
```

### API Endpoints

#### Portfolio Management

```
GET /api/v1/artists/{artistId}/works
POST /api/v1/artists/{artistId}/works
GET /api/v1/artists/{artistId}/works/{workId}
PUT /api/v1/artists/{artistId}/works/{workId}
DELETE /api/v1/artists/{artistId}/works/{workId}
```

#### Portfolio Interaction

```
POST /api/v1/artists/{artistId}/works/{workId}/like
POST /api/v1/artists/{artistId}/works/{workId}/view
```

### Dart Models

```dart
class Work {
  final String id;
  final String artistId;
  final String title;
  final String? description;
  final DateTime creationDate;
  final bool isExternal;
  final DateTime? externalDate;
  final List<String> tags;
  final String? style;
  final String? category;
  final String imageUrl;
  final String? thumbnailUrl;
  final int views;
  final int likes;
  final DateTime createdAt;
  final DateTime updatedAt;

  // Constructor and serialization methods
}
```

### BLoC Implementation

```dart
@freezed
class PortfolioEvent with _$PortfolioEvent {
  const factory PortfolioEvent.loadWorks(String artistId) = _LoadWorks;
  const factory PortfolioEvent.addWork(Work work) = _AddWork;
  const factory PortfolioEvent.updateWork(Work work) = _UpdateWork;
  const factory PortfolioEvent.deleteWork(String workId) = _DeleteWork;
  const factory PortfolioEvent.uploadExternalWork(XFile image, WorkDetails details) = _UploadExternalWork;
}

@freezed
class PortfolioState with _$PortfolioState {
  const factory PortfolioState.initial() = _Initial;
  const factory PortfolioState.loading() = _Loading;
  const factory PortfolioState.loaded(List<Work> works) = _Loaded;
  const factory PortfolioState.error(String message) = _Error;
}

class PortfolioBloc extends Bloc<PortfolioEvent, PortfolioState> {
  // Implementation
}
```

## Stencil Gallery

The stencil gallery showcases the artist's design templates, which are separate from completed tattoo works.

### Database Schema

**Stencils Table**
```sql
CREATE TABLE stencils (
  id UUID PRIMARY KEY,
  artist_id UUID NOT NULL REFERENCES artists(id),
  title VARCHAR(100) NOT NULL,
  description TEXT,
  creation_date TIMESTAMP NOT NULL,
  tags JSONB,
  style VARCHAR(50),
  complexity VARCHAR(20), -- 'simple', 'medium', 'complex'
  size VARCHAR(20), -- 'small', 'medium', 'large', 'custom'
  custom_size_notes TEXT,
  image_url VARCHAR(255) NOT NULL,
  thumbnail_url VARCHAR(255),
  is_available BOOLEAN NOT NULL DEFAULT TRUE,
  price DECIMAL(10,2),
  currency VARCHAR(3),
  views INTEGER DEFAULT 0,
  downloads INTEGER DEFAULT 0,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX stencils_artist_id_idx ON stencils(artist_id);
CREATE INDEX stencils_creation_date_idx ON stencils(creation_date);
CREATE INDEX stencils_style_idx ON stencils(style);
CREATE INDEX stencils_complexity_idx ON stencils(complexity);
CREATE INDEX stencils_is_available_idx ON stencils(is_available);
```

**StencilTags Table**
```sql
CREATE TABLE stencil_tags (
  id UUID PRIMARY KEY,
  stencil_id UUID NOT NULL REFERENCES stencils(id),
  tag VARCHAR(50) NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX stencil_tags_stencil_id_idx ON stencil_tags(stencil_id);
CREATE INDEX stencil_tags_tag_idx ON stencil_tags(tag);
```

### API Endpoints

#### Stencil Management

```
GET /api/v1/artists/{artistId}/stencils
POST /api/v1/artists/{artistId}/stencils
GET /api/v1/artists/{artistId}/stencils/{stencilId}
PUT /api/v1/artists/{artistId}/stencils/{stencilId}
DELETE /api/v1/artists/{artistId}/stencils/{stencilId}
```

#### Stencil Interaction

```
POST /api/v1/artists/{artistId}/stencils/{stencilId}/view
POST /api/v1/artists/{artistId}/stencils/{stencilId}/download
```

### Dart Models

```dart
class Stencil {
  final String id;
  final String artistId;
  final String title;
  final String? description;
  final DateTime creationDate;
  final List<String> tags;
  final String? style;
  final String? complexity;
  final String? size;
  final String? customSizeNotes;
  final String imageUrl;
  final String? thumbnailUrl;
  final bool isAvailable;
  final double? price;
  final String? currency;
  final int views;
  final int downloads;
  final DateTime createdAt;
  final DateTime updatedAt;

  // Constructor and serialization methods
}
```

### BLoC Implementation

```dart
@freezed
class StencilGalleryEvent with _$StencilGalleryEvent {
  const factory StencilGalleryEvent.loadStencils(String artistId) = _LoadStencils;
  const factory StencilGalleryEvent.addStencil(Stencil stencil) = _AddStencil;
  const factory StencilGalleryEvent.updateStencil(Stencil stencil) = _UpdateStencil;
  const factory StencilGalleryEvent.deleteStencil(String stencilId) = _DeleteStencil;
  const factory StencilGalleryEvent.uploadStencil(XFile image, StencilDetails details) = _UploadStencil;
}

@freezed
class StencilGalleryState with _$StencilGalleryState {
  const factory StencilGalleryState.initial() = _Initial;
  const factory StencilGalleryState.loading() = _Loading;
  const factory StencilGalleryState.loaded(List<Stencil> stencils) = _Loaded;
  const factory StencilGalleryState.error(String message) = _Error;
}

class StencilGalleryBloc extends Bloc<StencilGalleryEvent, StencilGalleryState> {
  // Implementation
}
```

## Feed Implementation

The feed will display recent stencils and works, with filtering options.

### Database Views

To optimize feed queries, create database views:

```sql
CREATE VIEW recent_artist_content AS
SELECT 
  'work' as content_type,
  w.id as content_id,
  w.artist_id,
  w.title,
  w.image_url,
  w.thumbnail_url,
  w.creation_date as date,
  w.style,
  CAST(w.tags AS TEXT) as tags,
  w.likes as engagement_count,
  a.username as artist_username,
  a.profile_thumbnail as artist_image
FROM works w
JOIN artists a ON w.artist_id = a.id
UNION ALL
SELECT 
  'stencil' as content_type,
  s.id as content_id,
  s.artist_id,
  s.title,
  s.image_url,
  s.thumbnail_url,
  s.creation_date as date,
  s.style,
  CAST(s.tags AS TEXT) as tags,
  s.downloads as engagement_count,
  a.username as artist_username,
  a.profile_thumbnail as artist_image
FROM stencils s
JOIN artists a ON s.artist_id = a.id;

CREATE INDEX recent_artist_content_date_idx ON recent_artist_content(date);
CREATE INDEX recent_artist_content_artist_id_idx ON recent_artist_content(artist_id);
CREATE INDEX recent_artist_content_content_type_idx ON recent_artist_content(content_type);
```

### API Endpoints

```
GET /api/v1/feed
GET /api/v1/feed/stencils
GET /api/v1/feed/works
GET /api/v1/artists/{artistId}/feed
```

Query parameters:
- `page`: pagination page number
- `limit`: items per page
- `content_type`: filter by 'stencil' or 'work'
- `style`: filter by style
- `tags`: comma-separated tags to filter by
- `sort`: sort order ('recent', 'popular')

### Dart Models

```dart
enum FeedContentType { work, stencil }

class FeedItem {
  final String id;
  final FeedContentType contentType;
  final String title;
  final String artistId;
  final String artistUsername;
  final String? artistImageUrl;
  final String imageUrl;
  final String? thumbnailUrl;
  final DateTime date;
  final String? style;
  final List<String> tags;
  final int engagementCount;

  // Constructor and serialization methods
}

class FeedFilter {
  final FeedContentType? contentType;
  final String? style;
  final List<String>? tags;
  final String? sortBy;
  final int page;
  final int limit;

  // Constructor
}
```

### BLoC Implementation

```dart
@freezed
class FeedEvent with _$FeedEvent {
  const factory FeedEvent.loadFeed(FeedFilter filter) = _LoadFeed;
  const factory FeedEvent.refreshFeed() = _RefreshFeed;
  const factory FeedEvent.loadMoreItems() = _LoadMoreItems;
  const factory FeedEvent.updateFilter(FeedFilter filter) = _UpdateFilter;
}

@freezed
class FeedState with _$FeedState {
  const factory FeedState.initial() = _Initial;
  const factory FeedState.loading() = _Loading;
  const factory FeedState.loaded(List<FeedItem> items, bool hasMore) = _Loaded;
  const factory FeedState.error(String message) = _Error;
}

class FeedBloc extends Bloc<FeedEvent, FeedState> {
  // Implementation
}
```

### UI Implementation

```dart
class FeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FeedBloc(
        contentService: context.read<ContentService>(),
      )..add(const FeedEvent.loadFeed(FeedFilter())),
      child: BlocBuilder<FeedBloc, FeedState>(
        builder: (context, state) {
          // Implementation
        },
      ),
    );
  }
  
  Widget _buildFilterBar(BuildContext context) {
    // Filter UI implementation
  }
  
  Widget _buildFeedGrid(List<FeedItem> items) {
    // Grid implementation
  }
}
```

## Work Types Distinction

### External Works vs. In-App Works

The application distinguishes between two types of works:

1. **External Works**
   - Created outside the app
   - Temporary for MVP launch
   - Flagged with `is_external = true`
   - Require manual input of creation date
   - Allow importing from device gallery

2. **In-App Works**
   - Created within the app
   - The long-term focus of the platform
   - Automatically tracked creation date
   - May have associated client records and appointments

### Implementation Details

**Upload Flow for External Works**:
1. Artist selects "Add External Work" option
2. Selects image from device gallery
3. Enters metadata (title, date, description, tags, etc.)
4. Work is flagged as external in the database

**Creation Flow for In-App Works**:
1. Works created through the appointment/client workflow
2. Automatically tracked and associated with client records
3. Stored as native works in the database

### UI Distinction

While both types of works appear in the portfolio, the UI can subtly distinguish them:

```dart
Widget _buildWorkCard(Work work) {
  return Container(
    // Common styling
    decoration: BoxDecoration(
      // Common decoration
      border: work.isExternal 
        ? Border.all(color: Colors.grey.shade600)
        : Border.all(color: secondaryColor),
    ),
    child: Stack(
      children: [
        // Work image and common elements
        
        if (work.isExternal)
          Positioned(
            top: 8,
            right: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                "External",
                style: TextStyleTheme.caption.copyWith(color: Colors.white70),
              ),
            ),
          ),
      ],
    ),
  );
}
```

## Database Schema

Complete database schema for the Artist Profile system:

```sql
-- Artists table already exists in the application

-- Works table for portfolio
CREATE TABLE works (
  id UUID PRIMARY KEY,
  artist_id UUID NOT NULL REFERENCES artists(id),
  title VARCHAR(100) NOT NULL,
  description TEXT,
  creation_date TIMESTAMP NOT NULL,
  is_external BOOLEAN NOT NULL DEFAULT FALSE,
  external_date DATE,
  tags JSONB,
  style VARCHAR(50),
  category VARCHAR(50),
  image_url VARCHAR(255) NOT NULL,
  thumbnail_url VARCHAR(255),
  views INTEGER DEFAULT 0,
  likes INTEGER DEFAULT 0,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Tags table for works
CREATE TABLE work_tags (
  id UUID PRIMARY KEY,
  work_id UUID NOT NULL REFERENCES works(id),
  tag VARCHAR(50) NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Stencils table
CREATE TABLE stencils (
  id UUID PRIMARY KEY,
  artist_id UUID NOT NULL REFERENCES artists(id),
  title VARCHAR(100) NOT NULL,
  description TEXT,
  creation_date TIMESTAMP NOT NULL,
  tags JSONB,
  style VARCHAR(50),
  complexity VARCHAR(20),
  size VARCHAR(20),
  custom_size_notes TEXT,
  image_url VARCHAR(255) NOT NULL,
  thumbnail_url VARCHAR(255),
  is_available BOOLEAN NOT NULL DEFAULT TRUE,
  price DECIMAL(10,2),
  currency VARCHAR(3),
  views INTEGER DEFAULT 0,
  downloads INTEGER DEFAULT 0,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Tags table for stencils
CREATE TABLE stencil_tags (
  id UUID PRIMARY KEY,
  stencil_id UUID NOT NULL REFERENCES stencils(id),
  tag VARCHAR(50) NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Content interactions table
CREATE TABLE content_interactions (
  id UUID PRIMARY KEY,
  user_id UUID NOT NULL REFERENCES users(id),
  content_type VARCHAR(20) NOT NULL, -- 'work' or 'stencil'
  content_id UUID NOT NULL,
  interaction_type VARCHAR(20) NOT NULL, -- 'view', 'like', 'download'
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
```

## API Endpoints

Complete list of API endpoints for the Artist Profile system:

### Artist Profile

```
GET /api/v1/artists/{artistId}/profile
PUT /api/v1/artists/{artistId}/profile
PUT /api/v1/artists/{artistId}/profile/image
PUT /api/v1/artists/{artistId}/studio-photo
```

### Portfolio

```
GET /api/v1/artists/{artistId}/works
POST /api/v1/artists/{artistId}/works
GET /api/v1/artists/{artistId}/works/{workId}
PUT /api/v1/artists/{artistId}/works/{workId}
DELETE /api/v1/artists/{artistId}/works/{workId}
POST /api/v1/artists/{artistId}/works/{workId}/like
POST /api/v1/artists/{artistId}/works/{workId}/view
```

### Stencil Gallery

```
GET /api/v1/artists/{artistId}/stencils
POST /api/v1/artists/{artistId}/stencils
GET /api/v1/artists/{artistId}/stencils/{stencilId}
PUT /api/v1/artists/{artistId}/stencils/{stencilId}
DELETE /api/v1/artists/{artistId}/stencils/{stencilId}
POST /api/v1/artists/{artistId}/stencils/{stencilId}/view
POST /api/v1/artists/{artistId}/stencils/{stencilId}/download
```

### Feed

```
GET /api/v1/feed
GET /api/v1/feed/stencils
GET /api/v1/feed/works
GET /api/v1/artists/{artistId}/feed
```

## Future Enhancements

### Planned Enhancements for Post-MVP

1. **Social Interactions**
   - Comments on works and stencils
   - Sharing functionality to social media
   
2. **Advanced Filtering**
   - Filter by body location
   - Filter by ink types
   - Filter by healing time

3. **Analytics Dashboard**
   - Insights on most viewed/liked works
   - Engagement metrics
   - Popular styles and tags

4. **Stencil Marketplace**
   - Enable selling stencil designs
   - Licensing options
   - Revenue tracking

5. **Work Collections**
   - Group works into themed collections
   - Special showcase features

6. **Client Portfolio**
   - Private collection of client works
   - Before/after documentation
   - Healing progress tracking

7. **Integration with Appointments**
   - Link works to appointments
   - Track work history with clients

### Technical Roadmap

1. Phase 1: Basic Profile & Portfolio (MVP)
2. Phase 2: Stencil Gallery & Simple Feed
3. Phase 3: Advanced Filtering & Search
4. Phase 4: Social Features & Engagement
5. Phase 5: Marketplace & Monetization 