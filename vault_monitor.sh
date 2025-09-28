#!/bin/bash

echo "==== STEP 4: VAULT MONITORING ===="

vault_monitor() {
    VAULT_DIR="$HOME/secure_vault"
    REPORT_FILE="$VAULT_DIR/vault_report.txt"
    
    if [[ ! -d "$VAULT_DIR" ]]; then
        echo "❌ ERROR: secure_vault directory does not exist!"
        return 1
    fi
    
    echo "🔍 Monitoring Vault Security..."
    echo "==============================" 
    
    # Create report header
    {
        echo "SECURE VAULT MONITORING REPORT"
        echo "==============================="
        echo "Generated on: $(date)"
        echo ""
    } > "$REPORT_FILE"
    
    security_risk=false
    
    for file in "$VAULT_DIR"/*.txt; do
        if [[ -f "$file" ]]; then
            filename=$(basename "$file")
            size=$(stat -c%s "$file")
            modified=$(stat -c%y "$file")
            permissions=$(stat -c%a "$file")
            
            # Display and save to report
            info="📄 File: $filename | Size: ${size} bytes | Modified: $modified | Permissions: $permissions"
            echo "$info"
            echo "$info" >> "$REPORT_FILE"
            
            # Check for security risks (more open than 644)
            if [[ "$permissions" -gt 644 ]]; then
                risk_msg="⚠️ SECURITY RISK DETECTED for $filename (permissions: $permissions)"
                echo "$risk_msg"
                echo "$risk_msg" >> "$REPORT_FILE"
                security_risk=true
            fi
        fi
    done
    
    if [[ "$security_risk" == false ]]; then
        safe_msg="✅ No security risks detected - All file permissions are appropriate"
        echo "$safe_msg"
        echo "$safe_msg" >> "$REPORT_FILE"
    fi
    
    echo ""
    echo "📊 Report saved to: $REPORT_FILE"
    echo "✅ Monitoring complete!"
}

# ============================================================================
# MAIN EXECUTION
# ============================================================================

main() {
    echo "Starting Secure Vault System Setup..."
    echo "========================================"
    echo ""
    
    # Execute all steps
    vault_setup
    vault_permissions  
    vault_ops
    vault_monitor
    
    echo ""
    echo "Secure Vault System deployment complete!"
    echo "All security measures have been implemented."
}

# Run the main function
main