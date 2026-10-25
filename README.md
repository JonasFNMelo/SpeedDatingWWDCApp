<div align="center">

<img src="docs/icon.png" width="130" alt="SpeedDatingWWDCApp app icon" style="border-radius: 28px;"/>

# SpeedDatingWWDCApp

### Never run out of things to ask. 💬

SpeedDatingWWDCApp breaks the ice at WWDC watch events by pairing **students** and
**alumni** of the Apple Developer Academy in a speed-dating format: pick who you are, and
the app draws a conversation starter tailored to the person in front of you.

<br/>

[![Platform](https://img.shields.io/badge/iOS-26.2+-000000?style=for-the-badge&logo=apple&logoColor=white)](https://www.apple.com/ios/)
[![Swift](https://img.shields.io/badge/Swift-5-FA7343?style=for-the-badge&logo=swift&logoColor=white)](https://swift.org)
[![SwiftUI](https://img.shields.io/badge/SwiftUI-0052CC?style=for-the-badge&logo=swift&logoColor=white)](https://developer.apple.com/xcode/swiftui/)

</div>

---

## 📑 Table of Contents

- [About](#-about)
- [Features](#-features)
- [How It Works](#-how-it-works)
- [Tech Stack](#-tech-stack)
- [Project Structure](#-project-structure)
- [Getting Started](#-getting-started)
- [Authors](#-authors)

---

## 📖 About

Events like WWDC bring together people at very different points of their journey — from
students just starting out in iOS development to alumni who already went through the
Academy and are working in the market. Connecting them naturally isn't always easy, so
this app adapts the classic speed-dating format: short rounds where nobody has to wonder
*"so, what do we talk about?"*.

---

## 🚀 Features

- **🎓 Two roles** — choose **Aluno** (student) or **Alumni**, each with its own icon and color theme.
- **🎲 Random questions** — tap to draw a question aimed at the other role; tap again for the next one.
- **🧭 Curated question bank** — questions for alumni cover their Academy memories, WWDC moments and first steps in the job market; questions for students cover current projects, technologies and career plans.
- **✨ Smooth transitions** — each new question animates in.

---

## ⚙️ How It Works

1. **Pick your role** on the home screen.
2. The app shows **who you should ask** — a student asks an alumni, and vice versa.
3. Tap **Gerar pergunta** to draw the first question, then **Próxima pergunta** to keep the conversation going.

Under the hood, the questions live in `BancoDePerguntas`, an enum with one list per role,
and `PerguntaView` draws from the list of the opposite role with a SwiftUI animation.

---

## 🛠️ Tech Stack

| Area | Tech |
|------|------|
| UI | SwiftUI |
| Data | Static question bank (Swift enum) |

---

## 📂 Project Structure

```
SpeedDatingWWDCApp/
├── SpeedDatingWWDCAppApp.swift   # App entry
├── Models/                       # Categoria (roles) and BancoDePerguntas (questions)
├── Views/                        # Role picker, role cards and question screen
└── Assets.xcassets/              # App icon, colors
```

---

## 🎯 Getting Started

### Requirements

- Xcode 26+
- iOS 26.2+

### Run

```bash
git clone https://github.com/JonasFNMelo/SpeedDatingWWDCApp.git
cd SpeedDatingWWDCApp
open SpeedDatingWWDCApp.xcodeproj
```

Then pick an iPhone simulator and run (`⌘R`).

---

## 👥 Authors

Built at the **Apple Developer Academy | Mackenzie**.

<table width="100%">
  <tr>
    <td align="center" width="100%">
      <a href="https://github.com/JonasFNMelo"><img src="https://github.com/JonasFNMelo.png" width="80" alt="Jonas Melo"/></a>
      <br/><sub><b>Jonas Melo</b></sub><br/>
      <a href="https://github.com/JonasFNMelo"><img src="https://skillicons.dev/icons?i=github" alt="GitHub"/></a>
      <a href="https://www.linkedin.com/in/jonas-melo-/"><img src="https://skillicons.dev/icons?i=linkedin" alt="LinkedIn"/></a>
    </td>
  </tr>
</table>
