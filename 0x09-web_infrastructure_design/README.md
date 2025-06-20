# Web Infrastructure Design

This project, completed during my Prodev Backend engineering training at ALX, focuses on designing robust web infrastructures from simple to production-ready systems.

## 🔑 Key Concepts
- Servers (Web, App, DB)
- DNS & DNS records
- Load balancing (HAProxy)
- Monitoring & logging
- Firewalls & HTTPS
- Redundancy & SPOF (Single Point of Failure)

## 📁 Project Overview

### `0-simple_web_stack`
A basic infrastructure with:
- 1 physical server
- Nginx web server
- Application server
- MySQL database
- Domain name `foobar.com` with www CNAME → A record (8.8.8.8)

### `1-distributed_web_infrastructure`
Improved design with:
- 3 physical servers
- Load balancer (HAProxy)
- Separate app/web servers
- Centralized database

### `2-secured_and_monitored_web_infrastructure`
Secured setup with:
- Firewalls at multiple layers
- HTTPS via SSL certificate
- Monitoring agents (e.g. Sumologic)

### `3-scale_up`
Scaled version with:
- Load balancer cluster
- Dedicated servers for each component
- Higher availability and modularity

## 📂 Files & Descriptions

| Filename                             | Description |
|-------------------------------------|-------------|
| `0-simple_web_stack`                | One-server LAMP stack with DNS |
| `1-distributed_web_infrastructure`  | Adds load balancing and redundancy |
| `2-secured_and_monitored_web_infrastructure` | Adds security and monitoring |
| `3-scale_up`                        | Final scaled architecture with clustered LB |

---

**Author**: [@nuhamintesfe](https://github.com/nuhamintesfe)  
**Repo**: `alx-system_engineering-devops`

> Note: Diagrams are available in each task file and hosted externally (Imgur).
