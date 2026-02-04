# Student-System

Student-System is a simple ASP.NET Web Forms application for student check-ins. It provides separate registration and login flows for students and administrators, plus basic password reset pages.

## Features
- Student registration, login, and password reset
- Admin registration, login, and password reset
- Session-based role tracking after login
- SQL Server-backed data storage

## Tech Stack
- ASP.NET Web Forms (.NET Framework 4.7.2)
- C# code-behind
- SQL Server (ADO.NET via `System.Data.SqlClient`)

## Pages
- `Home.aspx` — landing page
- `Help.aspx` — help/instructions
- `Student sign up.aspx`, `Student login.aspx`, `Student password.aspx`
- `Admin sign up.aspx`, `Admin login.aspx`, `Admin password.aspx`
- `system.aspx` — placeholder for student management
- `Report.aspx` — placeholder for reports
- `site.Master` — shared layout

## Database Expectations (Inferred)
The code-behind assumes a SQL Server database named `project` with tables like:
- `Student_registration` (columns used: `Student_ID`, `Full_name`, `Contact`, `Date_of_birth`, `Program`, `Password`)
- `Student_login` (columns used: `Student_ID`, `Password`)
- `Admin_sign_up` (columns used: `Admin_ID`, `Name`, `Contact`, `Password`)
- `Admin_login` (columns used: `Admin_ID`, `Password`)

Column names/types should be aligned with the values inserted and queried in the code-behind.

## Configuration
Update the connection string in `Web.config`:
- `con` and `projectConnectionString` currently point at a local SQL Server instance and the `project` database.

## Running Locally
Because this repository contains Web Forms pages without a solution/project file, the simplest way to run is:
1. Open Visual Studio with the **ASP.NET and web development** workload installed.
2. Create a new **ASP.NET Web Application (.NET Framework)** targeting **.NET Framework 4.7.2**.
3. Replace the generated pages with the files from this repo, or add this folder as a **Web Site** in Visual Studio.
4. Update `Web.config` connection strings to your SQL Server instance.
5. Run with IIS Express.

Alternatively, use the included `Student-System.sln` and `Student-System.csproj` for a standard MSBuild workflow.

## Build Notes
- CI uses **MSBuild on Windows** (Visual Studio Build Tools) because this is a .NET Framework 4.7.2 Web Forms app.
- `dotnet msbuild` can work, but it requires the correct targeting packs and web build targets and is more finicky.

## Notes
- Passwords are stored as plain text in several flows. Consider hashing and salting passwords before storing them.
- SQL queries are built using string concatenation in places; parameterized queries should be used everywhere to prevent SQL injection.
