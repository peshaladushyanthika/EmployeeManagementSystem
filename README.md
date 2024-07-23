# Employee Management System

This project is a simple CRUD (Create, Read, Update, Delete) application developed using Delphi.

## Features

- Add new profile
- Edit existing profile
- Delete profile
- List all profiles
- Add,update & delete profile contact details
- Export grid into CSV,XML and copy to clipboard
- Generate report

## Technologies Used

- Delphi
- FireDAC for database connectivity
- MySql

## Getting Started

Follow these steps to set up and run the project locally.

### Prerequisites

- Delphi IDE installed
- Mysql database set up

### Initial Steps

1. **Clone the Repository**:
    ```sh
    https://github.com/peshaladushyanthika/CrudApplication.git
    ```

2. **Open the Project**:
    - Open Delphi IDE.
    - Navigate to the cloned project folder and open the `.dproj` file.

3. **Configure Database Connection**:
    - Open `DataU.pas`.
    - Ensure the `TFDConnection` component (`Connection1`) is properly configured to connect to your database. Adjust the `Database`, `Username`, `Password`, and other properties as needed.

4. **Prepare the Database**:
    - Create the necessary tables (`profile` and `contact`) in your database.
    - You can use the "database_dump.sql" file in res folder.

5. **Run the Project**:
    - Compile and run the project from the Delphi IDE.
    - The application should open, allowing you to add, edit, delete, and list profiles.
### Main User Interfaces

![profile](https://github.com/user-attachments/assets/fa8208f5-936a-4f77-823c-dd915f0b59e1)

![edit](https://github.com/user-attachments/assets/62238155-bf7a-4016-8a0b-263eb70aa3a5)
