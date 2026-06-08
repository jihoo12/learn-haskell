# learn-haskell

This repository provides a structured and practical guide to learning the Haskell programming language. Designed for beginners and intermediate learners, this project walks through core functional programming concepts, type theory, and idiomatic Haskell practices using concrete, runnable examples.

## 📚 Table of Contents
1. [🚀 Getting Started](#-getting-started)
2. [📖 Project Structure](#-project-structure)
3. [💡 Core Concepts Covered](#-core-concepts-covered)
4. [🛠️ Usage Guide](#-usage-guide)
5. [🤝 Contributing](#-contributing)

---

## 🚀 Getting Started

To run the examples and exercises contained within this repository, you will need a Haskell build toolchain installed. We recommend using **Stack** as it manages dependencies cleanly and provides an excellent development environment.

### Prerequisites

*   [GHCup](https://ghcup.haskell.org/): A recommended way to install and manage various GHC (Glasgow Haskell Compiler) versions.
*   [Stack](https://docs.aws.amazon.com/code-pages/userguide/stack-cli): The build tool used to manage the project dependencies and build executables.

### Installation

1.  **Install GHCup and Stack:** Follow the official documentation for your operating system (Linux, macOS, or Windows).
2.  **Clone the Repository:**
    ```bash
    git clone <repository-url> learn-haskell
    cd learn-haskell
    ```
3.  **Build the Project:** The main repository assumes a standard project structure managed by Stack. Use the following command to resolve dependencies and build all executables:
    ```bash
    stack build
    ```

## 📂 Project Structure

The `learn-haskell` repository is organized into thematic modules, each corresponding to a major Haskell concept. This modular approach allows users to focus on one topic at a time without being overwhelmed by unrelated code.

*   **`/src`**: Contains the source code for all runnable examples and exercises. Each sub-directory generally represents a core module (e.g., `Types`, `Monads`).
*   **`/examples`**: Includes standalone, simple demonstrations that illustrate single concepts quickly without needing to run a full project build.
*   **`stack.yaml` / `.cabal`**: Project configuration files defining the dependencies and executable targets for Stack.

## 🧠 Core Concepts Covered

This course is designed to systematically introduce functional programming principles inherent to Haskell, including:

*   **Type System Fundamentals:** Understanding type inference, algebraic data types (ADTs), and polymorphism.
*   **Functional Programming Patterns:** Recursion, function composition, and immutability.
*   **Lazy Evaluation:** How Haskell handles time and memory in its execution model.
*   **IO Operations & Monads:** Managing side effects safely using structures like `Maybe`, `Either`, and the general concept of the `IO` monad.
*   **Advanced Topics:** Currying, Higher-Order Functions, Type Classes, and basic concurrency models.

## 💡 Usage Guide

To run a specific module or example:

1.  Navigate to the source code file or directory.
2.  If the concept is structured as an executable in `src/`, use Stack's run function:
    ```bash
    # Assuming 'ModuleA' is defined as an executable target
    stack exec ModuleA-exe
    ```
3.  For simple examples in `/examples`, you may need to compile and execute them individually, depending on their specific dependencies outlined in the module's documentation block.

**Tip:** Always review the inline comments and accompanying Markdown within the respective module directory for detailed explanations of *why* the code works the way it does.

## 🤝 Contributing

We welcome contributions! Whether you are able to write a new module, refine existing examples, or improve the documentation, your help is valuable.

1.  **Fork** the repository.
2.  Create a new feature branch (`git checkout -b feature/AmazingFeature`).
3.  Commit your changes (`git commit -m 'Add some AmazingFeature'`).
4.  Push to the branch and open a **Pull Request**.

Please ensure all added code adheres to standard Haskell style guidelines (Haskell Style Guide recommended).

## 📜 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.