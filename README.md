# Attendance Automation System

A Python-based automation system for attendance management using Selenium WebDriver and Page Object Model (POM) design pattern. This project provides a robust framework for automating attendance-related tasks with a focus on maintainability and scalability.

## 🚀 Features

- Automated attendance management using Selenium WebDriver
- Page Object Model (POM) implementation for better code organization
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

### Docker Setup

1. Build and run using Docker Compose:
   ```bash
   docker-compose up --build
   ```

## 📁 Project Structure

```
Attendance_control_POM/
├── Page_Object/         # Page Object Model classes
├── Page_functions/      # Page-specific functions
├── Process/            # Business logic and process flows
├── tests/              # Test cases
├── documents/          # Documentation and resources
├── main_driver.py      # Main execution script
├── user_details.py     # User configuration
├── requirements.txt    # Project dependencies
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

### Configuration

Update `user_details.py` with your specific configuration settings.

## 🛠️ Dependencies

- selenium==4.15.2
- pytest==7.4.3
- webdriver-manager==4.0.1
- rpa==1.48.0
- pyautogui
- xvfbwrapper

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