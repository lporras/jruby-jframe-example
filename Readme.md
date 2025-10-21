# JRuby Swing Hello World

A simple JRuby application demonstrating Java Swing integration with a GUI window.

## Prerequisites

- JRuby installed on your system
- Bundler gem

## Installation

Install dependencies:

```bash
jruby -S bundle install
```

## Running the Application

### With JRuby

Run the main application directly with JRuby:

```bash
jruby -S samples/main.rb
```

If Jframe does not open you can first run this command:
```bash
export JRUBY_OPTS="-J-Dapple.awt.UIElement=false -J-Djava.awt.headless=false"
jruby -S samples/main.rb
```

This will create a simple Swing window with a "Say Hello" button that displays a message dialog when clicked.

## Building an Executable JAR

### Using Warble

Warble packages the JRuby application into an executable JAR file that can run on any system with Java installed.

1. **Install Warble** (if not already installed):
   ```bash
   jruby -S bundle install
   ```

2. **Generate the JAR file**:
   ```bash
   jruby -S bundle exec warble
   ```

   This creates an executable JAR file in the project root directory (e.g., `shoe-hello.jar`).

3. **Run the JAR file**:
   ```bash
   java -jar shoe-hello.jar
   ```

### Configuration

The Warble configuration is located in [config/warble.rb](config/warble.rb) and includes:

- **Executable feature**: Makes the JAR file executable
- **Entry point**: [samples/main.rb](samples/main.rb)
- **Included directories**: `samples/`

## What the Application Does

The application creates a JFrame window with a button. When you click the "Say Hello" button, it displays a message dialog saying "Hello World".
