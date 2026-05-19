# Karya / كريا

Premium ride-hailing and mobility ecosystem for Libya and North Africa.

Karya is a Flutter-based mobile application built with GetX architecture, designed to provide a luxury transportation experience for riders and a professional operational platform for drivers.

---

## Overview

Karya aims to deliver a modern mobility platform inspired by premium ride-hailing, fintech, and map-first user experiences.

The project currently focuses on:

- Rider mode
- Driver mode
- Arabic RTL support
- Dark premium UI
- Clean scalable Flutter architecture
- Mock services before Firebase integration

---

## Tech Stack

- Flutter
- Dart
- GetX
- GetStorage
- Geolocator
- Material 3
- Arabic / English localization

---

## Core Features

### Rider

- Role selection
- Ride booking flow
- Destination search
- Ride selection
- Searching for driver
- Active trip screen
- Ride history
- Wallet
- Notifications
- Profile and settings

### Driver

- Driver dashboard
- Online / offline status
- Incoming ride requests
- Active trip controls
- Earnings dashboard
- Driver history
- Wallet
- Profile and settings

---

## Project Structure

```bash
lib/
├── bindings/
├── controllers/
├── core/
│   ├── constants/
│   ├── services/
│   ├── theme/
│   ├── translations/
│   └── utils/
├── data/
│   ├── mock/
│   ├── models/
│   └── repositories/
├── routes/
├── screens/
│   ├── auth/
│   ├── driver/
│   ├── notifications/
│   ├── onboarding/
│   ├── profile/
│   ├── rider/
│   ├── splash/
│   ├── support/
│   └── wallet/
├── widgets/
└── main.dart
