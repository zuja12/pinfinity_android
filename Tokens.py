import jwt # PyJWT library for encoding and decoding JWT tokens
import time
import json
import base64
import os
import uuid
from datetime import datetime, timezone

# ============================================================
# CONFIGURATIE
# ============================================================
SECRET_KEY = "infinity-test-secret-key-12345"  # For testing only!
USER_POOL_ID = "us-east-1_zEDfXBz4b"
REGION = "us-east-1"
CLIENT_ID = "1i2fo3hm4d5m6bf789vj01q2ea"
ISSUER = f"https://cognito-idp.{REGION}.amazonaws.com/{USER_POOL_ID}"

# User information
USERNAME = "b1234567-cd12-12da-1234-eaf1e2ba3456"
EMAIL = "infinity@nowhere.com"
NICKNAME = "infinity1234567"
GOOGLE_NAME = "Infinity"
GOOGLE_USER_ID = "123456789012345678901"
GOOGLE_PROFILE_PIC = "https://lh3.googleusercontent.com/a/ACg8ocIQQ6xWqHe30tkABHloQEkPPc-wJbrrlVDGiFIstH05fAc=s96-c"

# Timestamps
AUTH_TIME = datetime(2026, 7, 1, 0, 0, 0, tzinfo=timezone.utc).timestamp() # 1785532800  # 01 juli 2026 00:00:00 UTC
EXP_TIME = datetime(2040, 7, 1, 0, 0, 0, tzinfo=timezone.utc).timestamp() # 2224771200   # 01 juli 2040 00:00:00 UTC

# UUID's for all token ID's
ORIGIN_JTI = "12e3a4b5-be67-89f0-b1b2-3bf456b78901"
EVENT_ID = "12d34ab5-6789-012a-bbc3-45c6f7fd8cf9"
ID_TOKEN_JTI = "f6b0cce5-f777-46e9-8de0-7ea79eb65460"
ACCESS_TOKEN_JTI = "12e3a4b5-be67-89f0-b1b2-3bf456b78901"

# ============================================================
# 1. ID TOKEN (JWT with mock signature)
# ============================================================
def generate_id_token():
    """Generate an ID token in Cognito style"""

    payload = {
        # Standard Cognito claims
        "sub": USERNAME,
        "iss": ISSUER,
        "aud": CLIENT_ID,
        "token_use": "id",
        "auth_time": AUTH_TIME,
        "iat": AUTH_TIME,
        "exp": EXP_TIME,
        "jti": ID_TOKEN_JTI,
        "origin_jti": ORIGIN_JTI,
        "event_id": EVENT_ID,
        
        # Cognito groups and roles
        "cognito:groups": ["FREEUSER"],
        "cognito:roles": ["arn:aws:iam::391959218257:role/AmazonESCognitoAccess"],
        "cognito:username": USERNAME,
        "custom:role": "FREEUSER",
        
        # User information
        "gender": "Male",
        "nickname": NICKNAME,
        "email": EMAIL,
        "email_verified": False,
        "social_login": "no",
        
        # Google OAuth information
        "identities": [{
            "userId": GOOGLE_USER_ID,
            "providerName": "Google",
            "providerType": "Google",
            "issuer": None,
            "primary": "false",
            "dateCreated": "1779121221667"
        }],
        "custom:google_profile_pic": GOOGLE_PROFILE_PIC,
        "custom:google_name": GOOGLE_NAME,
        "custom:google_linked": "yes",
        "custom:linked_account": "yes",
        "custom:primary_attr": "email",
        
        # Custom attributes (SQS credentials)
        "custom:sqs_access": "ASIAVWQUXBBZI6YQPJ56",
        "custom:sqs_secret": "nOmY+27+Q6dYWVryurSMrDaM+yrg6o9ZAVDje4Qp",
        "custom:sqs_expiry": "2026-07-31 13:22:01",
        "custom:sqs_session": "FwoGZXIvYXdzEPb////////wEaDEc/g7AkZvujI0AcHiKuAQcTbmPVo3zL6sHhKgE4uWLLfrfO8cjcOvCyC45phE9TsHaTkLN1jPXOpa1v35JmK3kVb2x41Cmc9a3HkXti b9rj94gnKruPw5yfWVjEeT+OIDdjKvs7T4IFT1nQTHk+Er/XuGyILKW+0kIiGJ83s93EA7ps+vPpmgv6fRdMiHSYWJp2DkEk+wqBmKRXgTojVCK1Ga6aGxp/jQWVVfFX+/evwxAYuhSLCiShWW/UxCjpprLTBjItR/ccguXmKwSXhs+V7sko0RN1i63goZVYhPF CcEHLKMnOjMGd0mACFe28XRaQ",
        "custom:validated_email": EMAIL,
    }
    
    # Generate the token with HS256 (mock) - Cognito uses RS256 in production
    token = jwt.encode(payload, SECRET_KEY, algorithm="HS256")
    return token

