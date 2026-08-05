import { SmaliPatch } from './types'

/** `return void;` in Smali. */
const RETURN_VOID_SMALI = ['.locals 0', 'return-void']

/** `return true;` in Smali. */
const RETURN_TRUE_SMALI = ['.locals 1', 'const/4 v0, 0x1', 'return v0']

/** `return new java.security.cert.X509Certificate[] {};` in Smali. */
const RETURN_EMPTY_CERT_ARRAY_SMALI = [
  '.locals 1',
  'const/4 v0, 0x0',
  'new-array v0, v0, [Ljava/security/cert/X509Certificate;',
  'return-object v0',
]

const RETURN_EMAIL_SMALI = [
  '.locals 1',
  'const-string v0, "infinity@nowhere.com"',
  'return-object v0',
]

const RETURN_COGNITO_CONSTRUCTOR_SMALI = [
    '.locals 2',
    'invoke-direct {p0}, Ljava/lang/Object;-><init>()V',
    'iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;',
    'iput-object p7, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;',
    'const-string v1, "infinity@nowhere.com"',
    'iput-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;',
    'iput-object p6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;',
    'const-string v1, "1i2fo3hm4d5m6bf789vj01q2ea"',
    'iput-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;',
    'iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Ljava/lang/String;',
    'iput-object p5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;',
    'const/4 p1, 0x0',
    'iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;',
    'iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;',
    'return-void',
]

