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

```text
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
