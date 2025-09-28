# CyberSec-Ops
The Secure Vault Challenge

# 🔐 Secure Vault System

A comprehensive Linux-based security project designed for junior cybersecurity teams to learn file permissions, access control, and security monitoring fundamentals.

## 📋 Project Overview

The Secure Vault System is a shell-based application that demonstrates core cybersecurity principles through practical implementation. It creates a secure storage environment for sensitive data with proper access controls, monitoring capabilities, and operational security measures.

## 🎯 Learning Objectives

- **File System Security**: Understanding Linux file permissions and access control
- **Data Protection**: Implementing secure storage for sensitive information
- **Security Monitoring**: Automated detection of security risks and vulnerabilities
- **Operational Security**: Safe handling of secrets and confidential data
- **Shell Scripting**: Advanced bash programming for security applications

## 🏗️ System Architecture

```
secure_vault/
├── keys.txt      # Encryption keys (600 permissions)
├── secrets.txt   # Confidential data (640 permissions)  
├── logs.txt      # System activity logs (644 permissions)
└── vault_report.txt # Security monitoring reports
```

## ⚙️ Components

### Step 1: Vault Setup (`vault_setup.sh`)
Creates the foundational vault structure with secure defaults.

**Features:**
- Automated directory and file creation
- Welcome message initialization using I/O redirection
- File listing verification
- Home directory integration

### Step 2: Vault Permissions (`vault_permissions.sh`) 
Interactive permission management system for fine-grained access control.

**Features:**
- Pre-flight directory validation
- Interactive permission configuration
- Default security settings application
- Permission verification display
- Input validation and error handling

### Step 3: Vault Operations (`vault_ops.sh`)
Menu-driven operational interface for secure data management.

**Features:**
- **Add Secret**: Append new confidential data
- **Update Secret**: Replace existing entries with pattern matching
- **Add Log Entry**: Timestamped activity logging
- **Access Keys**: Security barrier (always denied)
- **Exit**: Clean session termination

### Step 4: Vault Monitoring (`vault_monitor.sh`)
Automated security assessment and reporting system.

**Features:**
- File metadata analysis (size, modification date, permissions)
- Security risk detection for overprivileged files
- Comprehensive report generation
- Visual security status indicators

## 🚀 Installation & Usage

### Prerequisites
- Linux/Unix environment
- Bash shell (version 4.0+)
- Standard Unix utilities (`chmod`, `stat`, `sed`, `date`)

### Quick Start

1. **Clone or download the project files:**
   ```bash
   # If using git
   git clone <repository-url>
   cd secure-vault-system
   
   # Or create the files manually
   mkdir secure-vault-system && cd secure-vault-system
   ```

2. **Make scripts executable:**
   ```bash
   chmod +x *.sh
   ```

3. **Run the complete system:**
   ```bash
   ./secure_vault_system.sh
   ```

### Individual Component Usage

Run each step independently for testing or educational purposes:

```bash
# Step 1: Initial setup
./vault_setup.sh

# Step 2: Configure permissions
./vault_permissions.sh

# Step 3: Operational interface
./vault_ops.sh

# Step 4: Security monitoring
./vault_monitor.sh
```

## 🔧 Configuration

### Default File Permissions
- `keys.txt`: **600** (owner read/write only)
- `secrets.txt`: **640** (owner read/write, group read)
- `logs.txt`: **644** (owner read/write, group/others read)

### Security Thresholds
- **Risk Detection**: Files with permissions more open than 644
- **Access Control**: Complete denial for encryption keys
- **Audit Trail**: All operations timestamped and logged

## 📊 Security Features

### Access Control Matrix
| Component | Owner | Group | Others | Security Level |
|-----------|-------|-------|---------|----------------|
| Keys      | RW    | -     | -       | Maximum        |
| Secrets   | RW    | R     | -       | High           |
| Logs      | RW    | R     | R       | Standard       |

### Security Measures
- ✅ **Principle of Least Privilege**: Minimal required permissions
- ✅ **Defense in Depth**: Multiple security layers
- ✅ **Access Denial**: Protected key storage
- ✅ **Audit Logging**: Complete activity tracking
- ✅ **Risk Monitoring**: Automated threat detection
- ✅ **Input Validation**: Secure user interaction

## 🔍 Monitoring & Reporting

The system generates detailed security reports including:
- File integrity metrics
- Permission analysis
- Security risk assessments
- Activity timestamps
- Compliance verification

**Sample Report Output:**
```
SECURE VAULT MONITORING REPORT
===============================
Generated on: 2025-01-15 14:30:45

📄 File: keys.txt | Size: 52 bytes | Modified: 2025-01-15 14:25:30 | Permissions: 600
📄 File: secrets.txt | Size: 128 bytes | Modified: 2025-01-15 14:28:15 | Permissions: 640
📄 File: logs.txt | Size: 245 bytes | Modified: 2025-01-15 14:29:50 | Permissions: 644
✅ No security risks detected - All file permissions are appropriate
```

## 🚨 Security Considerations

### Known Limitations
- File contents stored in plaintext (educational purposes)
- No encryption implementation
- Local storage only (no network security)
- Basic access control (no advanced authentication)

### Best Practices Applied
- Secure file permissions
- Input sanitization
- Error handling
- Audit trail maintenance
- Risk assessment automation

## 🛠️ Troubleshooting

### Common Issues

**"Directory does not exist" error:**
```bash
# Ensure vault setup has been run first
./vault_setup.sh
```

**Permission denied errors:**
```bash
# Check script executability
ls -l *.sh
chmod +x *.sh
```

**Invalid permission format:**
```bash
# Use 3-digit octal notation (e.g., 600, 755)
# Valid range: 000-777
```

## 🎓 Educational Value

This project demonstrates:
- **Systems Administration**: File management and permissions
- **Security Engineering**: Access control implementation  
- **Risk Management**: Threat detection and assessment
- **Operational Security**: Secure procedures and protocols
- **Compliance**: Security standard adherence

## 📄 License

This project is designed for educational purposes. Feel free to modify and extend for learning objectives.

---

**⚠️ Disclaimer**: This system is for educational purposes only. Do not use for storing actual sensitive data without implementing proper encryption and additional security measures.