# ============================================================
# 2. ACCESS TOKEN (JWT with mock signature)
# ============================================================
def generate_access_token():
    """Generate an Access token in Cognito style"""

    payload = {
        # Standard Cognito claims
        "sub": USERNAME,
        "iss": ISSUER,
        "client_id": CLIENT_ID,
        "token_use": "access",
        "scope": "aws.cognito.signin.user.admin",
        "auth_time": AUTH_TIME,
        "iat": AUTH_TIME,
        "exp": EXP_TIME,
        "jti": ACCESS_TOKEN_JTI,
        "origin_jti": ORIGIN_JTI,
        "event_id": EVENT_ID,
        
        # Cognito groups
        "cognito:groups": ["FREEUSER"],
        
        # User information
        "username": USERNAME,
        
        # Device information (Remember Device)
        "device_key": "us-east-1_fe2c5deb-d56a-447a-a4ce-ebe12c877022",
    }
    
    # Generate the token with HS256 (mock)
    token = jwt.encode(payload, SECRET_KEY, algorithm="HS256")
    return token

# ============================================================
# 3. REFRESH TOKEN (Encrypted JWT - Cognito-stijl)
# ============================================================
def generate_refresh_token():
    """Generate a Refresh token in Cognito-stijl (encrypted)"""
    
    # Header (Cognito refresh token format)
    header = {
        "cty": "JWT",
        "enc": "A256GCM",
        "alg": "RSA-OAEP"
    }
    
    # Payload (what is IN the refresh token)
    payload = {
        "sub": USERNAME,
        "client_id": CLIENT_ID,
        "auth_time": AUTH_TIME,
        "device_key": "us-east-1_fe2c5deb-d56a-447a-a4ce-ebe12c877022",
        "iat": AUTH_TIME,
        "exp": EXP_TIME
    }
    
    # Base64 encode header
    header_b64 = base64.urlsafe_b64encode(json.dumps(header).encode()).decode().rstrip("=")
    
    # Simulate a encrypted key (RSA-OAEP encrypted AES key)
    # In reality this is 256 bytes, but for the mock we use 32 bytes
    encrypted_key = base64.urlsafe_b64encode(os.urandom(32)).decode().rstrip("=")
    
    # IV (Initialization Vector) - 12 bytes voor AES-GCM
    iv = base64.urlsafe_b64encode(os.urandom(12)).decode().rstrip("=")
    
    # Ciphertext (the encrypted payload)
    # In reality this is AES-256-GCM encrypted, but for the mock we just base64 encode the JSON payload
    payload_json = json.dumps(payload)
    ciphertext = base64.urlsafe_b64encode(payload_json.encode()).decode().rstrip("=")
    
    # Auth Tag (authenticationtag) - 16 bytes
    auth_tag = base64.urlsafe_b64encode(os.urandom(16)).decode().rstrip("=")
    
    # Concatenate to a refresh token (Cognito format)
    refresh_token = f"{header_b64}.{encrypted_key}.{iv}.{ciphertext}.{auth_tag}"
    
    return refresh_token

# ============================================================
# 4. GENERATE ALL TOKENS
# ============================================================
def generate_all_tokens():
    """Generate all three tokens"""
    
    id_token = generate_id_token()
    access_token = generate_access_token()
    refresh_token = generate_refresh_token()
    
    return {
        "id_token": id_token,
        "access_token": access_token,
        "refresh_token": refresh_token
    }

# ============================================================
# 5. DECODE A TOKEN (voor verificatie)
# ============================================================
def decode_token(token):
    """Decode a token to see its content (for mock tokens only)"""
    try:
        decoded = jwt.decode(token, SECRET_KEY, algorithms=["HS256"])
        return decoded
    except:
        return "Can not decode (not a JWT or wrong format)"

# ============================================================
# 6. MAIN - TOON ALLE TOKENS
# ============================================================
if __name__ == "__main__":
    print("=" * 70)
    print("COGNITO TOKENS (MOCK - NOT VALID FOR AWS)")
    print("=" * 70)
    
    tokens = generate_all_tokens()
    
    print("\n" + "-" * 70)
    print("ID TOKEN:")
    print("-" * 70)
    print(tokens["id_token"])
    
    print("\n" + "-" * 70)
    print("ACCESS TOKEN:")
    print("-" * 70)
    print(tokens["access_token"])
    
    print("\n" + "-" * 70)
    print("REFRESH TOKEN:")
    print("-" * 70)
    print(tokens["refresh_token"])
    
    print("\n" + "=" * 70)
    print("TOKEN INFORMATION:")
    print("=" * 70)
    
    print(f"\n📋 User Pool ID: {USER_POOL_ID}")
    print(f"📋 Client ID: {CLIENT_ID}")
    print(f"📋 Username: {USERNAME}")
    print(f"📋 Email: {EMAIL}")
    print(f"📋 Auth Time: {datetime.fromtimestamp(AUTH_TIME).strftime('%d-%m-%Y %H:%M:%S')} UTC")
    print(f"📋 Expires: {datetime.fromtimestamp(EXP_TIME).strftime('%d-%m-%Y %H:%M:%S')} UTC")
    print(f"📋 Origin JTI: {ORIGIN_JTI}")
    print(f"📋 Event ID: {EVENT_ID}")
    print(f"📋 Groups: FREEUSER")
    
    print("\n" + "=" * 70)
    print("⚠️ WARNING:")
    print("=" * 70)
    print("• These tokens are NOT signed by AWS")
    print("• They do NOT work with real AWS Cognito APIs")
    print("• Only usable for unit tests and local development")
    print("• The refresh token is a MOCK (not actually encrypted)")
    print("• For real tokens, you must log in through Cognito")
    print("=" * 70)