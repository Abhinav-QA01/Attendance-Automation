# Attendance Automation System

A Python-based automation system for attendance management using Selenium WebDriver and Page Object Model (POM) design pattern. This project provides a robust framework for automating attendance-related tasks with a focus on maintainability and scalability.

## 🚀 Features

- Automated attendance management using Selenium WebDriver
- Page Object Model (POM) implementation for better code organization
- Environment-based configuration using `.env` files
- Docker support for consistent environment setup
- Cross-platform compatibility
- Automated testing framework using pytest
- Support for headless browser testing

## 📋 Prerequisites

- Python 3.x
- Docker (optional, for containerized setup)
- Git

## 🛠️ Installation

### Local Setup

1. Clone the repository:
   ```bash
   git clone [repository-url]
   cd Attendance_control_POM
   ```

2. Create and activate a virtual environment:
   ```bash
   python -m venv venv
   # On Windows
   .\venv\Scripts\activate
   # On Unix/MacOS
   source venv/bin/activate
   ```

3. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

4. Configure environment variables:
   ```bash
   # Copy the example environment file
   cp .env.example .env
   
   # Edit the .env file with your configuration
   # Update BASE_URL, USERNAME, PASSWORD, and other settings
   ```

### Docker Setup

1. Build and run using Docker Compose:
   ```bash
   docker-compose up --build
   ```

## ⚙️ Configuration

### Environment Variables

The application uses environment variables for configuration. Create a `.env` file in the project root with the following variables:

```env
# Application Configuration
BASE_URL=https://academic-teaching-attendance-control-app-develop-iymj66chvq-uc.a.run.app/
USERNAME=your_username@example.com
PASSWORD=your_password
LANGUAGE_SELECTED=1

# Selenium Configuration
SELENIUM_REMOTE_URL=http://localhost:4444/wd/hub
SELENIUM_HEADLESS=0
```

### Configuration Variables

| Variable | Description | Default Value |
|----------|-------------|---------------|
| `BASE_URL` | Base URL of the application | Required |
| `USERNAME` | User email/username for login | Required |
| `PASSWORD` | User password for login | Required |
| `LANGUAGE_SELECTED` | Language preference (0=Spanish, 1=English) | 1 |
| `SELENIUM_REMOTE_URL` | Selenium server URL | http://localhost:4444/wd/hub |
| `SELENIUM_HEADLESS` | Run browser in headless mode (0=no, 1=yes) | 0 |

### Security Note

The `.env` file is automatically ignored by Git to prevent sensitive information from being committed. Always use the `.env.example` file as a template and never commit your actual `.env` file.

## 📁 Project Structure

```
Attendance_control_POM/
├── Page_Object/         # Page Object Model classes
├── Page_functions/      # Page-specific functions
├── Process/            # Business logic and process flows
├── tests/              # Test cases
├── documents/          # Documentation and resources
├── config.py           # Configuration management
├── user_details.py     # User configuration (legacy)
├── Import_libraries.py # Selenium driver management
├── test_main_driver.py # Main test execution script
├── requirements.txt    # Project dependencies
├── .env               # Environment variables (create from .env.example)
├── .env.example       # Example environment configuration
├── Dockerfile         # Docker configuration
└── docker-compose.yml # Docker Compose configuration
```

## 🚀 Usage

### Running Tests

1. Local execution:
   ```bash
   pytest tests/
   ```

2. Using Docker:
   ```bash
   ./run_tests_with_novnc.sh
   ```

3. Direct execution:
   ```bash
   python test_main_driver.py
   ```

### Configuration Validation

The application automatically validates your configuration on startup. If any required environment variables are missing, you'll see an error message with details about what's missing.

## 🛠️ Dependencies

- selenium==4.15.2
- pytest==7.4.3
- webdriver-manager==4.0.1
- rpa==1.48.0
- pyautogui
- xvfbwrapper
- python-dotenv==1.0.0

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 👥 Authors

- Abhinav Dahiya - Initial work

## 🙏 Acknowledgments

- Thanks to all contributors who have helped shape this project
- Special thanks to the Selenium and pytest communities for their excellent tools 