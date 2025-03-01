# Loe-JobStashes - Job-Specific Storage

**Loe-JobStashes** is a script for **FiveM QBCore servers** that allows job-specific storage for players. It creates unique stashes for different jobs, allowing players to store and retrieve items relevant to their role. This system helps to organize inventories by separating job-related items and improves roleplay immersion by limiting access to stashes based on job requirements.

---

## Features
- Creates job-specific stashes (e.g., Police, Mechanic, etc.).
- Players can store and retrieve job-related items from these stashes.
- Configurable stash size and number of slots per job.
- Customizable stash locations and access restrictions.
- Allows job-required access (e.g., only police can access police stashes).
- Fully compatible with **QBCore**.

---

## Prerequisites
- A **FiveM Server** running **QBCore 1.2.6 or before** framework.
- **qb-target** installed for interacting with stash zones.

---

## Installation

1. **Download and Add to Server Resources**  
   Save the entire `Loe-JobStashes` folder into your server's `resources` directory.

2. **Ensure in `server.cfg`**  
   Add the following line to your `server.cfg` to start the resource:
   ```cfg
   ensure Loe-JobStashes
