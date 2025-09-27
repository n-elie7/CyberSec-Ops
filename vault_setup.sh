echo "==== STEP 1: VAULT SETUP ===="

vault_setup() {
    echo "Setting up Secure Vault System..."
    
    # Create secure_vault directory in user's home
    VAULT_DIR="$HOME/secure_vault"
    mkdir -p "$VAULT_DIR"
    
    # Create the three required files with welcome messages using I/O redirection
    echo "Welcome to the encryption keys storage - Handle with extreme care!" > "$VAULT_DIR/keys.txt"
    echo "Confidential secrets storage - Authorized personnel only!" > "$VAULT_DIR/secrets.txt"
    echo "Security monitoring logs - System activity tracked here!" > "$VAULT_DIR/logs.txt"
    
    echo "✅ Secure Vault created successfully!"
    echo "📁 Vault contents:"
    ls -l "$VAULT_DIR"
    echo ""
}