const RETURN_COGNITO_GETSESSION_SMALI = [
    '.locals 5',
    'invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->l()V',
    'monitor-enter p0',
    ':try_start_0',
    'iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;',
    'if-nez v0, :cond_0',
    'const-string v0, "123456789012345678901"',
    'iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;',
    ':cond_0',
    'iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;',
    'if-eqz v0, :cond_2',
    'invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Z',
    'move-result v1',
    'if-eqz v1, :cond_1',
    'monitor-exit p0',
    ':try_end_0',
    '.catchall {:try_start_0 .. :try_end_0} :catchall_0',
    'return-object v0',
    ':cond_1',
    ':try_start_1',
    'new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;',
    'const-string v2, "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJiMTIzNDU2Ny1jZDEyLTEyZGEtMTIzNC1lYWYxZTJiYTM0NTYiLCJpc3MiOiJodHRwczovL2NvZ25pdG8taWRwLnVzLWVhc3QtMS5hbWF6b25hd3MuY29tL3VzLWVhc3QtMV96RURmWEJ6NGIiLCJhdWQiOiIxaTJmbzNobTRkNW02YmY3ODl2ajAxcTJlYSIsInRva2VuX3VzZSI6ImlkIiwiYXV0aF90aW1lIjoxNzgyODY0MDAwLjAsImlhdCI6MTc4Mjg2NDAwMC4wLCJleHAiOjIyMjQ3MTM2MDAuMCwianRpIjoiZjZiMGNjZTUtZjc3Ny00NmU5LThkZTAtN2VhNzllYjY1NDYwIiwib3JpZ2luX2p0aSI6IjEyZTNhNGI1LWJlNjctODlmMC1iMWIyLTNiZjQ1NmI3ODkwMSIsImV2ZW50X2lkIjoiMTJkMzRhYjUtNjc4OS0wMTJhLWJiYzMtNDVjNmY3ZmQ4Y2Y5IiwiY29nbml0bzpncm91cHMiOlsiRlJFRVVTRVIiXSwiY29nbml0bzpyb2xlcyI6WyJhcm46YXdzOmlhbTo6MzkxOTU5MjE4MjU3OnJvbGUvQW1hem9uRVNDb2duaXRvQWNjZXNzIl0sImNvZ25pdG86dXNlcm5hbWUiOiJiMTIzNDU2Ny1jZDEyLTEyZGEtMTIzNC1lYWYxZTJiYTM0NTYiLCJjdXN0b206cm9sZSI6IkZSRUVVU0VSIiwiZ2VuZGVyIjoiTWFsZSIsIm5pY2tuYW1lIjoiaW5maW5pdHkxMjM0NTY3IiwiZW1haWwiOiJpbmZpbml0eUBub3doZXJlLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwic29jaWFsX2xvZ2luIjoibm8iLCJpZGVudGl0aWVzIjpbeyJ1c2VySWQiOiIxMjM0NTY3ODkwMTIzNDU2Nzg5MDEiLCJwcm92aWRlck5hbWUiOiJHb29nbGUiLCJwcm92aWRlclR5cGUiOiJHb29nbGUiLCJpc3N1ZXIiOm51bGwsInByaW1hcnkiOiJmYWxzZSIsImRhdGVDcmVhdGVkIjoiMTc3OTEyMTIyMTY2NyJ9XSwiY3VzdG9tOmdvb2dsZV9wcm9maWxlX3BpYyI6Imh0dHBzOi8vbGgzLmdvb2dsZXVzZXJjb250ZW50LmNvbS9hL0FDZzhvY0lRUTZ4V3FIZTMwdGtBQkhsb1FFa1BQYy13SmJycmxWREdpRklzdEgwNWZBYz1zOTYtYyIsImN1c3RvbTpnb29nbGVfbmFtZSI6IkluZmluaXR5IiwiY3VzdG9tOmdvb2dsZV9saW5rZWQiOiJ5ZXMiLCJjdXN0b206bGlua2VkX2FjY291bnQiOiJ5ZXMiLCJjdXN0b206cHJpbWFyeV9hdHRyIjoiZW1haWwiLCJjdXN0b206c3FzX2FjY2VzcyI6IkFTSUFWV1FVWEJCWkk2WVFQSjU2IiwiY3VzdG9tOnNxc19zZWNyZXQiOiJuT21ZKzI3K1E2ZFlXVnJ5dXJTTXJEYU0reXJnNm85WkFWRGplNFFwIiwiY3VzdG9tOnNxc19leHBpcnkiOiIyMDI2LTA3LTMxIDEzOjIyOjAxIiwiY3VzdG9tOnNxc19zZXNzaW9uIjoiRndvR1pYSXZZWGR6RVBiLy8vLy8vLy93RWFERWMvZzdBa1p2dWpJMEFjSGlLdUFRY1RibVBWbzN6TDZzSGhLZ0U0dVdMTGZyZk84Y2pjT3ZDeUM0NXBoRTlUc0hhVGtMTjFqUFhPcGExdjM1Sm1LM2tWYjJ4NDFDbWM5YTNIa1h0aSBiOXJqOTRnbktydVB3NXlmV1ZqRWVUK09JRGRqS3ZzN1Q0SUZUMW5RVEhrK0VyL1h1R3lJTEtXKzBrSWlHSjgzczkzRUE3cHMrdlBwbWd2NmZSZE1pSFNZV0pwMkRrRWsrd3FCbUtSWGdUb2pWQ0sxR2E2YUd4cC9qUVdWVmZGWCsvZXZ3eEFZdWhTTENpU2hXVy9VeENqcHByTFRCakl0Ui9jY2d1WG1Ld1NYaHMrVjdza28wUk4xaTYzZ29aVlloUEYgQ2NFSExLTW5Pak1HZDBtQUNGZTI4WFJhUSIsImN1c3RvbTp2YWxpZGF0ZWRfZW1haWwiOiJpbmZpbml0eUBub3doZXJlLmNvbSJ9.7tD1tFB3jYCQLFuBmmWPUywD0xE8SznZ-2Tpy_9Udp4"',
    'invoke-direct {v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;-><init>(Ljava/lang/String;)V',
    'new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;',
    'const-string v3, "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJiMTIzNDU2Ny1jZDEyLTEyZGEtMTIzNC1lYWYxZTJiYTM0NTYiLCJpc3MiOiJodHRwczovL2NvZ25pdG8taWRwLnVzLWVhc3QtMS5hbWF6b25hd3MuY29tL3VzLWVhc3QtMV96RURmWEJ6NGIiLCJjbGllbnRfaWQiOiIxaTJmbzNobTRkNW02YmY3ODl2ajAxcTJlYSIsInRva2VuX3VzZSI6ImFjY2VzcyIsInNjb3BlIjoiYXdzLmNvZ25pdG8uc2lnbmluLnVzZXIuYWRtaW4iLCJhdXRoX3RpbWUiOjE3ODI4NjQwMDAuMCwiaWF0IjoxNzgyODY0MDAwLjAsImV4cCI6MjIyNDcxMzYwMC4wLCJqdGkiOiIxMmUzYTRiNS1iZTY3LTg5ZjAtYjFiMi0zYmY0NTZiNzg5MDEiLCJvcmlnaW5fanRpIjoiMTJlM2E0YjUtYmU2Ny04OWYwLWIxYjItM2JmNDU2Yjc4OTAxIiwiZXZlbnRfaWQiOiIxMmQzNGFiNS02Nzg5LTAxMmEtYmJjMy00NWM2ZjdmZDhjZjkiLCJjb2duaXRvOmdyb3VwcyI6WyJGUkVFVVNFUiJdLCJ1c2VybmFtZSI6ImIxMjM0NTY3LWNkMTItMTJkYS0xMjM0LWVhZjFlMmJhMzQ1NiIsImRldmljZV9rZXkiOiJ1cy1lYXN0LTFfZmUyYzVkZWItZDU2YS00NDdhLWE0Y2UtZWJlMTJjODc3MDIyIn0.z2hQc6P0ujiNVh06sH0AUpWwFX-WtrvrMit-ghcXQ24"',
    'invoke-direct {v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;-><init>(Ljava/lang/String;)V',
    'new-instance v3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;',
    'const-string v4, "eyJjdHkiOiAiSldUIiwgImVuYyI6ICJBMjU2R0NNIiwgImFsZyI6ICJSU0EtT0FFUCJ9.D6GNnxL6WtzWtBXoKB3FSp346afTqWrkHVb5mmK_d-Q.kmuHe-8TPKAnS_fM.eyJzdWIiOiAiYjEyMzQ1NjctY2QxMi0xMmRhLTEyMzQtZWFmMWUyYmEzNDU2IiwgImNsaWVudF9pZCI6ICIxaTJmbzNobTRkNW02YmY3ODl2ajAxcTJlYSIsICJhdXRoX3RpbWUiOiAxNzgyODY0MDAwLjAsICJkZXZpY2Vfa2V5IjogInVzLWVhc3QtMV9mZTJjNWRlYi1kNTZhLTQ0N2EtYTRjZS1lYmUxMmM4NzcwMjIiLCAiaWF0IjogMTc4Mjg2NDAwMC4wLCAiZXhwIjogMjIyNDcxMzYwMC4wfQ.cd_1SRyTRsriwcyOMHjuNw"',
    'invoke-direct {v3, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;-><init>(Ljava/lang/String;)V',
    'new-instance v4, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;',
    'invoke-direct {v4, v1, v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;)V',
    'iput-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;',
    'monitor-exit p0',
    ':try_end_1',
    '.catchall {:try_start_1 .. :try_end_1} :catchall_0',
    'return-object v4',
    ':cond_2',
    ':try_start_2',
    'invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->C()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;',
    'move-result-object v0',
    'invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Z',
    'move-result v1',
    'if-eqz v1, :cond_3',
    'iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;',
    'monitor-exit p0',
    ':try_end_2',
    '.catchall {:try_start_2 .. :try_end_2} :catchall_0',
    'return-object v0',
    ':cond_3',
    ':try_start_3',
    'invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->s()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;',
    'move-result-object v0',
    ':try_end_3',
    '.catchall {:try_start_3 .. :try_end_3} :catchall_0',
    'monitor-exit p0',
    'return-object v0',
    ':catchall_0',
    'move-exception v0',
    'monitor-exit p0',
    'throw v0',
]

