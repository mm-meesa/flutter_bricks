# flutter_bricks

# Step 1:Exiting project first create file:
mason.yaml

# Step 2: Open mason.yaml file
Add this details in this files:

bricks:
  feature:
    path: /Users/muzammilmodan/Documents/GitHub/flutter_bricks/feature



# Step 3: open terminal:
mason get

# Step 4
Run: mason make feature Then enter: login



## -----------------------------------

### If data already exit and need to change so below step follow

# 1. Verify current mason.yaml

### Run:

cat mason.yaml


### Make sure output is exactly:

bricks:
feature:
path: /Users/muzammilmodan/Documents/GitHub/flutter_bricks/feature

# 2. Check brick structure

### Inside your feature folder, Mason requires:

feature/
├── brick.yaml
├── __brick__/

### Run:

ls /Users/muzammilmodan/Documents/GitHub/flutter_bricks/feature

### You should see:

brick.yaml
__brick__

If brick.yaml is missing, create it.

Example:

name: feature
description: A new Flutter feature module
version: 0.1.0
vars:
feature_name:
type: string
description: Feature name


# 3. Clear Mason cache

### Run:

mason cache clear

### Then:

mason get


# 4. Verify current directory

Sometimes wrong project folder has old mason.yaml.

### Check:

pwd

### And verify:

ls

contains your correct mason.yaml.

# 5. Recommended relative path

### Instead of absolute path, use relative path:

bricks:
feature:
path: ../flutter_bricks/feature

This avoids Mac path issues when moving projects.

Final expected structure
flutter_bricks/
└── feature/
├── brick.yaml
└── __brick__/
└── ...

## Then run:

mason get
mason make feature
