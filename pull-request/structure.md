# Guía de estructura Realizar un Pull Request

# Pull Request Structure Guide

## Title
- **Format:** `type: brief description of the change`
- **Examples:**
  - `fix: bug fix in the Header component`
  - `feat: implement authentication with JWT`

## Description
Provide a detailed description of the changes made:

- **What was done:** Briefly explain what changes were implemented.
- **Why:** Describe the reason or the problem being solved.
- **How it was done:** Mention how the changes were implemented (if applicable).

# Images or videos
Add a video or an image of what you've done

# Code snippet
Add relevant code for your contribution

## Example:

### What was done
A middleware was added to validate JWT tokens on protected routes.

### Why
This enhances the application's security by ensuring that only authenticated users can access protected resources.

### How it was done
The `jsonwebtoken` library was used to implement a middleware that validates the token received in the request headers.
