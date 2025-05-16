# 📝 Blogify

A modern, cross-platform **Flutter** application for a public blogging platform where users can read, discover, and engage with blog content. Built using **Material Design 3**, this app is responsive, supports dark/light themes, and offers an intuitive user experience on mobile phones and tablets.

---

## 📱 Screens & Features

### ✅ Core Screens
- **Home Page**
    - Featured blog carousel
    - Recent posts
    - Trending tags (chip list)
    - Bottom navigation (Home, Search, Bookmarks, Profile)

- **Blog Post Detail Page**
    - Title, author, date
    - Rich content with images
    - Comments section (nested replies, upvote/downvote)
    - Like, bookmark, share buttons

- **Search Page**
    - Search bar with history
    - Tag/category filter
    - Search results in blog card list

- **Categories/Tags**
    - Grid or list view
    - Tap to view all related blogs

- **User Profile**
    - Avatar, bio
    - Tabs for authored posts and bookmarked posts
    - Settings access

- **Login/Register**
    - Email/password auth
    - Google/Apple login (mockup placeholders)

---

## 🧩 Key Components

- **Blog Card** – Title, image, author, excerpt, publish date
- **Comment UI** – Threaded replies with voting
- **Bottom Sheet** – Filtering/sorting blogs
- **Toasts/Snackbars** – For success or error messages
- **Light & Dark Theme** – All text is white in dark mode for readability

---

## 🚀 Tech Stack

- **Flutter** (with Material 3)
- **Dart** (null safety enabled)
- State Management: `Provider` / `Riverpod` / `Bloc` (TBD)
- **Backend**: (To be connected – Node.js/Express or Spring Boot)
- **Database**: PostgreSQL (via backend API)
- **Auth**: Firebase Auth / OAuth (Google, Apple)

---

## 🗂 Folder Structure
```
lib/
├── models/
├── screens/
│ ├── home/
│ ├── blog_detail/
│ ├── login/
│ ├── profile/
│ └── ...
├── components/
├── services/
├── theme/
└── main.dart ```


---

## 🧑‍💻 Getting Started

1. **Clone the repo:**

   ```bash
   git clone https://github.com/your-username/public-blog-app.git
   cd public-blog-app```

2. **Install dependencies:**
    ```flutter pub get```

3. **Run the app:**
    ```flutter run ```

## 🛠️ Roadmap

- [ ] Connect to backend API (Node.js or Spring Boot)
- [ ] Add comment functionality
- [ ] Implement OAuth login
- [ ] Add offline caching support
- [ ] Admin dashboard (web version)


## 🤝 Contributing
Feel free to fork the project, open issues, or submit PRs for enhancements or bug fixes.

## 📄 License
MIT License. See LICENSE for details.

## 👨‍💻 Developer
**Aayush Karki**  
[GitHub](https://github.com/your-github-username) • [LinkedIn](https://www.linkedin.com/in/your-linkedin-profile)