const RETURN_COGNITO_GETCACHEDSESSION_SMALI = [
    '.locals 9',
    ':try_start_0',
    'new-instance v0, Ljava/lang/StringBuilder;',
    'invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V',
    'const-string v1, "CognitoIdentityProvider."',
    'invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    'iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;',
    'invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    'const-string v1, "."',
    'invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    'iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;',
    'invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    'const-string v2, ".idToken"',
    'invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    'invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;',
    'move-result-object v0',
    'new-instance v2, Ljava/lang/StringBuilder;',
    'invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V',
    'invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    'iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;',
    'invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    'invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    'iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;',
    'invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    'const-string v3, ".accessToken"',
    'invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    'invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;',
    'move-result-object v2',
    'new-instance v3, Ljava/lang/StringBuilder;',
    'invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V',
    'invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    'iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;',
    'invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    'const-string v1, "."',
    'invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    'iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;',
    'invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    'const-string v1, ".refreshToken"',
    'invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    'invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;',
    'move-result-object v1',
    'iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;',
    'iget-object v3, v3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;',
    'const/4 v4, 0x0',
    'move-object v5, v4',
    'move-object v6, v4',
    'move-object v7, v4',
    'invoke-virtual {v3, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Z',
    'move-result v8',
    'if-eqz v8, :cond_0',
    'invoke-virtual {v3, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->e(Ljava/lang/String;)Ljava/lang/String;',
    'move-result-object v8',
    'if-eqz v8, :cond_0',
    'new-instance v5, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;',
    'invoke-direct {v5, v8}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;-><init>(Ljava/lang/String;)V',
    'goto :goto_0',
    ':cond_0',
    'const-string v8, "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJiMTIzNDU2Ny1jZDEyLTEyZGEtMTIzNC1lYWYxZTJiYTM0NTYiLCJpc3MiOiJodHRwczovL2NvZ25pdG8taWRwLnVzLWVhc3QtMS5hbWF6b25hd3MuY29tL3VzLWVhc3QtMV96RURmWEJ6NGIiLCJhdWQiOiIxaTJmbzNobTRkNW02YmY3ODl2ajAxcTJlYSIsInRva2VuX3VzZSI6ImlkIiwiYXV0aF90aW1lIjoxNzgyODY0MDAwLjAsImlhdCI6MTc4Mjg2NDAwMC4wLCJleHAiOjIyMjQ3MTM2MDAuMCwianRpIjoiZjZiMGNjZTUtZjc3Ny00NmU5LThkZTAtN2VhNzllYjY1NDYwIiwib3JpZ2luX2p0aSI6IjEyZTNhNGI1LWJlNjctODlmMC1iMWIyLTNiZjQ1NmI3ODkwMSIsImV2ZW50X2lkIjoiMTJkMzRhYjUtNjc4OS0wMTJhLWJiYzMtNDVjNmY3ZmQ4Y2Y5IiwiY29nbml0bzpncm91cHMiOlsiRlJFRVVTRVIiXSwiY29nbml0bzpyb2xlcyI6WyJhcm46YXdzOmlhbTo6MzkxOTU5MjE4MjU3OnJvbGUvQW1hem9uRVNDb2duaXRvQWNjZXNzIl0sImNvZ25pdG86dXNlcm5hbWUiOiJiMTIzNDU2Ny1jZDEyLTEyZGEtMTIzNC1lYWYxZTJiYTM0NTYiLCJjdXN0b206cm9sZSI6IkZSRUVVU0VSIiwiZ2VuZGVyIjoiTWFsZSIsIm5pY2tuYW1lIjoiaW5maW5pdHkxMjM0NTY3IiwiZW1haWwiOiJpbmZpbml0eUBub3doZXJlLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwic29jaWFsX2xvZ2luIjoibm8iLCJpZGVudGl0aWVzIjpbeyJ1c2VySWQiOiIxMjM0NTY3ODkwMTIzNDU2Nzg5MDEiLCJwcm92aWRlck5hbWUiOiJHb29nbGUiLCJwcm92aWRlclR5cGUiOiJHb29nbGUiLCJpc3N1ZXIiOm51bGwsInByaW1hcnkiOiJmYWxzZSIsImRhdGVDcmVhdGVkIjoiMTc3OTEyMTIyMTY2NyJ9XSwiY3VzdG9tOmdvb2dsZV9wcm9maWxlX3BpYyI6Imh0dHBzOi8vbGgzLmdvb2dsZXVzZXJjb250ZW50LmNvbS9hL0FDZzhvY0lRUTZ4V3FIZTMwdGtBQkhsb1FFa1BQYy13SmJycmxWREdpRklzdEgwNWZBYz1zOTYtYyIsImN1c3RvbTpnb29nbGVfbmFtZSI6IkluZmluaXR5IiwiY3VzdG9tOmdvb2dsZV9saW5rZWQiOiJ5ZXMiLCJjdXN0b206bGlua2VkX2FjY291bnQiOiJ5ZXMiLCJjdXN0b206cHJpbWFyeV9hdHRyIjoiZW1haWwiLCJjdXN0b206c3FzX2FjY2VzcyI6IkFTSUFWV1FVWEJCWkk2WVFQSjU2IiwiY3VzdG9tOnNxc19zZWNyZXQiOiJuT21ZKzI3K1E2ZFlXVnJ5dXJTTXJEYU0reXJnNm85WkFWRGplNFFwIiwiY3VzdG9tOnNxc19leHBpcnkiOiIyMDI2LTA3LTMxIDEzOjIyOjAxIiwiY3VzdG9tOnNxc19zZXNzaW9uIjoiRndvR1pYSXZZWGR6RVBiLy8vLy8vLy93RWFERWMvZzdBa1p2dWpJMEFjSGlLdUFRY1RibVBWbzN6TDZzSGhLZ0U0dVdMTGZyZk84Y2pjT3ZDeUM0NXBoRTlUc0hhVGtMTjFqUFhPcGExdjM1Sm1LM2tWYjJ4NDFDbWM5YTNIa1h0aSBiOXJqOTRnbktydVB3NXlmV1ZqRWVUK09JRGRqS3ZzN1Q0SUZUMW5RVEhrK0VyL1h1R3lJTEtXKzBrSWlHSjgzczkzRUE3cHMrdlBwbWd2NmZSZE1pSFNZV0pwMkRrRWsrd3FCbUtSWGdUb2pWQ0sxR2E2YUd4cC9qUVdWVmZGWCsvZXZ3eEFZdWhTTENpU2hXVy9VeENqcHByTFRCakl0Ui9jY2d1WG1Ld1NYaHMrVjdza28wUk4xaTYzZ29aVlloUEYgQ2NFSExLTW5Pak1HZDBtQUNGZTI4WFJhUSIsImN1c3RvbTp2YWxpZGF0ZWRfZW1haWwiOiJpbmZpbml0eUBub3doZXJlLmNvbSJ9.7tD1tFB3jYCQLFuBmmWPUywD0xE8SznZ-2Tpy_9Udp4"',
    'new-instance v5, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;',
    'invoke-direct {v5, v8}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;-><init>(Ljava/lang/String;)V',
    'invoke-virtual {v3, v0, v8}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i(Ljava/lang/String;Ljava/lang/String;)V',
    ':cond_1',
    ':goto_0',
    'invoke-virtual {v3, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Z',
    'move-result v0',
    'if-eqz v0, :cond_2',
    'invoke-virtual {v3, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->e(Ljava/lang/String;)Ljava/lang/String;',
    'move-result-object v0',
    'if-eqz v0, :cond_2',
    'new-instance v6, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;',
    'invoke-direct {v6, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;-><init>(Ljava/lang/String;)V',
    'goto :goto_1',
    ':cond_2',
    'const-string v0, "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJiMTIzNDU2Ny1jZDEyLTEyZGEtMTIzNC1lYWYxZTJiYTM0NTYiLCJpc3MiOiJodHRwczovL2NvZ25pdG8taWRwLnVzLWVhc3QtMS5hbWF6b25hd3MuY29tL3VzLWVhc3QtMV96RURmWEJ6NGIiLCJjbGllbnRfaWQiOiIxaTJmbzNobTRkNW02YmY3ODl2ajAxcTJlYSIsInRva2VuX3VzZSI6ImFjY2VzcyIsInNjb3BlIjoiYXdzLmNvZ25pdG8uc2lnbmluLnVzZXIuYWRtaW4iLCJhdXRoX3RpbWUiOjE3ODI4NjQwMDAuMCwiaWF0IjoxNzgyODY0MDAwLjAsImV4cCI6MjIyNDcxMzYwMC4wLCJqdGkiOiIxMmUzYTRiNS1iZTY3LTg5ZjAtYjFiMi0zYmY0NTZiNzg5MDEiLCJvcmlnaW5fanRpIjoiMTJlM2E0YjUtYmU2Ny04OWYwLWIxYjItM2JmNDU2Yjc4OTAxIiwiZXZlbnRfaWQiOiIxMmQzNGFiNS02Nzg5LTAxMmEtYmJjMy00NWM2ZjdmZDhjZjkiLCJjb2duaXRvOmdyb3VwcyI6WyJGUkVFVVNFUiJdLCJ1c2VybmFtZSI6ImIxMjM0NTY3LWNkMTItMTJkYS0xMjM0LWVhZjFlMmJhMzQ1NiIsImRldmljZV9rZXkiOiJ1cy1lYXN0LTFfZmUyYzVkZWItZDU2YS00NDdhLWE0Y2UtZWJlMTJjODc3MDIyIn0.z2hQc6P0ujiNVh06sH0AUpWwFX-WtrvrMit-ghcXQ24"',
    'new-instance v6, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;',
    'invoke-direct {v6, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;-><init>(Ljava/lang/String;)V',
    'invoke-virtual {v3, v2, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i(Ljava/lang/String;Ljava/lang/String;)V',
    ':cond_3',
    ':goto_1',
    'invoke-virtual {v3, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Z',
    'move-result v0',
    'if-eqz v0, :cond_4',
    'invoke-virtual {v3, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->e(Ljava/lang/String;)Ljava/lang/String;',
    'move-result-object v0',
    'if-eqz v0, :cond_4',
    'new-instance v7, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;',
    'invoke-direct {v7, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;-><init>(Ljava/lang/String;)V',
    'goto :goto_2',
    ':cond_4',
    'const-string v0, "eyJjdHkiOiAiSldUIiwgImVuYyI6ICJBMjU2R0NNIiwgImFsZyI6ICJSU0EtT0FFUCJ9.D6GNnxL6WtzWtBXoKB3FSp346afTqWrkHVb5mmK_d-Q.kmuHe-8TPKAnS_fM.eyJzdWIiOiAiYjEyMzQ1NjctY2QxMi0xMmRhLTEyMzQtZWFmMWUyYmEzNDU2IiwgImNsaWVudF9pZCI6ICIxaTJmbzNobTRkNW02YmY3ODl2ajAxcTJlYSIsICJhdXRoX3RpbWUiOiAxNzgyODY0MDAwLjAsICJkZXZpY2Vfa2V5IjogInVzLWVhc3QtMV9mZTJjNWRlYi1kNTZhLTQ0N2EtYTRjZS1lYmUxMmM4NzcwMjIiLCAiaWF0IjogMTc4Mjg2NDAwMC4wLCAiZXhwIjogMjIyNDcxMzYwMC4wfQ.cd_1SRyTRsriwcyOMHjuNw"',
    'new-instance v7, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;',
    'invoke-direct {v7, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;-><init>(Ljava/lang/String;)V',
    'invoke-virtual {v3, v1, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i(Ljava/lang/String;Ljava/lang/String;)V',
    ':cond_5',
    ':goto_2',
    'new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;',
    'invoke-direct {v0, v5, v6, v7}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;)V',
    ':try_end_0',
    '.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0',
    'return-object v0',
    ':catch_0',
    'move-exception v0',
    'sget-object v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Lcom/amazonaws/logging/Log;',
    'const-string v2, "Error while reading the tokens from the persistent store."',
    'invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->g(Ljava/lang/Object;Ljava/lang/Throwable;)V',
    'new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;',
    'const/4 v1, 0x0',
    'invoke-direct {v0, v1, v1, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;)V',
    'return-object v0',
]

