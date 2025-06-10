import os
from dotenv import load_dotenv

# Load environment variables from .env file
load_dotenv()

class Config:
    """Configuration class to manage all environment variables"""
    
    # Application Configuration
    BASE_URL = os.environ.get('BASE_URL', 'https://academic-teaching-attendance-control-app-develop-iymj66chvq-uc.a.run.app/')
    USERNAME = os.environ.get('USERNAME', 'abhinav.1154@zenmonk.tech')
    PASSWORD = os.environ.get('PASSWORD', 'Abhi@123zenmonk')
    LANGUAGE_SELECTED = int(os.environ.get('LANGUAGE_SELECTED', '1'))  # 0-Spanish, 1-English
    
    # Selenium Configuration
    SELENIUM_REMOTE_URL = os.environ.get('SELENIUM_REMOTE_URL', 'http://localhost:4444/wd/hub')
    SELENIUM_HEADLESS = os.environ.get('SELENIUM_HEADLESS', '0').lower() in ['1', 'true', 'yes']
    
    @classmethod
    def validate_config(cls):
        """Validate that all required configuration is present"""
        required_vars = ['BASE_URL', 'USERNAME', 'PASSWORD']
        missing_vars = []
        
        for var in required_vars:
            if not getattr(cls, var):
                missing_vars.append(var)
        
        if missing_vars:
            raise ValueError(f"Missing required environment variables: {', '.join(missing_vars)}")
        
        return True
    
    @classmethod
    def print_config(cls):
        """Print current configuration (without sensitive data)"""
        print("Current Configuration:")
        print(f"  BASE_URL: {cls.BASE_URL}")
        print(f"  USERNAME: {cls.USERNAME[:10]}..." if len(cls.USERNAME) > 10 else f"  USERNAME: {cls.USERNAME}")
        print(f"  PASSWORD: {'*' * len(cls.PASSWORD)}")
        print(f"  LANGUAGE_SELECTED: {cls.LANGUAGE_SELECTED}")
        print(f"  SELENIUM_REMOTE_URL: {cls.SELENIUM_REMOTE_URL}")
        print(f"  SELENIUM_HEADLESS: {cls.SELENIUM_HEADLESS}") 