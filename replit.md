# Fitness Workout Tracker Application

## Overview

This is a comprehensive fitness tracking web application built with React, Express.js, and PostgreSQL. The app allows users to create custom workout plans, track their exercise sessions, monitor progress, and manage their fitness journey through an intuitive mobile-friendly interface. Key features include exercise management, weekly workout planning, progress analytics with charts and calendars, and file upload capabilities for exercise images.

## User Preferences

Preferred communication style: Simple, everyday language.

## System Architecture

### Frontend Architecture
- **Framework**: React with TypeScript using Vite as the build tool
- **UI Library**: Comprehensive component system built on Radix UI primitives with Tailwind CSS styling
- **State Management**: TanStack Query for server state management and data fetching
- **Routing**: Wouter for lightweight client-side routing
- **Styling**: Tailwind CSS with custom design system including gradient themes and glass morphism effects
- **Mobile-First Design**: Responsive layout optimized for mobile devices with bottom navigation

### Backend Architecture
- **Server Framework**: Express.js with TypeScript
- **API Design**: RESTful API with organized route handlers
- **File Handling**: Multer middleware for image uploads with validation and size limits
- **Development Setup**: Hot module replacement with Vite integration for seamless development experience
- **Error Handling**: Centralized error handling middleware with proper HTTP status codes

### Database Layer
- **ORM**: Drizzle ORM for type-safe database operations
- **Schema Management**: Centralized schema definitions in shared directory
- **Validation**: Zod integration for runtime type validation
- **Data Storage**: Comprehensive fitness data model including users, exercises, workout plans, sessions, and progress tracking

### Core Data Models
- **Users**: Profile management with height, weight, and personal metrics
- **Exercises**: Comprehensive exercise database with categories, muscle groups, equipment, and custom user exercises
- **Workout Plans**: Weekly scheduling system with day-based workout organization
- **Workout Sessions**: Session tracking with completion status and progress monitoring
- **Progress Tracking**: Weight entries and exercise progression over time

### Component Architecture
- **Reusable UI Components**: Extensive component library covering forms, navigation, data display, and interactive elements
- **Feature Components**: Specialized components for exercise cards, progress charts, workout calendars, and navigation
- **Layout Components**: Mobile-optimized layouts with bottom navigation and responsive design patterns

### File Upload System
- **Image Processing**: Support for multiple image formats (JPEG, PNG, GIF, WebP)
- **Storage**: Local file system storage with organized directory structure
- **Validation**: File type and size validation (5MB limit)
- **Security**: Proper file handling with sanitization and access controls

## External Dependencies

### Core Framework Dependencies
- **@neondatabase/serverless**: Neon Database connection for PostgreSQL hosting
- **drizzle-orm** and **drizzle-kit**: Type-safe ORM with migration management
- **@tanstack/react-query**: Advanced server state management for React

### UI and Styling
- **@radix-ui/***: Comprehensive set of accessible UI primitives (accordion, dialog, dropdown, form controls, etc.)
- **tailwindcss**: Utility-first CSS framework for responsive design
- **class-variance-authority**: Type-safe component variant management
- **clsx**: Conditional CSS class management

### Development and Build Tools
- **vite**: Fast build tool and development server
- **typescript**: Static type checking
- **@vitejs/plugin-react**: React integration for Vite
- **@replit/vite-plugin-runtime-error-modal**: Development error handling
- **tsx**: TypeScript execution for Node.js

### Utility Libraries
- **wouter**: Lightweight React router
- **date-fns**: Date manipulation and formatting
- **multer**: File upload middleware for Express
- **connect-pg-simple**: PostgreSQL session store
- **nanoid**: Unique ID generation
- **cmdk**: Command palette functionality

### Database and Session Management
- **PostgreSQL**: Primary database using Neon serverless hosting
- **Session Management**: PostgreSQL-backed session storage for user authentication
- **Environment Configuration**: DATABASE_URL environment variable for database connection