/**
 * A declarative list of all the patches that are
 * applied to Smali code to disable certificate pinning.
 */
const smaliPatches: SmaliPatch[] = [
  {
    selector: {
      type: 'interface',
      name: 'javax/net/ssl/X509TrustManager',
    },
    methods: [
      {
        name: 'X509TrustManager#checkClientTrusted (javax)',
        signature:
          'checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V',
        replacementLines: RETURN_VOID_SMALI,
      },
      {
        name: 'X509TrustManager#checkServerTrusted (javax)',
        signature:
          'checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V',
        replacementLines: RETURN_VOID_SMALI,
      },
      {
        name: 'X509TrustManager#getAcceptedIssuers (javax)',
        signature: 'getAcceptedIssuers()[Ljava/security/cert/X509Certificate;',
        replacementLines: RETURN_EMPTY_CERT_ARRAY_SMALI,
      },
    ],
  },
  {
    selector: {
      type: 'interface',
      name: 'javax/net/ssl/HostnameVerifier',
    },
    methods: [
      {
        name: 'HostnameVerifier#verify (javax)',
        signature: 'verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z',
        replacementLines: RETURN_TRUE_SMALI,
      },
    ],
  },
  {
    selector: {
      type: 'class',
      name: 'com/squareup/okhttp/CertificatePinner',
    },
    methods: [
      {
        name: 'HostnameVerifier#check (OkHttp 2.5)',
        // Inspired by: https://github.com/Fuzion24/JustTrustMe/blob/152557d/app/src/main/java/just/trust/me/Main.java#L456-L478
        signature: 'check(Ljava/lang/String;Ljava/util/List;)V',
        replacementLines: RETURN_VOID_SMALI,
      },
    ],
  },
  {
    selector: {
      type: 'class',
      name: 'okhttp3/CertificatePinner',
    },
    methods: [
      {
        name: 'CertificatePinner#check (OkHttp 3.x)',
        // Inspired by: https://github.com/Fuzion24/JustTrustMe/blob/152557d/app/src/main/java/just/trust/me/Main.java#L480-L499
        signature: 'check(Ljava/lang/String;Ljava/util/List;)V',
        replacementLines: RETURN_VOID_SMALI,
      },
      {
        name: 'CertificatePinner#check (OkHttp 4.2)',
        // Inspired by: https://github.com/Fuzion24/JustTrustMe/blob/152557d/app/src/main/java/just/trust/me/Main.java#L539-L558
        signature:
          'check$okhttp(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V',
        replacementLines: RETURN_VOID_SMALI,
      },
    ],
  },
  {
    selector: {
      type: 'class',
      name: 'com/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession',
    },
    methods: [
      {
        name: 'CognitoUserSession#getUsername (Cognito)',
        signature: 'a()Ljava/lang/String;',
        replacementLines: RETURN_EMAIL_SMALI,
      },
      {
        name: 'CognitoUserSession#isValid (Cognito)',
        signature:
          'b()Z',
        replacementLines: RETURN_TRUE_SMALI,
      },
      {
        name: 'CognitoUserSession#isValidWithClockSkew (Cognito)',
        signature:
          'c()Z',
        replacementLines: RETURN_TRUE_SMALI,
      },
    ],
  },
  {
    selector: {
      type: 'class',
      name: 'com/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser',
    },
    methods: [
      {
        name: 'CognitoUser#constructor (Cognito)',
        signature: 'constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;Landroid/content/Context;)V',
        replacementLines: RETURN_COGNITO_CONSTRUCTOR_SMALI,
      },
      {
        name: 'CognitoUser#getSession (Cognito)',
        signature:
          's()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;',
        replacementLines: RETURN_COGNITO_GETSESSION_SMALI,
      },
      {
        name: 'CognitoUser#getCachedSession (Cognito)',
        signature:
          'C()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;',
        replacementLines: RETURN_COGNITO_GETCACHEDSESSION_SMALI,
      },
    ],
  },
]

export default smaliPatches
