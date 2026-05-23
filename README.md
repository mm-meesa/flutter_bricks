# Flutter Bricks Setup Guide

## Step 1: Create `mason.yaml`

Inside your existing Flutter project, create a file named:

```yaml
mason.yaml
```

---

## Step 2: Add Brick Configuration

Open `mason.yaml` and add the following configuration:

```yaml
bricks:
  feature:
    path: /Users/muzammilmodan/Documents/GitHub/flutter_bricks/feature
```

---

## Step 3: Install Mason Dependencies

Open terminal inside your Flutter project and run:

```bash
mason get
```

---

## Step 4: Generate Feature Module

Run:

```bash
mason make feature
```

Then enter feature name when prompted:

```bash
login
```

---

# If Existing Data Is Not Updating

Follow the steps below.

---

# 1. Verify Current `mason.yaml`

Run:

```bash
cat mason.yaml
```

Expected output:

```yaml
bricks:
  feature:
    path: /Users/muzammilmodan/Documents/GitHub/flutter_bricks/feature
```

---

# 2. Verify Brick Structure

Inside `feature/` folder Mason requires:

```text
feature/
├── brick.yaml
├── __brick__/
```

Run:

```bash
ls /Users/muzammilmodan/Documents/GitHub/flutter_bricks/feature
```

Expected output:

```text
brick.yaml
__brick__
```

---

## If `brick.yaml` Is Missing

Create `brick.yaml` with this content:

```yaml
name: feature
description: A new Flutter feature module
version: 0.1.0

vars:
  feature_name:
    type: string
    description: Feature name
```

---

# 3. Clear Mason Cache

Run:

```bash
mason cache clear
```

Then run again:

```bash
mason get
```

---

# 4. Verify Current Project Directory

Sometimes terminal is opened in wrong project folder.

Check current directory:

```bash
pwd
```

Verify project files:

```bash
ls
```

Make sure `mason.yaml` exists in this directory.

---

# 5. Recommended Relative Path

Instead of absolute path, use relative path.

Update `mason.yaml`:

```yaml
bricks:
  feature:
    path: ../flutter_bricks/feature
```

This avoids Mac path issues when moving projects.

---

# Final Expected Structure

```text
flutter_bricks/
└── feature/
    ├── brick.yaml
    └── __brick__/
```

---

# Final Commands

```bash
mason get
mason make feature
```
