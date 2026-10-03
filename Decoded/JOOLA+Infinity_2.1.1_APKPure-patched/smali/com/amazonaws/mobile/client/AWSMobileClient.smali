.class public final Lcom/amazonaws/mobile/client/AWSMobileClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazonaws/auth/AWSCredentialsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;
    }
.end annotation


# static fields
.field public static volatile x:Lcom/amazonaws/mobile/client/AWSMobileClient;


# instance fields
.field public final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazonaws/mobile/config/AWSConfigurable;",
            ">;",
            "Lcom/amazonaws/mobile/config/AWSConfigurable;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/amazonaws/mobile/config/AWSConfiguration;

.field public c:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

.field public d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

.field public e:Ljava/lang/String;

.field public f:Landroid/content/Context;

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lcom/amazonaws/mobile/client/UserStateDetails;

.field public i:Ljava/util/concurrent/locks/ReentrantLock;

.field public volatile j:Ljava/util/concurrent/CountDownLatch;

.field public k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/mobile/client/UserStateListener;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/lang/Object;

.field public volatile m:Ljava/util/concurrent/CountDownLatch;

.field public n:Ljava/lang/Object;

.field public o:Ljava/lang/Object;

.field public p:Lcom/amazonaws/mobile/client/KeyValueStore;

.field public q:Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;

.field public r:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;

.field public s:Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;

