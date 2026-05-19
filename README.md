# PowerShell AD Automation Lab

## Overview

This project simulates a real-world IT administration scenario where repetitive Active Directory user provisioning tasks are automated using PowerShell.

Instead of manually creating users, assigning them to Organizational Units, and adding them to security groups, this solution automates the process using CSV-based input.

---

## Business Problem

Manual Active Directory user provisioning is repetitive, time-consuming, and prone to human error.

Common issues include:

- Creating users in the wrong Organizational Unit
- Forgetting to assign group memberships
- Duplicate account creation
- Inconsistent onboarding processes

This lab solves those issues through automation.

---

## Technologies Used

- Windows Server 2022
- Active Directory Domain Services (AD DS)
- PowerShell
- VMware
- CSV-based automation
- Organizational Units (OUs)
- Security Groups

---

## Project Workflow

CSV Input  
↓  
PowerShell Script  
↓  
Active Directory User Creation  
↓  
OU Assignment  
↓  
Security Group Assignment  
↓  
Duplicate Validation  

---

## Script Features

This automation performs:

- Reads user data from CSV input
- Creates Active Directory users automatically
- Assigns users to the correct Organizational Unit
- Adds users to security groups
- Prevents duplicate user creation
- Detects existing group membership
- Provides execution feedback through console output

---

## CSV Input Example

### CSV File
![CSV Input](screenshots/csv-input.png)

---

## PowerShell Automation Script

### Script
![PowerShell Script](screenshots/powershell-script.png)

---

## Execution Output

### Console Results
![Script Execution](screenshots/script-execution.png)

---

## Users Created in Active Directory

### IT Organizational Unit
![IT Users](screenshots/ad-it-users-created.png)

### HR Organizational Unit
![HR Users](screenshots/ad-hr-users-created.png)

### Sales Organizational Unit
![Sales Users](screenshots/ad-sales-users-created.png)

---

## Security Group Validation

### Group Membership
![Group Membership](screenshots/group-membership.png)

---

## Key Skills Demonstrated

- Active Directory Administration
- PowerShell Automation
- Identity Management
- CSV Data Processing
- Security Group Administration
- Organizational Unit Management
- Scripting Logic
- Duplicate Validation
- IT Process Automation

---

## Outcome

Successfully automated Active Directory user provisioning and group assignment using PowerShell, reducing manual administrative work and improving consistency in account onboarding.
