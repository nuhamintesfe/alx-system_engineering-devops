# 🌐 Web Infrastructure Design

This project was completed as part of the **ALX Full Stack Software Engineering** program. It focuses on designing scalable, secure, and efficient web infrastructures while understanding core DevOps and system administration concepts.

---

## 📚 Learning Objectives

By the end of this project, you should be able to:

- Design a web infrastructure and explain each component’s role.
- Identify single points of failure (SPOF) and apply solutions.
- Understand LAMP architecture and its use in production environments.
- Explain the roles of:
  - Web server vs Application server
  - DNS and DNS record types (A, CNAME, etc.)
  - Load balancers and distribution algorithms
  - Database replication (master-slave)
  - Firewalls and HTTPS
  - Monitoring systems and their importance

---

## 🧠 Key Concepts Covered

- **Network basics & DNS**
- **Web servers (Nginx)**
- **Application servers**
- **MySQL databases**
- **Load balancing with HAProxy**
- **SSL/HTTPS security**
- **Firewalls**
- **Monitoring (e.g., Sumologic)**
- **Single Point of Failure (SPOF)**

---

## 🗂️ Project Structure

Each diagram below represents a more complex and resilient version of the previous one.

### `0-simple_web_stack`

**Objective:** Design a basic one-server web infrastructure.

- Components:
  - 1 Physical server
  - 1 Web server (Nginx)
  - 1 Application server
  - 1 MySQL database
  - 1 Domain name `foobar.com` (with a `www` CNAME record)
- IP: `8.8.8.8`

📎 **Image Link:** *(Add your Imgbox or Imgur link here)*

---

### `1-distributed_web_infrastructure`

**Objective:** Add redundancy and scalability.

- Adds:
  - 2 more physical servers
  - 1 Load Balancer (HAProxy)
  - Separate web/app/db roles for better modularity

📎 **Image Link:** *(Add your Imgbox or Imgur link here)*

---

### `2-secured_and_monitored_web_infrastructure`

**Objective:** Add security and observability.

- Adds:
  - 3 Firewalls (network perimeter, app, DB layers)
  - 1 SSL Certificate (HTTPS)
  - 3 Monitoring clients (e.g., Sumologic agents)

📎 **Image Link:** *(Add your Imgbox or Imgur link here)*

---

### `3-scale_up`

**Objective:** Further scale and cluster load balancers.

- Adds:
  - 1 new physical server
  - Load Balancer cluster (HAProxy active-passive)
  - Dedicated web, app, and DB servers

📎 **Image Link:** *(Add your Imgbox or Imgur link here)*

---

## 📁 File Descriptions

| Filename                          | Description |
|----------------------------------|-------------|
| `0-simple_web_stack`             | Basic infrastructure with a single LAMP server. |
| `1-distributed_web_infrastructure` | Adds load balancing and redundancy. |
| `2-secured_and_monitored_web_infrastructure` | Adds security (firewalls, SSL) and monitoring. |
| `3-scale_up`                     | Scaled infrastructure with clustered load balancer. |

---

## 🔐 DNS Configuration Example

```txt
foobar.com      IN A     8.8.8.8
www             IN CNAME foobar.com