.field public t:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Z

    .line 3
    sget-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->x:Lcom/amazonaws/mobile/client/AWSMobileClient;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->a:Ljava/util/LinkedHashMap;

    const-string v1, ""

    .line 5
    iput-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->e:Ljava/lang/String;

    .line 6
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    .line 7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->g:Ljava/util/Map;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->k:Ljava/util/ArrayList;

    .line 9
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->l:Ljava/lang/Object;

    .line 10
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->n:Ljava/lang/Object;

    .line 11
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->m:Ljava/util/concurrent/CountDownLatch;

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->o:Ljava/lang/Object;

    .line 13
    new-instance v0, Lcom/amazonaws/mobile/client/DummyStore;

    invoke-direct {v0}, Lcom/amazonaws/mobile/client/DummyStore;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/KeyValueStore;

    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static b(Lcom/amazonaws/mobile/client/AWSMobileClient;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->o(Ljava/lang/String;Lcom/amazonaws/mobile/config/AWSConfiguration;)Z

    move-result p0

    return p0
.end method

.method public static c(Lcom/amazonaws/mobile/client/AWSMobileClient;Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AWSMobileClient"

    const-string v1, "initialize: Cognito HostedUI client detected"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Scopes"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 6
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->u:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->g(Lorg/json/JSONObject;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Z

    .line 9
    iput-boolean v0, p1, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->m:Z

    .line 10
    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$3;

    invoke-direct {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient$3;-><init>()V

    .line 11
    iput-object v0, p1, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->h:Lcom/amazonaws/mobileconnectors/cognitoauth/handlers/AuthHandler;

    .line 12
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->a()Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->s:Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;

    return-void

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "User pool Id must be available through user pool setting"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized k()Lcom/amazonaws/mobile/client/AWSMobileClient;
    .locals 2

    const-class v0, Lcom/amazonaws/mobile/client/AWSMobileClient;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->x:Lcom/amazonaws/mobile/client/AWSMobileClient;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-direct {v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;-><init>()V

    sput-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->x:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 3
    :cond_0
    sget-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->x:Lcom/amazonaws/mobile/client/AWSMobileClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a()Lcom/amazonaws/auth/AWSCredentials;
    .locals 6

    const-string v0, "Failed to get credentials from Cognito Identity"

    const-string v1, "AWSMobileClient"

    .line 1
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->c:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    if-eqz v2, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->v()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "getCredentials: Validated user is signed-in"

    .line 3
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->c:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-virtual {v2}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->b()Lcom/amazonaws/auth/AWSSessionCredentials;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/KeyValueStore;

    const-string v4, "cognitoIdentityId"

    iget-object v5, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->c:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-virtual {v5}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/amazonaws/mobile/client/KeyValueStore;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amazonaws/services/cognitoidentity/model/NotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    .line 6
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    invoke-direct {v2, v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v2

    const-string v3, "getCredentials: Failed to getCredentials from Cognito Identity"

    .line 7
    invoke-static {v1, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    invoke-direct {v1, v0, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 9
    :cond_1
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Cognito Identity not configured"

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    sget-object v1, Lcom/amazonaws/mobile/client/IdentityProvider;->DEVELOPER:Lcom/amazonaws/mobile/client/IdentityProvider;

    invoke-virtual {v1, p1}, Lcom/amazonaws/mobile/client/IdentityProvider;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->q:Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;

    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/KeyValueStore;

    const-string v3, "cognitoIdentityId"

    invoke-interface {v2, v3}, Lcom/amazonaws/mobile/client/KeyValueStore;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    iput-object v2, v1, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->b:Ljava/lang/String;

    .line 6
    iput-object p2, v1, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->e:Ljava/lang/String;

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, v1, Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;->h:Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->q:Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;

    const/4 v2, 0x0

    .line 9
    iput-boolean v2, v1, Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;->h:Z

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/KeyValueStore;

    const-string v2, "customRoleArn"

    invoke-interface {v1, v2}, Lcom/amazonaws/mobile/client/KeyValueStore;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 12
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->c:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    .line 13
    iput-object v1, v2, Lcom/amazonaws/auth/CognitoCredentialsProvider;->i:Ljava/lang/String;

    .line 14
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 15
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->c:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-virtual {p1, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->s(Ljava/util/Map;)V

    .line 17
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->c:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-virtual {p1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->p()V

    .line 18
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/KeyValueStore;

    const-string p2, "cognitoIdentityId"

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->c:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-virtual {v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lcom/amazonaws/mobile/client/KeyValueStore;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->c:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-virtual {p1}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->d()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->g:Ljava/util/Map;

    .line 20
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/UserStateDetails;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v6, p3}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>(Lcom/amazonaws/mobile/client/Callback;)V

    .line 2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object p3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/KeyValueStore;

    sget-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->FEDERATED_SIGN_IN:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "signInMode"

    invoke-interface {p3, v1, v0}, Lcom/amazonaws/mobile/client/KeyValueStore;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 4
    :try_start_0
    invoke-virtual {v5, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AWSMobileClient"

    const-string v1, "_federatedSignIn: Putting provider and token in store"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "provider"

    .line 7
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "token"

    .line 8
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isFederationEnabled"

    const-string v2, "true"

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Lcom/amazonaws/mobile/client/IdentityProvider;->DEVELOPER:Lcom/amazonaws/mobile/client/IdentityProvider;

    invoke-virtual {v1, p1}, Lcom/amazonaws/mobile/client/IdentityProvider;->equals(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/KeyValueStore;

    invoke-interface {v1, v0}, Lcom/amazonaws/mobile/client/KeyValueStore;->a(Ljava/util/Map;)V

    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Developer authenticated identities require theidentity id to be specified in FederatedSignInOptions"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v6, p3, v0}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->e(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 14
    throw p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v6, p3, v0}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->e(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 16
    :goto_0
    new-instance p3, Lcom/amazonaws/mobile/client/AWSMobileClient$10;

    move-object v0, p3

    move-object v1, p0

    move-object v2, v6

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobile/client/AWSMobileClient$10;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 17
    invoke-virtual {v6, p3}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f(Landroid/content/Context;)Lcom/amazonaws/mobile/config/AWSConfigurable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazonaws/mobile/config/AWSConfigurable;",
            ">;)",
            "Lcom/amazonaws/mobile/config/AWSConfigurable;"
        }
    .end annotation

    const-class v0, Lcom/amazonaws/mobile/auth/ui/SignInUI;

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrieving the client instance for class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AWSMobileClient"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobile/config/AWSConfigurable;

    if-nez v1, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/mobile/config/AWSConfigurable;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    invoke-interface {v3, p1}, Lcom/amazonaws/mobile/config/AWSConfigurable;->a(Lcom/amazonaws/mobile/config/AWSConfiguration;)Lcom/amazonaws/mobile/config/AWSConfigurable;

    move-result-object v1

    .line 4
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created the new client: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurred in creating and initializing client. Check the context and the clientClass passed in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v1
.end method

.method public final g(Lorg/json/JSONObject;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;
    .locals 5

    const-string v0, "Scopes"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 3
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 4
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    invoke-direct {v0}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;-><init>()V

    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->f:Landroid/content/Context;

    .line 6
    iput-object v3, v0, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->a:Landroid/content/Context;

    .line 7
    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->u:Ljava/lang/String;

    .line 8
    iput-object v3, v0, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->i:Ljava/lang/String;

    const-string v3, "AppClientId"

    .line 9
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    iput-object v3, v0, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->c:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "AppClientSecret"

    .line 11
    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 12
    iput-object v3, v0, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->d:Ljava/lang/String;

    const-string v3, "WebDomain"

    .line 13
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 14
    iput-object v3, v0, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->b:Ljava/lang/String;

    const-string v3, "SignInRedirectURI"

    .line 15
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 16
    iput-object v3, v0, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->e:Ljava/lang/String;

    const-string v3, "SignOutRedirectURI"

    .line 17
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 18
    iput-object v3, v0, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->f:Ljava/lang/String;

    .line 19
    iput-object v1, v0, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->g:Ljava/util/Set;

    .line 20
    iput-boolean v2, v0, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->l:Z

    const-string v1, "IdentityProvider"

    .line 21
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    iput-object v1, v0, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->j:Ljava/lang/String;

    const-string v1, "IdpIdentifier"

    .line 23
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    iput-object p1, v0, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->i(Lcom/amazonaws/mobile/config/AWSConfiguration;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final i(Lcom/amazonaws/mobile/config/AWSConfiguration;)Lorg/json/JSONObject;
    .locals 5

    const-string v0, "hostedUI"

    const-string v1, "AWSMobileClient"

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->j(Lcom/amazonaws/mobile/config/AWSConfiguration;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v2

    .line 2
    :cond_0
    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/KeyValueStore;

    invoke-interface {v3, v0}, Lcom/amazonaws/mobile/client/KeyValueStore;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "Failed to parse HostedUI settings from store. Defaulting to awsconfiguration.json"

    .line 4
    invoke-static {v1, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v2

    :goto_0
    if-nez v4, :cond_1

    .line 5
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/KeyValueStore;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Lcom/amazonaws/mobile/client/KeyValueStore;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    return-object v4

    :catch_1
    move-exception p1

    const-string v0, "getHostedUIJSON: Failed to read config"

    .line 7
    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public final j(Lcom/amazonaws/mobile/config/AWSConfiguration;)Lorg/json/JSONObject;
    .locals 2

    const-string v0, "Auth"

    .line 1
    invoke-virtual {p1, v0}, Lcom/amazonaws/mobile/config/AWSConfiguration;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "OAuth"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "AWSMobileClient"

    const-string v1, "getHostedUIJSONFromJSON: Failed to read config"

    .line 4
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final l(Z)Lcom/amazonaws/mobile/client/UserStateDetails;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/KeyValueStore;

    const-string v1, "provider"

    const-string v2, "token"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/amazonaws/mobile/client/KeyValueStore;->c([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/KeyValueStore;

    const-string v5, "cognitoIdentityId"

    invoke-interface {v4, v5}, Lcom/amazonaws/mobile/client/KeyValueStore;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->p()Z

    move-result v5

    const-string v6, "AWSMobileClient"

    const-string v7, "Inspecting user state details"

    .line 6
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    move v9, v7

    goto :goto_0

    :cond_0
    move v9, v8

    :goto_0
    const/4 v10, 0x0

    if-nez p1, :cond_15

    .line 7
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->f:Landroid/content/Context;

    const-string v11, "android.permission.ACCESS_NETWORK_STATE"

    .line 8
    invoke-static {p1, v11}, Lg0/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    const-string v11, "connectivity"

    .line 9
    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 10
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v7, "Could not access network state"

    .line 12
    invoke-static {v6, v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    move v7, v8

    :goto_2
    if-nez v7, :cond_3

    goto/16 :goto_8

    :cond_3
    if-eqz v9, :cond_a

    .line 13
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    if-nez v5, :cond_4

    goto :goto_3

    .line 14
    :cond_4
    :try_start_1
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->f:Landroid/content/Context;

    .line 15
    invoke-static {p1}, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->a(Landroid/content/Context;)Lcom/amazonaws/mobile/auth/core/signin/SignInManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->b()Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 16
    invoke-interface {p1}, Lcom/amazonaws/mobile/auth/core/IdentityProvider;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 17
    invoke-interface {p1}, Lcom/amazonaws/mobile/auth/core/IdentityProvider;->a()Ljava/lang/String;

    move-result-object v3

    const-string p1, "Token was refreshed using drop-in UI internal mechanism"

    .line 18
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez v3, :cond_6

    const-string p1, "Token used for federation has become null"

    .line 19
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_OUT_FEDERATED_TOKENS_INVALID:Lcom/amazonaws/mobile/client/UserState;

    invoke-direct {p1, v1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    return-object p1

    .line 21
    :cond_6
    invoke-virtual {p0, v1, v3}, Lcom/amazonaws/mobile/client/AWSMobileClient;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "getUserStateDetails: token already federated just fetch credentials"

    .line 22
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->c:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    if-eqz p1, :cond_8

    .line 24
    invoke-virtual {p1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->b()Lcom/amazonaws/auth/AWSSessionCredentials;

    goto :goto_3

    .line 25
    :cond_7
    invoke-virtual {p0, v1, v3}, Lcom/amazonaws/mobile/client/AWSMobileClient;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_8
    :goto_3
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_IN:Lcom/amazonaws/mobile/client/UserState;

    invoke-direct {p1, v1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    const-string v1, "Failed to federate the tokens."

    .line 27
    invoke-static {v6, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_IN:Lcom/amazonaws/mobile/client/UserState;

    .line 29
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->q(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 30
    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_OUT_FEDERATED_TOKENS_INVALID:Lcom/amazonaws/mobile/client/UserState;

    .line 31
    :cond_9
    new-instance v2, Lcom/amazonaws/mobile/client/UserStateDetails;

    invoke-direct {v2, v1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    .line 32
    iput-object p1, v2, Lcom/amazonaws/mobile/client/UserStateDetails;->c:Ljava/lang/Exception;

    return-object v2

    :cond_a
    if-eqz v9, :cond_12

    .line 33
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    if-eqz p1, :cond_12

    .line 34
    :try_start_2
    new-instance p1, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>()V

    .line 35
    new-instance v3, Lcom/amazonaws/mobile/client/AWSMobileClient$11;

    invoke-direct {v3, p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$11;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;)V

    .line 36
    invoke-virtual {p1, v3}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->d(Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/mobile/client/results/Tokens;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    :try_start_3
    iget-object v3, p1, Lcom/amazonaws/mobile/client/results/Tokens;->a:Lcom/amazonaws/mobile/client/results/Token;

    .line 38
    iget-object v3, v3, Lcom/amazonaws/mobile/client/results/Token;->a:Ljava/lang/String;

    .line 39
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v5, :cond_b

    goto :goto_4

    .line 40
    :cond_b
    invoke-virtual {p0, v1, v3}, Lcom/amazonaws/mobile/client/AWSMobileClient;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_c

    .line 41
    :try_start_4
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->c:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    if-eqz v1, :cond_d

    .line 42
    invoke-virtual {v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->b()Lcom/amazonaws/auth/AWSSessionCredentials;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catch_2
    move-exception v1

    :try_start_5
    const-string v2, "Failed to get or refresh credentials from Cognito Identity"

    .line 43
    invoke-static {v6, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 44
    :cond_c
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->c:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    if-eqz v2, :cond_d

    .line 45
    invoke-virtual {p0, v1, v3}, Lcom/amazonaws/mobile/client/AWSMobileClient;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 46
    :cond_d
    :goto_4
    sget-object p1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_IN:Lcom/amazonaws/mobile/client/UserState;

    .line 47
    invoke-virtual {p0, v10}, Lcom/amazonaws/mobile/client/AWSMobileClient;->q(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 48
    sget-object p1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_OUT_USER_POOLS_TOKENS_INVALID:Lcom/amazonaws/mobile/client/UserState;

    .line 49
    :cond_e
    new-instance v1, Lcom/amazonaws/mobile/client/UserStateDetails;

    invoke-direct {v1, p1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    .line 50
    :goto_5
    iput-object v10, v1, Lcom/amazonaws/mobile/client/UserStateDetails;->c:Ljava/lang/Exception;

    return-object v1

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception p1

    move-object v1, p1

    move-object p1, v10

    :goto_6
    if-nez p1, :cond_f

    :try_start_6
    const-string p1, "Tokens are invalid, please sign-in again."

    goto :goto_7

    :cond_f
    const-string p1, "Failed to federate the tokens"

    .line 51
    :goto_7
    invoke-static {v6, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 52
    sget-object p1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_IN:Lcom/amazonaws/mobile/client/UserState;

    .line 53
    invoke-virtual {p0, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->q(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 54
    sget-object p1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_OUT_USER_POOLS_TOKENS_INVALID:Lcom/amazonaws/mobile/client/UserState;

    .line 55
    :cond_10
    new-instance v2, Lcom/amazonaws/mobile/client/UserStateDetails;

    invoke-direct {v2, p1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    .line 56
    iput-object v1, v2, Lcom/amazonaws/mobile/client/UserStateDetails;->c:Ljava/lang/Exception;

    return-object v2

    .line 57
    :catchall_0
    sget-object p1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_IN:Lcom/amazonaws/mobile/client/UserState;

    .line 58
    invoke-virtual {p0, v10}, Lcom/amazonaws/mobile/client/AWSMobileClient;->q(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 59
    sget-object p1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_OUT_USER_POOLS_TOKENS_INVALID:Lcom/amazonaws/mobile/client/UserState;

    .line 60
    :cond_11
    new-instance v1, Lcom/amazonaws/mobile/client/UserStateDetails;

    invoke-direct {v1, p1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    goto :goto_5

    .line 61
    :cond_12
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->c:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    if-nez p1, :cond_13

    .line 62
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_OUT:Lcom/amazonaws/mobile/client/UserState;

    invoke-direct {p1, v1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    return-object p1

    :cond_13
    if-eqz v4, :cond_14

    .line 63
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->GUEST:Lcom/amazonaws/mobile/client/UserState;

    invoke-direct {p1, v1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    return-object p1

    .line 64
    :cond_14
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    sget-object v0, Lcom/amazonaws/mobile/client/UserState;->SIGNED_OUT:Lcom/amazonaws/mobile/client/UserState;

    invoke-direct {p1, v0, v10}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    return-object p1

    :cond_15
    :goto_8
    if-eqz v9, :cond_16

    .line 65
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_IN:Lcom/amazonaws/mobile/client/UserState;

    invoke-direct {p1, v1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    return-object p1

    :cond_16
    if-eqz v4, :cond_17

    .line 66
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->GUEST:Lcom/amazonaws/mobile/client/UserState;

    invoke-direct {p1, v1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    return-object p1

    .line 67
    :cond_17
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    sget-object v0, Lcom/amazonaws/mobile/client/UserState;->SIGNED_OUT:Lcom/amazonaws/mobile/client/UserState;

    invoke-direct {p1, v0, v10}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    return-object p1
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasFederatedToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AWSMobileClient"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final n(Landroid/content/Context;Lcom/amazonaws/mobile/client/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/UserStateDetails;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/amazonaws/mobile/config/AWSConfiguration;

    invoke-direct {v0, p1}, Lcom/amazonaws/mobile/config/AWSConfiguration;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v1, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v1, p2}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>(Lcom/amazonaws/mobile/client/Callback;)V

    .line 4
    new-instance p2, Lcom/amazonaws/mobile/client/AWSMobileClient$2;

    invoke-direct {p2, p0, v1, v0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$2;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;Lcom/amazonaws/mobile/config/AWSConfiguration;Landroid/content/Context;)V

    .line 5
    invoke-virtual {v1, p2}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final o(Ljava/lang/String;Lcom/amazonaws/mobile/config/AWSConfiguration;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/amazonaws/mobile/config/AWSConfiguration;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v1, "GoogleSignIn"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    const-string v1, "ClientId-WebApp"

    .line 3
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    move v0, v2

    :cond_0
    return v0

    :cond_1
    if-eqz p2, :cond_2

    move v0, v2

    :cond_2
    return v0

    .line 4
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found in `awsconfiguration.json`"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AWSMobileClient"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final p()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/KeyValueStore;

    const-string v1, "isFederationEnabled"

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/KeyValueStore;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "true"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final q(Ljava/lang/Exception;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/amazonaws/services/cognitoidentity/model/NotAuthorizedException;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "No cached session."

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final r(Lcom/amazonaws/mobile/config/AWSConfiguration;)V
    .locals 2

    const-string v0, "AWSMobileClient"

    const-string v1, "Using the SignInProviderConfig from `awsconfiguration.json`."

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->j:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    :try_start_0
    const-string v1, "CognitoUserPool"

    .line 3
    invoke-virtual {p0, v1, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->o(Ljava/lang/String;Lcom/amazonaws/mobile/config/AWSConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    const-class v1, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Ljava/lang/Class;)V

    :cond_0
    const-string v1, "FacebookSignIn"

    .line 5
    invoke-virtual {p0, v1, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->o(Ljava/lang/String;Lcom/amazonaws/mobile/config/AWSConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    const-class v1, Lcom/amazonaws/mobile/auth/facebook/FacebookSignInProvider;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Ljava/lang/Class;)V

    :cond_1
    const-string v1, "GoogleSignIn"

    .line 7
    invoke-virtual {p0, v1, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->o(Ljava/lang/String;Lcom/amazonaws/mobile/config/AWSConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    const-class p1, Lcom/amazonaws/mobile/auth/google/GoogleSignInProvider;

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public final s(Lcom/amazonaws/mobile/client/UserStateDetails;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->h:Lcom/amazonaws/mobile/client/UserStateDetails;

    invoke-virtual {p1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->h:Lcom/amazonaws/mobile/client/UserStateDetails;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->k:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/mobile/client/UserStateListener;

    .line 5
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/amazonaws/mobile/client/AWSMobileClient$4;

    invoke-direct {v4, v2, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$4;-><init>(Lcom/amazonaws/mobile/client/UserStateListener;Lcom/amazonaws/mobile/client/UserStateDetails;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method public final t(Landroid/app/Activity;Lcom/amazonaws/mobile/client/SignInUIOptions;Lcom/amazonaws/mobile/client/Callback;)V
    .locals 2

    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Hosted UI disabled"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/amazonaws/mobile/client/Callback;->b(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final u(Lcom/amazonaws/mobile/client/SignOutOptions;Lcom/amazonaws/mobile/client/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobile/client/SignOutOptions;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$9;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$9;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/SignOutOptions;)V

    .line 2
    invoke-virtual {v0, p2}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;->a(Lcom/amazonaws/mobile/client/Callback;)V

    return-void
.end method

.method public final v()Z
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->j:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->l(Z)Lcom/amazonaws/mobile/client/UserStateDetails;

    move-result-object v2

    const-string v3, "AWSMobileClient"

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "waitForSignIn: userState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v5, v2, Lcom/amazonaws/mobile/client/UserStateDetails;->a:Lcom/amazonaws/mobile/client/UserState;

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    sget-object v3, Lcom/amazonaws/mobile/client/AWSMobileClient$27;->a:[I

    .line 8
    iget-object v4, v2, Lcom/amazonaws/mobile/client/UserStateDetails;->a:Lcom/amazonaws/mobile/client/UserState;

    .line 9
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v3, v1, :cond_4

    const/4 v1, 0x2

    if-eq v3, v1, :cond_1

    const/4 v1, 0x3

    if-eq v3, v1, :cond_1

    const/4 v1, 0x4

    if-eq v3, v1, :cond_0

    const/4 v1, 0x5

    if-eq v3, v1, :cond_0

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    .line 11
    :cond_0
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->s(Lcom/amazonaws/mobile/client/UserStateDetails;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v1, v2, Lcom/amazonaws/mobile/client/UserStateDetails;->c:Ljava/lang/Exception;

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {p0, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->q(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    iget-object v0, v2, Lcom/amazonaws/mobile/client/UserStateDetails;->c:Ljava/lang/Exception;

    .line 15
    throw v0

    .line 16
    :cond_3
    :goto_1
    invoke-virtual {p0, v2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->s(Lcom/amazonaws/mobile/client/UserStateDetails;)V

    .line 17
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->j:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 18
    invoke-virtual {p0, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->l(Z)Lcom/amazonaws/mobile/client/UserStateDetails;

    move-result-object v0

    .line 19
    iget-object v0, v0, Lcom/amazonaws/mobile/client/UserStateDetails;->a:Lcom/amazonaws/mobile/client/UserState;

    .line 20
    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_IN:Lcom/amazonaws/mobile/client/UserState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 21
    :cond_4
    invoke-virtual {p0, v2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->s(Lcom/amazonaws/mobile/client/UserStateDetails;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 23
    :try_start_2
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    const-string v2, "Operation requires a signed-in state"

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    :goto_2
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 25
    throw v0
.end method
