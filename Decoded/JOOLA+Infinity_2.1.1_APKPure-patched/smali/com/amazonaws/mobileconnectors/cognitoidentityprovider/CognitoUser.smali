.class public Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;
    }
.end annotation


# static fields
.field public static final k:Lcom/amazonaws/logging/Log;

.field public static final l:Ljava/lang/Object;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public final h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

.field public i:Ljava/lang/String;

.field public j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Lcom/amazonaws/logging/Log;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->l:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iput-object p7, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    const-string v1, "infinity@nowhere.com"

    iput-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    const-string v1, "1i2fo3hm4d5m6bf789vj01q2ea"

    iput-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    return-void
.end method

.method public static a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;ZLjava/util/Map;)V
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;->withClientId(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;->withSecretHash(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;->withUsername(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;->withConfirmationCode(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;

    move-result-object p1

    .line 7
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;->withForceAliasCreation(Ljava/lang/Boolean;)Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;->withClientMetadata(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;

    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->x()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;->withUserContextData(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 11
    iget-object p2, p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->g:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 12
    new-instance p3, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    invoke-direct {p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;-><init>()V

    .line 13
    invoke-virtual {p3, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;->setAnalyticsEndpointId(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1, p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;->setAnalyticsMetadata(Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;)V

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    check-cast p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;

    .line 16
    invoke-virtual {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->d(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object p2

    .line 17
    iget-object p3, p2, Lcom/amazonaws/http/ExecutionContext;->a:Lcom/amazonaws/util/AWSRequestMetrics;

    .line 18
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p3, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->f(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 19
    :try_start_0
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p3, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->f(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :try_start_1
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmSignUpRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmSignUpRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmSignUpRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 21
    move-object p1, v2

    check-cast p1, Lcom/amazonaws/DefaultRequest;

    invoke-virtual {p1, p3}, Lcom/amazonaws/DefaultRequest;->c(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    :try_start_2
    invoke-virtual {p3, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 23
    new-instance p1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmSignUpResultJsonUnmarshaller;

    invoke-direct {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmSignUpResultJsonUnmarshaller;-><init>()V

    .line 24
    new-instance v3, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v3, p1}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 25
    invoke-virtual {p0, v2, v3, p2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->l(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object p1

    .line 26
    iget-object p1, p1, Lcom/amazonaws/Response;->a:Ljava/lang/Object;

    .line 27
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    invoke-virtual {p3, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 29
    invoke-virtual {p0, p3, v2, v1}, Lcom/amazonaws/AmazonWebServiceClient;->e(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Z)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 30
    :try_start_3
    sget-object p2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p3, p2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 31
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 32
    :goto_0
    sget-object p2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p3, p2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 33
    invoke-virtual {p0, p3, v2, v1}, Lcom/amazonaws/AmazonWebServiceClient;->e(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Z)V

    .line 34
    throw p1
.end method

.method public static b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserAttributesResult;
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserAttributesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserAttributesRequest;-><init>()V

    .line 4
    iget-object p3, p3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    .line 5
    iget-object p3, p3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoUserToken;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserAttributesRequest;->setAccessToken(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;->b()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserAttributesRequest;->setUserAttributes(Ljava/util/Collection;)V

    .line 8
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserAttributesRequest;->setClientMetadata(Ljava/util/Map;)V

    .line 9
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    check-cast p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;

    .line 10
    invoke-virtual {p0, v0}, Lcom/amazonaws/AmazonWebServiceClient;->d(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object p1

    .line 11
    iget-object p2, p1, Lcom/amazonaws/http/ExecutionContext;->a:Lcom/amazonaws/util/AWSRequestMetrics;

    .line 12
    sget-object p3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p2, p3}, Lcom/amazonaws/util/AWSRequestMetrics;->f(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 13
    :try_start_0
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p2, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->f(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateUserAttributesRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateUserAttributesRequestMarshaller;-><init>()V

    .line 15
    invoke-virtual {v4, v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateUserAttributesRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 16
    move-object v0, v2

    check-cast v0, Lcom/amazonaws/DefaultRequest;

    invoke-virtual {v0, p2}, Lcom/amazonaws/DefaultRequest;->c(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    :try_start_2
    invoke-virtual {p2, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 18
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateUserAttributesResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateUserAttributesResultJsonUnmarshaller;-><init>()V

    .line 19
    new-instance v3, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v3, v0}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 20
    invoke-virtual {p0, v2, v3, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->l(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object p1

    .line 21
    iget-object p1, p1, Lcom/amazonaws/Response;->a:Ljava/lang/Object;

    .line 22
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserAttributesResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    invoke-virtual {p2, p3}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 24
    invoke-virtual {p0, p2, v2, v1}, Lcom/amazonaws/AmazonWebServiceClient;->e(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Z)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 25
    :try_start_3
    sget-object p3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p2, p3}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 26
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 27
    :goto_0
    sget-object p3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p2, p3}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 28
    invoke-virtual {p0, p2, v2, v1}, Lcom/amazonaws/AmazonWebServiceClient;->e(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Z)V

    .line 29
    throw p1

    .line 30
    :cond_0
    new-instance p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string p1, "user is not authenticated"

    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "user is not authenticated"

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/amazonaws/services/cognitoidentityprovider/model/GlobalSignOutRequest;

    invoke-direct {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GlobalSignOutRequest;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->s()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    .line 6
    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoUserToken;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/GlobalSignOutRequest;->setAccessToken(Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    check-cast p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->j(Lcom/amazonaws/services/cognitoidentityprovider/model/GlobalSignOutRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/GlobalSignOutResult;

    return-void

    .line 9
    :cond_0
    new-instance p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_1
    new-instance p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeResult;
    .locals 7

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;->withUsername(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;->withClientId(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;->withSecretHash(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;->withClientMetadata(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 8
    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->g:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->x()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;->setUserContextData(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)V

    if-eqz v0, :cond_0

    .line 10
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;-><init>()V

    .line 11
    invoke-virtual {v1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;->setAnalyticsEndpointId(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;->setAnalyticsMetadata(Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;)V

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    check-cast p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;

    .line 14
    invoke-virtual {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->d(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 15
    iget-object v1, v0, Lcom/amazonaws/http/ExecutionContext;->a:Lcom/amazonaws/util/AWSRequestMetrics;

    .line 16
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->f(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 17
    :try_start_0
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->f(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :try_start_1
    new-instance v6, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResendConfirmationCodeRequestMarshaller;

    invoke-direct {v6}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResendConfirmationCodeRequestMarshaller;-><init>()V

    .line 19
    invoke-virtual {v6, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResendConfirmationCodeRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;)Lcom/amazonaws/Request;

    move-result-object v4

    .line 20
    move-object p1, v4

    check-cast p1, Lcom/amazonaws/DefaultRequest;

    invoke-virtual {p1, v1}, Lcom/amazonaws/DefaultRequest;->c(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    :try_start_2
    invoke-virtual {v1, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 22
    new-instance p1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResendConfirmationCodeResultJsonUnmarshaller;

    invoke-direct {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResendConfirmationCodeResultJsonUnmarshaller;-><init>()V

    .line 23
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, p1}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 24
    invoke-virtual {p0, v4, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->l(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object p1

    .line 25
    iget-object p1, p1, Lcom/amazonaws/Response;->a:Ljava/lang/Object;

    .line 26
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 28
    invoke-virtual {p0, v1, v4, v3}, Lcom/amazonaws/AmazonWebServiceClient;->e(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Z)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 29
    :try_start_3
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 30
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 31
    :goto_0
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 32
    invoke-virtual {p0, v1, v4, v3}, Lcom/amazonaws/AmazonWebServiceClient;->e(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Z)V

    .line 33
    throw p1
.end method

.method public static e(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;
    .locals 8

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "HmacSHA256"

    const-string v1, "USERNAME"

    .line 2
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "USER_ID_FOR_SRP"

    .line 3
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "SRP_B"

    .line 4
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "SALT"

    .line 5
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "SECRET_BLOCK"

    .line 6
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 7
    iput-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    .line 8
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 9
    iget-object v6, v6, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a:Ljava/lang/String;

    .line 10
    iget-object v7, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    invoke-static {v2, v6, v7}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    .line 11
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Ljava/lang/String;

    invoke-static {v2, v6, v7}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoSecretHash;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    .line 12
    new-instance v2, Ljava/math/BigInteger;

    const/16 v6, 0x10

    invoke-direct {v2, v4, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 13
    sget-object v4, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->d:Ljava/math/BigInteger;

    .line 14
    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v7, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 15
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 16
    invoke-virtual {p6, v3, p3, v2, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object p3

    .line 17
    new-instance p6, Ljava/util/Date;

    invoke-direct {p6}, Ljava/util/Date;-><init>()V

    .line 18
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 19
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v4, p3, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 20
    invoke-virtual {v2, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 21
    iget-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 22
    iget-object p3, p3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a:Ljava/lang/String;

    const-string v0, "_"

    const/4 v4, 0x2

    .line 23
    invoke-virtual {p3, v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    aget-object p3, p3, v0

    sget-object v0, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    invoke-virtual {v2, p3}, Ljavax/crypto/Mac;->update([B)V

    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    invoke-virtual {v2, p3}, Ljavax/crypto/Mac;->update([B)V

    .line 25
    invoke-static {p2}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p3

    .line 26
    invoke-virtual {v2, p3}, Ljavax/crypto/Mac;->update([B)V

    .line 27
    new-instance p3, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE MMM d HH:mm:ss z yyyy"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p3, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v3, "UTC"

    .line 28
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 29
    invoke-virtual {p3, p6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    .line 30
    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p6

    .line 31
    invoke-virtual {v2, p6}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "PASSWORD_CLAIM_SECRET_BLOCK"

    .line 33
    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance p2, Ljava/lang/String;

    .line 35
    invoke-static {p6}, Lcom/amazonaws/util/Base64;->encode([B)[B

    move-result-object p6

    invoke-direct {p2, p6, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p6, "PASSWORD_CLAIM_SIGNATURE"

    .line 36
    invoke-virtual {v2, p6, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "TIMESTAMP"

    .line 37
    invoke-virtual {v2, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    invoke-virtual {v2, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    const-string p3, "DEVICE_KEY"

    invoke-virtual {v2, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    const-string p3, "SECRET_HASH"

    invoke-virtual {v2, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance p2, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    invoke-direct {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;-><init>()V

    .line 42
    invoke-virtual {p2, p4}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->setChallengeName(Ljava/lang/String;)V

    .line 43
    iget-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->setClientId(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2, p5}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->setSession(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p2, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->setChallengeResponses(Ljava/util/Map;)V

    .line 46
    invoke-virtual {p2, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->setClientMetadata(Ljava/util/Map;)V

    .line 47
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 48
    iget-object p1, p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->g:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 49
    new-instance p3, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    invoke-direct {p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;-><init>()V

    .line 50
    invoke-virtual {p3, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;->setAnalyticsEndpointId(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2, p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->setAnalyticsMetadata(Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;)V

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->x()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->setUserContextData(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)V

    return-object p2

    :catch_0
    move-exception p0

    .line 53
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;

    const-string p2, "SRP error"

    invoke-direct {p1, p2, p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 54
    :cond_1
    new-instance p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;

    const-string p1, "SRP error, B cannot be zero"

    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    new-instance p3, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;

    invoke-direct {p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;-><init>()V

    .line 3
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->getChallengeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->setChallengeName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->getSession()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->setSession(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->getAuthenticationResult()Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->setAuthenticationResult(Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;)V

    .line 6
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->getChallengeParameters()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->setChallengeParameters(Ljava/util/Map;)V

    .line 7
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->A(Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$36;

    invoke-direct {p1, p4, p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$36;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Ljava/lang/Exception;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static g(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordResult;
    .locals 7

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordRequest;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordRequest;->setClientId(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordRequest;->setSecretHash(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordRequest;->setUsername(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->x()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordRequest;->setUserContextData(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)V

    .line 7
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordRequest;->setClientMetadata(Ljava/util/Map;)V

    .line 8
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 9
    iget-object p1, p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->g:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 10
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;-><init>()V

    .line 11
    invoke-virtual {v1, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;->setAnalyticsEndpointId(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordRequest;->setAnalyticsMetadata(Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;)V

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    check-cast p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;

    .line 14
    invoke-virtual {p0, v0}, Lcom/amazonaws/AmazonWebServiceClient;->d(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object p1

    .line 15
    iget-object v1, p1, Lcom/amazonaws/http/ExecutionContext;->a:Lcom/amazonaws/util/AWSRequestMetrics;

    .line 16
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->f(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 17
    :try_start_0
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->f(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :try_start_1
    new-instance v6, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ForgotPasswordRequestMarshaller;

    invoke-direct {v6}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ForgotPasswordRequestMarshaller;-><init>()V

    invoke-virtual {v6, v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ForgotPasswordRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordRequest;)Lcom/amazonaws/Request;

    move-result-object v4

    .line 19
    move-object v0, v4

    check-cast v0, Lcom/amazonaws/DefaultRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/DefaultRequest;->c(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    :try_start_2
    invoke-virtual {v1, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 21
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ForgotPasswordResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ForgotPasswordResultJsonUnmarshaller;-><init>()V

    .line 22
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v0}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 23
    invoke-virtual {p0, v4, v5, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->l(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object p1

    .line 24
    iget-object p1, p1, Lcom/amazonaws/Response;->a:Ljava/lang/Object;

    .line 25
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 27
    invoke-virtual {p0, v1, v4, v3}, Lcom/amazonaws/AmazonWebServiceClient;->e(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Z)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 28
    :try_start_3
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 29
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    :goto_0
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 31
    invoke-virtual {p0, v1, v4, v3}, Lcom/amazonaws/AmazonWebServiceClient;->e(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Z)V

    .line 32
    throw p1
.end method

.method public static h(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ChangePasswordRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/ChangePasswordRequest;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ChangePasswordRequest;->setPreviousPassword(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ChangePasswordRequest;->setProposedPassword(Ljava/lang/String;)V

    .line 6
    iget-object p1, p3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    .line 7
    iget-object p1, p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoUserToken;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ChangePasswordRequest;->setAccessToken(Ljava/lang/String;)V

    .line 9
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    check-cast p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;

    .line 10
    invoke-virtual {p0, v0}, Lcom/amazonaws/AmazonWebServiceClient;->d(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object p1

    .line 11
    iget-object p2, p1, Lcom/amazonaws/http/ExecutionContext;->a:Lcom/amazonaws/util/AWSRequestMetrics;

    .line 12
    sget-object p3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p2, p3}, Lcom/amazonaws/util/AWSRequestMetrics;->f(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 13
    :try_start_0
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p2, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->f(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ChangePasswordRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ChangePasswordRequestMarshaller;-><init>()V

    invoke-virtual {v4, v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ChangePasswordRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ChangePasswordRequest;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 15
    move-object v0, v2

    check-cast v0, Lcom/amazonaws/DefaultRequest;

    invoke-virtual {v0, p2}, Lcom/amazonaws/DefaultRequest;->c(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    :try_start_2
    invoke-virtual {p2, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 17
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ChangePasswordResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ChangePasswordResultJsonUnmarshaller;-><init>()V

    .line 18
    new-instance v3, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v3, v0}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 19
    invoke-virtual {p0, v2, v3, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->l(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object p1

    .line 20
    iget-object p1, p1, Lcom/amazonaws/Response;->a:Ljava/lang/Object;

    .line 21
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/ChangePasswordResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    invoke-virtual {p2, p3}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 23
    invoke-virtual {p0, p2, v2, v1}, Lcom/amazonaws/AmazonWebServiceClient;->e(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Z)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 24
    :try_start_3
    sget-object p3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p2, p3}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 25
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 26
    :goto_0
    sget-object p3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p2, p3}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 27
    invoke-virtual {p0, p2, v2, v1}, Lcom/amazonaws/AmazonWebServiceClient;->e(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Z)V

    .line 28
    throw p1

    .line 29
    :cond_0
    new-instance p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string p1, "user is not authenticated"

    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static i(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/services/cognitoidentityprovider/model/VerifyUserAttributeResult;
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/VerifyUserAttributeRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/VerifyUserAttributeRequest;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/VerifyUserAttributeRequest;->setAttributeName(Ljava/lang/String;)V

    .line 5
    iget-object p1, p3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    .line 6
    iget-object p1, p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoUserToken;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/VerifyUserAttributeRequest;->setAccessToken(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/VerifyUserAttributeRequest;->setCode(Ljava/lang/String;)V

    .line 9
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    check-cast p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;

    .line 10
    invoke-virtual {p0, v0}, Lcom/amazonaws/AmazonWebServiceClient;->d(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object p1

    .line 11
    iget-object p2, p1, Lcom/amazonaws/http/ExecutionContext;->a:Lcom/amazonaws/util/AWSRequestMetrics;

    .line 12
    sget-object p3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p2, p3}, Lcom/amazonaws/util/AWSRequestMetrics;->f(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 13
    :try_start_0
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p2, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->f(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/VerifyUserAttributeRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/VerifyUserAttributeRequestMarshaller;-><init>()V

    .line 15
    invoke-virtual {v4, v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/VerifyUserAttributeRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/VerifyUserAttributeRequest;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 16
    move-object v0, v2

    check-cast v0, Lcom/amazonaws/DefaultRequest;

    invoke-virtual {v0, p2}, Lcom/amazonaws/DefaultRequest;->c(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    :try_start_2
    invoke-virtual {p2, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 18
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/VerifyUserAttributeResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/VerifyUserAttributeResultJsonUnmarshaller;-><init>()V

    .line 19
    new-instance v3, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v3, v0}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 20
    invoke-virtual {p0, v2, v3, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->l(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object p1

    .line 21
    iget-object p1, p1, Lcom/amazonaws/Response;->a:Ljava/lang/Object;

    .line 22
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/VerifyUserAttributeResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    invoke-virtual {p2, p3}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 24
    invoke-virtual {p0, p2, v2, v1}, Lcom/amazonaws/AmazonWebServiceClient;->e(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Z)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 25
    :try_start_3
    sget-object p3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p2, p3}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 26
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 27
    :goto_0
    sget-object p3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p2, p3}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 28
    invoke-virtual {p0, p2, v2, v1}, Lcom/amazonaws/AmazonWebServiceClient;->e(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Z)V

    .line 29
    throw p1

    .line 30
    :cond_0
    new-instance p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string p1, "user is not authenticated"

    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A(Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;",
            "Z)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    move-object v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    move/from16 v8, p4

    .line 1
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$26;

    invoke-direct {v0, v12}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$26;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    if-nez p2, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->getChallengeParameters()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->J(Ljava/util/Map;)V

    .line 3
    invoke-virtual/range {p2 .. p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->getChallengeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceGroupKey"

    const-string v2, "DeviceSecret"

    const-string v3, "Error accessing SharedPreferences"

    const/4 v4, 0x0

    if-nez v0, :cond_3

    .line 4
    invoke-virtual/range {p2 .. p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->getAuthenticationResult()Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->t(Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v5

    .line 6
    invoke-virtual {p0, v5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V

    .line 7
    invoke-virtual/range {p2 .. p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->getAuthenticationResult()Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->getNewDeviceMetadata()Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;

    move-result-object v6

    if-nez v6, :cond_1

    .line 9
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$27;

    invoke-direct {v0, v12, v5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$27;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V

    goto/16 :goto_7

    .line 10
    :cond_1
    invoke-virtual {v6}, Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;->getDeviceKey()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {v6}, Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;->getDeviceGroupKey()Ljava/lang/String;

    move-result-object v7

    .line 12
    sget-object v8, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a:Lcom/amazonaws/logging/Log;

    .line 13
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 14
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    .line 15
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 16
    new-instance v11, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;

    invoke-direct {v11, v7, v0, v9}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;

    .line 17
    iget-object v0, v11, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->a:Ljava/math/BigInteger;

    .line 18
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 19
    sget-object v7, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;

    .line 20
    iget-object v7, v7, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->b:Ljava/math/BigInteger;

    .line 21
    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    .line 22
    new-instance v11, Ljava/lang/String;

    invoke-static {v0}, Lcom/amazonaws/util/Base64;->encode([B)[B

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "salt"

    invoke-virtual {v8, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v11, Ljava/lang/String;

    invoke-static {v7}, Lcom/amazonaws/util/Base64;->encode([B)[B

    move-result-object v7

    invoke-direct {v11, v7}, Ljava/lang/String;-><init>([B)V

    const-string v7, "verifier"

    invoke-virtual {v8, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "secret"

    .line 24
    invoke-virtual {v8, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v9, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceResult;

    invoke-direct {v9}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceResult;-><init>()V

    .line 26
    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v13}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceResult;->setUserConfirmationNecessary(Ljava/lang/Boolean;)V

    .line 27
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->s()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v9

    .line 28
    invoke-virtual {v6}, Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;->getDeviceKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 29
    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 30
    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 31
    invoke-virtual {p0, v9, v13, v7, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->m(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceResult;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 32
    iget-object v0, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    iget-object v7, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 33
    iget-object v7, v7, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a:Ljava/lang/String;

    .line 34
    invoke-virtual {v6}, Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;->getDeviceKey()Ljava/lang/String;

    move-result-object v9

    iget-object v13, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    .line 35
    :try_start_1
    invoke-static {v13, v0, v7}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    move-result-object v0

    const-string v7, "DeviceKey"

    .line 36
    invoke-virtual {v0, v7, v9}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 37
    sget-object v7, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {v7, v3, v0}, Lcom/amazonaws/logging/Log;->g(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 38
    :goto_0
    iget-object v0, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    iget-object v7, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 39
    iget-object v7, v7, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a:Ljava/lang/String;

    .line 40
    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    .line 41
    :try_start_2
    invoke-static {v9, v0, v7}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    move-result-object v0

    .line 42
    invoke-virtual {v0, v2, v8}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 43
    sget-object v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {v2, v3, v0}, Lcom/amazonaws/logging/Log;->g(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 44
    :goto_1
    iget-object v0, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    iget-object v2, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 45
    iget-object v2, v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a:Ljava/lang/String;

    .line 46
    invoke-virtual {v6}, Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;->getDeviceGroupKey()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    .line 47
    :try_start_3
    invoke-static {v8, v0, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v1, v7}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 49
    sget-object v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {v1, v3, v0}, Lcom/amazonaws/logging/Log;->g(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception v0

    .line 50
    sget-object v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Lcom/amazonaws/logging/Log;

    const-string v2, "Device confirmation failed: "

    invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->g(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_2
    if-eqz v4, :cond_2

    .line 51
    invoke-virtual {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceResult;->isUserConfirmationNecessary()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    .line 53
    invoke-virtual {v6}, Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;->getDeviceKey()Ljava/lang/String;

    invoke-direct {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;-><init>()V

    .line 54
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$28;

    invoke-direct {v1, v12, v5, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$28;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V

    goto/16 :goto_6

    .line 55
    :cond_2
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$29;

    invoke-direct {v0, v12, v5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$29;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V

    goto/16 :goto_7

    :cond_3
    const-string v5, "PASSWORD_VERIFIER"

    .line 56
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 57
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$30;

    invoke-direct {v0, v12}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$30;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    return-object v0

    :cond_4
    const-string v5, "SMS_MFA"

    .line 58
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "SOFTWARE_TOKEN_MFA"

    .line 59
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto/16 :goto_5

    :cond_5
    const-string v5, "SELECT_MFA_TYPE"

    .line 60
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 61
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChooseMfaContinuation;

    iget-object v3, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    iget-object v4, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    iget-object v5, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    iget-object v6, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChooseMfaContinuation;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 62
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$32;

    invoke-direct {v1, v12, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$32;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChooseMfaContinuation;)V

    goto/16 :goto_6

    :cond_6
    const-string v5, "MFA_SETUP"

    .line 63
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 64
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/RegisterMfaContinuation;

    iget-object v3, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    iget-object v4, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    iget-object v5, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    iget-object v6, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/RegisterMfaContinuation;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 65
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$33;

    invoke-direct {v1, v12, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$33;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/RegisterMfaContinuation;)V

    goto/16 :goto_6

    :cond_7
    const-string v5, "DEVICE_SRP_AUTH"

    .line 66
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 67
    iget-object v0, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    iget-object v6, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 68
    iget-object v6, v6, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a:Ljava/lang/String;

    .line 69
    iget-object v7, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    .line 70
    sget-object v9, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a:Lcom/amazonaws/logging/Log;

    .line 71
    :try_start_4
    invoke-static {v7, v0, v6}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 72
    invoke-virtual {v0, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 73
    invoke-virtual {v0, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v6, v0

    goto :goto_3

    :catch_4
    move-exception v0

    .line 74
    sget-object v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {v2, v3, v0}, Lcom/amazonaws/logging/Log;->g(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_8
    move-object v6, v4

    .line 75
    :goto_3
    iget-object v0, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    iget-object v2, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 76
    iget-object v2, v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a:Ljava/lang/String;

    .line 77
    iget-object v7, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    .line 78
    :try_start_5
    invoke-static {v7, v0, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 79
    invoke-virtual {v0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 80
    invoke-virtual {v0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    :catch_5
    move-exception v0

    .line 81
    sget-object v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {v1, v3, v0}, Lcom/amazonaws/logging/Log;->g(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_9
    move-object v0, v4

    .line 82
    :goto_4
    new-instance v7, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;

    invoke-direct {v7, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;-><init>(Ljava/lang/String;)V

    .line 83
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;-><init>()V

    .line 84
    iget-object v2, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->setClientId(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1, v5}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->setChallengeName(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1, v11}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->setClientMetadata(Ljava/util/Map;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->getSession()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->setSession(Ljava/lang/String;)V

    .line 88
    iget-object v2, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    const-string v3, "USERNAME"

    invoke-virtual {v1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->addChallengeResponsesEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    .line 89
    iget-object v2, v7, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->b:Ljava/math/BigInteger;

    const/16 v3, 0x10

    .line 90
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SRP_A"

    .line 91
    invoke-virtual {v1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->addChallengeResponsesEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    .line 92
    iget-object v2, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    const-string v3, "DEVICE_KEY"

    invoke-virtual {v1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->addChallengeResponsesEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    .line 93
    iget-object v2, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    const-string v3, "SECRET_HASH"

    invoke-virtual {v1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->addChallengeResponsesEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    .line 94
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->x()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->setUserContextData(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)V

    .line 95
    :try_start_6
    iget-object v2, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 96
    check-cast v2, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;

    move-result-object v3

    const-string v1, "DEVICE_PASSWORD_VERIFIER"

    .line 97
    invoke-virtual {v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->getChallengeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v1, p0

    move-object/from16 v2, p1

    move-object v4, v6

    move-object v5, v0

    move-object v6, v7

    .line 98
    invoke-virtual/range {v1 .. v6}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->q(Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    move-result-object v0

    .line 99
    iget-object v1, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 100
    check-cast v1, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;

    move-result-object v0

    .line 101
    invoke-virtual {p0, v11, v0, v12, v8}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->A(Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    move-result-object v0

    goto/16 :goto_7

    .line 102
    :cond_a
    invoke-virtual {p0, v11, v3, v12, v8}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->A(Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    move-result-object v0
    :try_end_6
    .catch Lcom/amazonaws/services/cognitoidentityprovider/model/NotAuthorizedException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_7

    :catch_6
    move-exception v0

    .line 103
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$39;

    invoke-direct {v1, v12, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$39;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Ljava/lang/Exception;)V

    goto/16 :goto_6

    .line 104
    :catch_7
    iget-object v0, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    iget-object v1, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 105
    iget-object v1, v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a:Ljava/lang/String;

    .line 106
    iget-object v2, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 107
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$38;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    move/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$38;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Ljava/util/Map;)V

    goto/16 :goto_7

    :cond_b
    const-string v1, "NEW_PASSWORD_REQUIRED"

    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 109
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;

    iget-object v3, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    iget-object v4, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    iget-object v5, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    iget-object v1, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Ljava/lang/String;

    .line 110
    invoke-static {v4, v5, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoSecretHash;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 111
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$34;

    invoke-direct {v1, v12, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$34;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;)V

    goto :goto_6

    .line 112
    :cond_c
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;

    iget-object v3, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    iget-object v4, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    iget-object v5, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    iget-object v1, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Ljava/lang/String;

    .line 113
    invoke-static {v4, v5, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoSecretHash;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 114
    iget-object v1, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->j:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    if-eqz v11, :cond_d

    .line 115
    iget-object v1, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->j:Ljava/util/HashMap;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 116
    :cond_d
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$35;

    invoke-direct {v1, v12, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$35;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)V

    goto :goto_6

    .line 117
    :cond_e
    :goto_5
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;

    iget-object v3, v10, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v4, p2

    move/from16 v5, p4

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 118
    iget-object v1, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    if-eqz v11, :cond_f

    .line 119
    iget-object v1, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 120
    :cond_f
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$31;

    invoke-direct {v1, v12, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$31;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;)V

    :goto_6
    move-object v0, v1

    :goto_7
    return-object v0
.end method

.method public final B(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;",
            "Z)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 1
    new-instance v4, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;

    invoke-direct {v4, p4, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;-><init>(ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance p3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)V

    if-eqz p4, :cond_0

    .line 4
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$7;

    invoke-direct {p1, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$7;-><init>(Ljava/lang/Runnable;)V

    return-object p1

    :cond_0
    return-object p3
.end method

.method public final C()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;
    .locals 9

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CognitoIdentityProvider."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".idToken"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".accessToken"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".refreshToken"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iget-object v3, v3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual {v3, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v3, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    new-instance v5, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;

    invoke-direct {v5, v8}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v8, "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJiMTIzNDU2Ny1jZDEyLTEyZGEtMTIzNC1lYWYxZTJiYTM0NTYiLCJpc3MiOiJodHRwczovL2NvZ25pdG8taWRwLnVzLWVhc3QtMS5hbWF6b25hd3MuY29tL3VzLWVhc3QtMV96RURmWEJ6NGIiLCJhdWQiOiIxaTJmbzNobTRkNW02YmY3ODl2ajAxcTJlYSIsInRva2VuX3VzZSI6ImlkIiwiYXV0aF90aW1lIjoxNzgyODY0MDAwLjAsImlhdCI6MTc4Mjg2NDAwMC4wLCJleHAiOjIyMjQ3MTM2MDAuMCwianRpIjoiZjZiMGNjZTUtZjc3Ny00NmU5LThkZTAtN2VhNzllYjY1NDYwIiwib3JpZ2luX2p0aSI6IjEyZTNhNGI1LWJlNjctODlmMC1iMWIyLTNiZjQ1NmI3ODkwMSIsImV2ZW50X2lkIjoiMTJkMzRhYjUtNjc4OS0wMTJhLWJiYzMtNDVjNmY3ZmQ4Y2Y5IiwiY29nbml0bzpncm91cHMiOlsiRlJFRVVTRVIiXSwiY29nbml0bzpyb2xlcyI6WyJhcm46YXdzOmlhbTo6MzkxOTU5MjE4MjU3OnJvbGUvQW1hem9uRVNDb2duaXRvQWNjZXNzIl0sImNvZ25pdG86dXNlcm5hbWUiOiJiMTIzNDU2Ny1jZDEyLTEyZGEtMTIzNC1lYWYxZTJiYTM0NTYiLCJjdXN0b206cm9sZSI6IkZSRUVVU0VSIiwiZ2VuZGVyIjoiTWFsZSIsIm5pY2tuYW1lIjoiaW5maW5pdHkxMjM0NTY3IiwiZW1haWwiOiJpbmZpbml0eUBub3doZXJlLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwic29jaWFsX2xvZ2luIjoibm8iLCJpZGVudGl0aWVzIjpbeyJ1c2VySWQiOiIxMjM0NTY3ODkwMTIzNDU2Nzg5MDEiLCJwcm92aWRlck5hbWUiOiJHb29nbGUiLCJwcm92aWRlclR5cGUiOiJHb29nbGUiLCJpc3N1ZXIiOm51bGwsInByaW1hcnkiOiJmYWxzZSIsImRhdGVDcmVhdGVkIjoiMTc3OTEyMTIyMTY2NyJ9XSwiY3VzdG9tOmdvb2dsZV9wcm9maWxlX3BpYyI6Imh0dHBzOi8vbGgzLmdvb2dsZXVzZXJjb250ZW50LmNvbS9hL0FDZzhvY0lRUTZ4V3FIZTMwdGtBQkhsb1FFa1BQYy13SmJycmxWREdpRklzdEgwNWZBYz1zOTYtYyIsImN1c3RvbTpnb29nbGVfbmFtZSI6IkluZmluaXR5IiwiY3VzdG9tOmdvb2dsZV9saW5rZWQiOiJ5ZXMiLCJjdXN0b206bGlua2VkX2FjY291bnQiOiJ5ZXMiLCJjdXN0b206cHJpbWFyeV9hdHRyIjoiZW1haWwiLCJjdXN0b206c3FzX2FjY2VzcyI6IkFTSUFWV1FVWEJCWkk2WVFQSjU2IiwiY3VzdG9tOnNxc19zZWNyZXQiOiJuT21ZKzI3K1E2ZFlXVnJ5dXJTTXJEYU0reXJnNm85WkFWRGplNFFwIiwiY3VzdG9tOnNxc19leHBpcnkiOiIyMDI2LTA3LTMxIDEzOjIyOjAxIiwiY3VzdG9tOnNxc19zZXNzaW9uIjoiRndvR1pYSXZZWGR6RVBiLy8vLy8vLy93RWFERWMvZzdBa1p2dWpJMEFjSGlLdUFRY1RibVBWbzN6TDZzSGhLZ0U0dVdMTGZyZk84Y2pjT3ZDeUM0NXBoRTlUc0hhVGtMTjFqUFhPcGExdjM1Sm1LM2tWYjJ4NDFDbWM5YTNIa1h0aSBiOXJqOTRnbktydVB3NXlmV1ZqRWVUK09JRGRqS3ZzN1Q0SUZUMW5RVEhrK0VyL1h1R3lJTEtXKzBrSWlHSjgzczkzRUE3cHMrdlBwbWd2NmZSZE1pSFNZV0pwMkRrRWsrd3FCbUtSWGdUb2pWQ0sxR2E2YUd4cC9qUVdWVmZGWCsvZXZ3eEFZdWhTTENpU2hXVy9VeENqcHByTFRCakl0Ui9jY2d1WG1Ld1NYaHMrVjdza28wUk4xaTYzZ29aVlloUEYgQ2NFSExLTW5Pak1HZDBtQUNGZTI4WFJhUSIsImN1c3RvbTp2YWxpZGF0ZWRfZW1haWwiOiJpbmZpbml0eUBub3doZXJlLmNvbSJ9.7tD1tFB3jYCQLFuBmmWPUywD0xE8SznZ-2Tpy_9Udp4"

    new-instance v5, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;

    invoke-direct {v5, v8}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v8}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v6, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    invoke-direct {v6, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJiMTIzNDU2Ny1jZDEyLTEyZGEtMTIzNC1lYWYxZTJiYTM0NTYiLCJpc3MiOiJodHRwczovL2NvZ25pdG8taWRwLnVzLWVhc3QtMS5hbWF6b25hd3MuY29tL3VzLWVhc3QtMV96RURmWEJ6NGIiLCJjbGllbnRfaWQiOiIxaTJmbzNobTRkNW02YmY3ODl2ajAxcTJlYSIsInRva2VuX3VzZSI6ImFjY2VzcyIsInNjb3BlIjoiYXdzLmNvZ25pdG8uc2lnbmluLnVzZXIuYWRtaW4iLCJhdXRoX3RpbWUiOjE3ODI4NjQwMDAuMCwiaWF0IjoxNzgyODY0MDAwLjAsImV4cCI6MjIyNDcxMzYwMC4wLCJqdGkiOiIxMmUzYTRiNS1iZTY3LTg5ZjAtYjFiMi0zYmY0NTZiNzg5MDEiLCJvcmlnaW5fanRpIjoiMTJlM2E0YjUtYmU2Ny04OWYwLWIxYjItM2JmNDU2Yjc4OTAxIiwiZXZlbnRfaWQiOiIxMmQzNGFiNS02Nzg5LTAxMmEtYmJjMy00NWM2ZjdmZDhjZjkiLCJjb2duaXRvOmdyb3VwcyI6WyJGUkVFVVNFUiJdLCJ1c2VybmFtZSI6ImIxMjM0NTY3LWNkMTItMTJkYS0xMjM0LWVhZjFlMmJhMzQ1NiIsImRldmljZV9rZXkiOiJ1cy1lYXN0LTFfZmUyYzVkZWItZDU2YS00NDdhLWE0Y2UtZWJlMTJjODc3MDIyIn0.z2hQc6P0ujiNVh06sH0AUpWwFX-WtrvrMit-ghcXQ24"

    new-instance v6, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    invoke-direct {v6, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v3, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v7, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;

    invoke-direct {v7, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v0, "eyJjdHkiOiAiSldUIiwgImVuYyI6ICJBMjU2R0NNIiwgImFsZyI6ICJSU0EtT0FFUCJ9.D6GNnxL6WtzWtBXoKB3FSp346afTqWrkHVb5mmK_d-Q.kmuHe-8TPKAnS_fM.eyJzdWIiOiAiYjEyMzQ1NjctY2QxMi0xMmRhLTEyMzQtZWFmMWUyYmEzNDU2IiwgImNsaWVudF9pZCI6ICIxaTJmbzNobTRkNW02YmY3ODl2ajAxcTJlYSIsICJhdXRoX3RpbWUiOiAxNzgyODY0MDAwLjAsICJkZXZpY2Vfa2V5IjogInVzLWVhc3QtMV9mZTJjNWRlYi1kNTZhLTQ0N2EtYTRjZS1lYmUxMmM4NzcwMjIiLCAiaWF0IjogMTc4Mjg2NDAwMC4wLCAiZXhwIjogMjIyNDcxMzYwMC4wfQ.cd_1SRyTRsriwcyOMHjuNw"

    new-instance v7, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;

    invoke-direct {v7, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    invoke-direct {v0, v5, v6, v7}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Lcom/amazonaws/logging/Log;

    const-string v2, "Error while reading the tokens from the persistent store."

    invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->g(Ljava/lang/Object;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;)V

    return-object v0
.end method

.method public final D(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;
    .locals 4

    .line 1
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;-><init>()V

    .line 2
    iget-object v1, p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;

    .line 3
    iget-object v1, v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoUserToken;->a:Ljava/lang/String;

    const-string v2, "REFRESH_TOKEN"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->addAuthParametersEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    .line 5
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 8
    iget-object v2, v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a:Ljava/lang/String;

    .line 9
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 11
    iget-object v2, v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a:Ljava/lang/String;

    .line 12
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    .line 13
    invoke-static {v1, v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    .line 14
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    const-string v2, "DEVICE_KEY"

    invoke-virtual {v0, v2, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->addAuthParametersEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    .line 15
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Ljava/lang/String;

    const-string v2, "SECRET_HASH"

    invoke-virtual {v0, v2, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->addAuthParametersEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    .line 16
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->setClientId(Ljava/lang/String;)V

    const-string v1, "REFRESH_TOKEN_AUTH"

    .line 17
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->setAuthFlow(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 19
    iget-object v1, v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->g:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 20
    new-instance v2, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    invoke-direct {v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;-><init>()V

    .line 21
    invoke-virtual {v2, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;->setAnalyticsEndpointId(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->setAnalyticsMetadata(Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;)V

    .line 23
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->x()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->setUserContextData(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)V

    .line 24
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 25
    check-cast v1, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->k(Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->getAuthenticationResult()Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 27
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->getAuthenticationResult()Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

    move-result-object v0

    .line 28
    iget-object p1, p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;

    .line 29
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->t(Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object p1

    return-object p1

    .line 30
    :cond_3
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string v0, "user is not authenticated"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final E(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;)V
    .locals 2

    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;-><init>(Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;)V

    invoke-interface {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;)V

    return-void
.end method

.method public final F(Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;",
            "Z)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->getChallengeResponses()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->getChallengeResponses()Ljava/util/Map;

    move-result-object v0

    const-string v1, "DEVICE_KEY"

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 5
    check-cast v0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;

    invoke-virtual {v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;

    move-result-object p2

    .line 6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->A(Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazonaws/services/cognitoidentityprovider/model/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$23;

    invoke-direct {p2, p3, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$23;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Ljava/lang/Exception;)V

    return-object p2

    :catch_1
    move-exception p2

    .line 8
    invoke-virtual {p2}, Lcom/amazonaws/AmazonServiceException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 10
    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    invoke-static {p2, v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 12
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$21;

    move-object v2, p2

    move-object v3, p0

    move-object v4, p0

    move v5, p4

    move-object v6, p3

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$21;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Ljava/util/Map;)V

    return-object p2

    .line 13
    :cond_1
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$22;

    invoke-direct {p1, p3, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$22;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/services/cognitoidentityprovider/model/ResourceNotFoundException;)V

    return-object p1
.end method

.method public final G(Ljava/util/Map;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;",
            "Z)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-virtual {p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->getChallengeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SMS_MFA"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SMS_MFA_CODE"

    .line 4
    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->getChallengeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SOFTWARE_TOKEN_MFA"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SOFTWARE_TOKEN_MFA_CODE"

    .line 6
    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    const-string v2, "USERNAME"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    const-string v2, "DEVICE_KEY"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    const-string v2, "SECRET_HASH"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->setClientId(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->getSession()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->setSession(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->getChallengeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->setChallengeName(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->setChallengeResponses(Ljava/util/Map;)V

    .line 14
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->x()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->setUserContextData(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)V

    .line 15
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->setClientMetadata(Ljava/util/Map;)V

    .line 16
    invoke-virtual {p0, p1, v0, p4, p5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->F(Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method public final H()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 2
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->l()V

    return-void
.end method

.method public final I(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/UpdateAttributesHandler;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/UpdateAttributesHandler;->a(Ljava/util/List;)V

    return-void
.end method

.method public final J(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "USERNAME"

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 5
    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoSecretHash;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final K(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .locals 0

    invoke-interface {p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->onSuccess()V

    return-void
.end method

.method public final j(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V
    .locals 7

    const-string v0, "."

    const-string v1, "CognitoIdentityProvider."

    .line 1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".idToken"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".accessToken"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".refreshToken"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".LastAuthUser"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iget-object v4, v4, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 6
    iget-object v5, p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 7
    iget-object v5, v5, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoUserToken;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v5, v6

    .line 8
    :goto_0
    invoke-virtual {v4, v2, v5}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iget-object v2, v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 10
    iget-object v4, p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    if-eqz v4, :cond_1

    .line 11
    iget-object v4, v4, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoUserToken;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v4, v6

    .line 12
    :goto_1
    invoke-virtual {v2, v3, v4}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iget-object v2, v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 14
    iget-object p1, p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;

    if-eqz p1, :cond_2

    .line 15
    iget-object v6, p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoUserToken;->a:Ljava/lang/String;

    .line 16
    :cond_2
    invoke-virtual {v2, v0, v6}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iget-object p1, p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 18
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Lcom/amazonaws/logging/Log;

    const-string v1, "Error while writing to SharedPreferences."

    invoke-interface {v0, v1, p1}, Lcom/amazonaws/logging/Log;->g(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .locals 0

    invoke-interface {p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->onSuccess()V

    return-void
.end method

.method public final l()V
    .locals 7

    :try_start_0
    const-string v0, "CognitoIdentityProvider.%s.%s.idToken"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    .line 1
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "CognitoIdentityProvider.%s.%s.accessToken"

    new-array v3, v1, [Ljava/lang/Object;

    .line 2
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    aput-object v6, v3, v4

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    aput-object v6, v3, v5

    .line 3
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CognitoIdentityProvider.%s.%s.refreshToken"

    new-array v1, v1, [Ljava/lang/Object;

    .line 4
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    aput-object v6, v1, v4

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    aput-object v4, v1, v5

    .line 5
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iget-object v3, v3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-virtual {v3, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->j(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-virtual {v0, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->j(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-virtual {v0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->j(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    sget-object v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Lcom/amazonaws/logging/Log;

    const-string v2, "Error while deleting from SharedPreferences"

    invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->g(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final m(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceResult;
    .locals 5

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceSecretVerifierConfigType;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceSecretVerifierConfigType;-><init>()V

    .line 3
    invoke-virtual {v1, p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceSecretVerifierConfigType;->setPasswordVerifier(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, p4}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceSecretVerifierConfigType;->setSalt(Ljava/lang/String;)V

    .line 5
    new-instance p3, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;

    invoke-direct {p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;-><init>()V

    .line 6
    iget-object p1, p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    .line 7
    iget-object p1, p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoUserToken;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {p3, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;->setAccessToken(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p3, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;->setDeviceKey(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p3, v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;->setDeviceName(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p3, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;->setDeviceSecretVerifierConfig(Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceSecretVerifierConfigType;)V

    .line 12
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;

    .line 13
    invoke-virtual {p1, p3}, Lcom/amazonaws/AmazonWebServiceClient;->d(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object p2

    .line 14
    iget-object p4, p2, Lcom/amazonaws/http/ExecutionContext;->a:Lcom/amazonaws/util/AWSRequestMetrics;

    .line 15
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p4, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->f(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 16
    :try_start_0
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p4, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->f(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :try_start_1
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmDeviceRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmDeviceRequestMarshaller;-><init>()V

    invoke-virtual {v4, p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmDeviceRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 18
    move-object p3, v2

    check-cast p3, Lcom/amazonaws/DefaultRequest;

    invoke-virtual {p3, p4}, Lcom/amazonaws/DefaultRequest;->c(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    :try_start_2
    invoke-virtual {p4, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 20
    new-instance p3, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmDeviceResultJsonUnmarshaller;

    invoke-direct {p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmDeviceResultJsonUnmarshaller;-><init>()V

    .line 21
    new-instance v3, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v3, p3}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 22
    invoke-virtual {p1, v2, v3, p2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->l(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object p2

    .line 23
    iget-object p2, p2, Lcom/amazonaws/Response;->a:Ljava/lang/Object;

    .line 24
    check-cast p2, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    invoke-virtual {p4, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 26
    invoke-virtual {p1, p4, v2, v1}, Lcom/amazonaws/AmazonWebServiceClient;->e(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Z)V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p2

    .line 27
    :try_start_3
    sget-object p3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p4, p3}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 28
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29
    :goto_0
    sget-object p3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p4, p3}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 30
    invoke-virtual {p1, p4, v2, v1}, Lcom/amazonaws/AmazonWebServiceClient;->e(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Z)V

    .line 31
    throw p2

    :cond_0
    if-nez p2, :cond_1

    .line 32
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "Device key is null"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_1
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "Device name is null"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_2
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    const-string p2, "User is not authorized"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;)V
    .locals 1

    if-eqz p4, :cond_0

    invoke-interface {p4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;->onSuccess()V

    return-void

    :cond_0
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "callback is null"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;->setUsername(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;->setClientId(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;->setSecretHash(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;->setConfirmationCode(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;->setPassword(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->x()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;->setUserContextData(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)V

    .line 8
    invoke-virtual {v0, p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;->setClientMetadata(Ljava/util/Map;)V

    .line 9
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 10
    iget-object p1, p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->g:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 11
    new-instance p2, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    invoke-direct {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;-><init>()V

    .line 12
    invoke-virtual {p2, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;->setAnalyticsEndpointId(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;->setAnalyticsMetadata(Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;)V

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;

    .line 15
    invoke-virtual {p1, v0}, Lcom/amazonaws/AmazonWebServiceClient;->d(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object p2

    .line 16
    iget-object p3, p2, Lcom/amazonaws/http/ExecutionContext;->a:Lcom/amazonaws/util/AWSRequestMetrics;

    .line 17
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p3, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->f(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 18
    :try_start_0
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p3, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->f(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :try_start_1
    new-instance v5, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmForgotPasswordRequestMarshaller;

    invoke-direct {v5}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmForgotPasswordRequestMarshaller;-><init>()V

    .line 20
    invoke-virtual {v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmForgotPasswordRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;)Lcom/amazonaws/Request;

    move-result-object v3

    .line 21
    move-object v0, v3

    check-cast v0, Lcom/amazonaws/DefaultRequest;

    invoke-virtual {v0, p3}, Lcom/amazonaws/DefaultRequest;->c(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    :try_start_2
    invoke-virtual {p3, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 23
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmForgotPasswordResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmForgotPasswordResultJsonUnmarshaller;-><init>()V

    .line 24
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, v0}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 25
    invoke-virtual {p1, v3, v4, p2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->l(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object p2

    .line 26
    iget-object p2, p2, Lcom/amazonaws/Response;->a:Ljava/lang/Object;

    .line 27
    check-cast p2, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    invoke-virtual {p3, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 29
    invoke-virtual {p1, p3, v3, v2}, Lcom/amazonaws/AmazonWebServiceClient;->e(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Z)V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p2

    .line 30
    :try_start_3
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p3, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 31
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 32
    :goto_0
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p3, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 33
    invoke-virtual {p1, p3, v3, v2}, Lcom/amazonaws/AmazonWebServiceClient;->e(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Z)V

    .line 34
    throw p2
.end method

.method public final p(Ljava/lang/String;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .locals 1

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->onSuccess()V

    return-void

    :cond_0
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string p2, "callback is null"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final q(Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;",
            ")",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;"
        }
    .end annotation

    const-string v0, "SECRET_BLOCK"

    const-string v1, "HmacSHA256"

    .line 1
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->getChallengeParameters()Ljava/util/Map;

    move-result-object v2

    const-string v3, "USERNAME"

    .line 2
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    .line 3
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->getChallengeParameters()Ljava/util/Map;

    move-result-object v4

    const-string v5, "SRP_B"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v5, 0x10

    invoke-direct {v2, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 4
    sget-object v4, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->d:Ljava/math/BigInteger;

    .line 5
    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6
    new-instance v4, Ljava/math/BigInteger;

    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->getChallengeParameters()Ljava/util/Map;

    move-result-object v6

    const-string v7, "SALT"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v4, v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 7
    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    invoke-virtual {p5, v5, p3, v2, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object p3

    .line 8
    new-instance p5, Ljava/util/Date;

    invoke-direct {p5}, Ljava/util/Date;-><init>()V

    .line 9
    :try_start_0
    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 10
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v4, p3, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 11
    invoke-virtual {v2, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 12
    sget-object p3, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p4, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p4

    invoke-virtual {v2, p4}, Ljavax/crypto/Mac;->update([B)V

    .line 13
    iget-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p4

    invoke-virtual {v2, p4}, Ljavax/crypto/Mac;->update([B)V

    .line 14
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->getChallengeParameters()Ljava/util/Map;

    move-result-object p4

    .line 15
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 16
    invoke-static {p4}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p4

    .line 17
    invoke-virtual {v2, p4}, Ljavax/crypto/Mac;->update([B)V

    .line 18
    new-instance p4, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE MMM d HH:mm:ss z yyyy"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p4, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    .line 19
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 20
    invoke-virtual {p4, p5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p4

    .line 21
    invoke-virtual {p4, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p5

    .line 22
    invoke-virtual {v2, p5}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoSecretHash;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    .line 24
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 25
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->getChallengeParameters()Ljava/util/Map;

    move-result-object v2

    .line 26
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "PASSWORD_CLAIM_SECRET_BLOCK"

    .line 27
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/lang/String;

    .line 29
    invoke-static {p5}, Lcom/amazonaws/util/Base64;->encode([B)[B

    move-result-object p5

    invoke-direct {v0, p5, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p3, "PASSWORD_CLAIM_SIGNATURE"

    .line 30
    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "TIMESTAMP"

    .line 31
    invoke-virtual {v1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    invoke-virtual {v1, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    const-string p4, "DEVICE_KEY"

    invoke-virtual {v1, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    const-string p4, "SECRET_HASH"

    invoke-virtual {v1, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance p3, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    invoke-direct {p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;-><init>()V

    .line 36
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->getChallengeName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->setChallengeName(Ljava/lang/String;)V

    .line 37
    iget-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    invoke-virtual {p3, p4}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->setClientId(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->getSession()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->setSession(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p3, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->setChallengeResponses(Ljava/util/Map;)V

    .line 40
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->x()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->setUserContextData(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)V

    .line 41
    invoke-virtual {p3, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->setClientMetadata(Ljava/util/Map;)V

    return-object p3

    :catch_0
    move-exception p1

    .line 42
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;

    const-string p3, "SRP error"

    invoke-direct {p2, p3, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 43
    :cond_0
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;

    const-string p2, "SRP error, B cannot be zero"

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final r(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;)V
    .locals 3

    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;-><init>(Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;)V

    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;

    invoke-direct {v2, p0, v0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;)V

    invoke-interface {p1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;)V

    return-void
.end method

.method public final s()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;
    .locals 5

    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->l()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "123456789012345678901"

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :cond_1
    :try_start_1
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;

    const-string v2, "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJiMTIzNDU2Ny1jZDEyLTEyZGEtMTIzNC1lYWYxZTJiYTM0NTYiLCJpc3MiOiJodHRwczovL2NvZ25pdG8taWRwLnVzLWVhc3QtMS5hbWF6b25hd3MuY29tL3VzLWVhc3QtMV96RURmWEJ6NGIiLCJhdWQiOiIxaTJmbzNobTRkNW02YmY3ODl2ajAxcTJlYSIsInRva2VuX3VzZSI6ImlkIiwiYXV0aF90aW1lIjoxNzgyODY0MDAwLjAsImlhdCI6MTc4Mjg2NDAwMC4wLCJleHAiOjIyMjQ3MTM2MDAuMCwianRpIjoiZjZiMGNjZTUtZjc3Ny00NmU5LThkZTAtN2VhNzllYjY1NDYwIiwib3JpZ2luX2p0aSI6IjEyZTNhNGI1LWJlNjctODlmMC1iMWIyLTNiZjQ1NmI3ODkwMSIsImV2ZW50X2lkIjoiMTJkMzRhYjUtNjc4OS0wMTJhLWJiYzMtNDVjNmY3ZmQ4Y2Y5IiwiY29nbml0bzpncm91cHMiOlsiRlJFRVVTRVIiXSwiY29nbml0bzpyb2xlcyI6WyJhcm46YXdzOmlhbTo6MzkxOTU5MjE4MjU3OnJvbGUvQW1hem9uRVNDb2duaXRvQWNjZXNzIl0sImNvZ25pdG86dXNlcm5hbWUiOiJiMTIzNDU2Ny1jZDEyLTEyZGEtMTIzNC1lYWYxZTJiYTM0NTYiLCJjdXN0b206cm9sZSI6IkZSRUVVU0VSIiwiZ2VuZGVyIjoiTWFsZSIsIm5pY2tuYW1lIjoiaW5maW5pdHkxMjM0NTY3IiwiZW1haWwiOiJpbmZpbml0eUBub3doZXJlLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwic29jaWFsX2xvZ2luIjoibm8iLCJpZGVudGl0aWVzIjpbeyJ1c2VySWQiOiIxMjM0NTY3ODkwMTIzNDU2Nzg5MDEiLCJwcm92aWRlck5hbWUiOiJHb29nbGUiLCJwcm92aWRlclR5cGUiOiJHb29nbGUiLCJpc3N1ZXIiOm51bGwsInByaW1hcnkiOiJmYWxzZSIsImRhdGVDcmVhdGVkIjoiMTc3OTEyMTIyMTY2NyJ9XSwiY3VzdG9tOmdvb2dsZV9wcm9maWxlX3BpYyI6Imh0dHBzOi8vbGgzLmdvb2dsZXVzZXJjb250ZW50LmNvbS9hL0FDZzhvY0lRUTZ4V3FIZTMwdGtBQkhsb1FFa1BQYy13SmJycmxWREdpRklzdEgwNWZBYz1zOTYtYyIsImN1c3RvbTpnb29nbGVfbmFtZSI6IkluZmluaXR5IiwiY3VzdG9tOmdvb2dsZV9saW5rZWQiOiJ5ZXMiLCJjdXN0b206bGlua2VkX2FjY291bnQiOiJ5ZXMiLCJjdXN0b206cHJpbWFyeV9hdHRyIjoiZW1haWwiLCJjdXN0b206c3FzX2FjY2VzcyI6IkFTSUFWV1FVWEJCWkk2WVFQSjU2IiwiY3VzdG9tOnNxc19zZWNyZXQiOiJuT21ZKzI3K1E2ZFlXVnJ5dXJTTXJEYU0reXJnNm85WkFWRGplNFFwIiwiY3VzdG9tOnNxc19leHBpcnkiOiIyMDI2LTA3LTMxIDEzOjIyOjAxIiwiY3VzdG9tOnNxc19zZXNzaW9uIjoiRndvR1pYSXZZWGR6RVBiLy8vLy8vLy93RWFERWMvZzdBa1p2dWpJMEFjSGlLdUFRY1RibVBWbzN6TDZzSGhLZ0U0dVdMTGZyZk84Y2pjT3ZDeUM0NXBoRTlUc0hhVGtMTjFqUFhPcGExdjM1Sm1LM2tWYjJ4NDFDbWM5YTNIa1h0aSBiOXJqOTRnbktydVB3NXlmV1ZqRWVUK09JRGRqS3ZzN1Q0SUZUMW5RVEhrK0VyL1h1R3lJTEtXKzBrSWlHSjgzczkzRUE3cHMrdlBwbWd2NmZSZE1pSFNZV0pwMkRrRWsrd3FCbUtSWGdUb2pWQ0sxR2E2YUd4cC9qUVdWVmZGWCsvZXZ3eEFZdWhTTENpU2hXVy9VeENqcHByTFRCakl0Ui9jY2d1WG1Ld1NYaHMrVjdza28wUk4xaTYzZ29aVlloUEYgQ2NFSExLTW5Pak1HZDBtQUNGZTI4WFJhUSIsImN1c3RvbTp2YWxpZGF0ZWRfZW1haWwiOiJpbmZpbml0eUBub3doZXJlLmNvbSJ9.7tD1tFB3jYCQLFuBmmWPUywD0xE8SznZ-2Tpy_9Udp4"

    invoke-direct {v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    const-string v3, "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJiMTIzNDU2Ny1jZDEyLTEyZGEtMTIzNC1lYWYxZTJiYTM0NTYiLCJpc3MiOiJodHRwczovL2NvZ25pdG8taWRwLnVzLWVhc3QtMS5hbWF6b25hd3MuY29tL3VzLWVhc3QtMV96RURmWEJ6NGIiLCJjbGllbnRfaWQiOiIxaTJmbzNobTRkNW02YmY3ODl2ajAxcTJlYSIsInRva2VuX3VzZSI6ImFjY2VzcyIsInNjb3BlIjoiYXdzLmNvZ25pdG8uc2lnbmluLnVzZXIuYWRtaW4iLCJhdXRoX3RpbWUiOjE3ODI4NjQwMDAuMCwiaWF0IjoxNzgyODY0MDAwLjAsImV4cCI6MjIyNDcxMzYwMC4wLCJqdGkiOiIxMmUzYTRiNS1iZTY3LTg5ZjAtYjFiMi0zYmY0NTZiNzg5MDEiLCJvcmlnaW5fanRpIjoiMTJlM2E0YjUtYmU2Ny04OWYwLWIxYjItM2JmNDU2Yjc4OTAxIiwiZXZlbnRfaWQiOiIxMmQzNGFiNS02Nzg5LTAxMmEtYmJjMy00NWM2ZjdmZDhjZjkiLCJjb2duaXRvOmdyb3VwcyI6WyJGUkVFVVNFUiJdLCJ1c2VybmFtZSI6ImIxMjM0NTY3LWNkMTItMTJkYS0xMjM0LWVhZjFlMmJhMzQ1NiIsImRldmljZV9rZXkiOiJ1cy1lYXN0LTFfZmUyYzVkZWItZDU2YS00NDdhLWE0Y2UtZWJlMTJjODc3MDIyIn0.z2hQc6P0ujiNVh06sH0AUpWwFX-WtrvrMit-ghcXQ24"

    invoke-direct {v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;

    const-string v4, "eyJjdHkiOiAiSldUIiwgImVuYyI6ICJBMjU2R0NNIiwgImFsZyI6ICJSU0EtT0FFUCJ9.D6GNnxL6WtzWtBXoKB3FSp346afTqWrkHVb5mmK_d-Q.kmuHe-8TPKAnS_fM.eyJzdWIiOiAiYjEyMzQ1NjctY2QxMi0xMmRhLTEyMzQtZWFmMWUyYmEzNDU2IiwgImNsaWVudF9pZCI6ICIxaTJmbzNobTRkNW02YmY3ODl2ajAxcTJlYSIsICJhdXRoX3RpbWUiOiAxNzgyODY0MDAwLjAsICJkZXZpY2Vfa2V5IjogInVzLWVhc3QtMV9mZTJjNWRlYi1kNTZhLTQ0N2EtYTRjZS1lYmUxMmM4NzcwMjIiLCAiaWF0IjogMTc4Mjg2NDAwMC4wLCAiZXhwIjogMjIyNDcxMzYwMC4wfQ.cd_1SRyTRsriwcyOMHjuNw"

    invoke-direct {v3, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    invoke-direct {v4, v1, v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;)V

    iput-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v4

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->C()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->s()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final t(Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->getIdToken()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;

    invoke-direct {v1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    invoke-direct {v2, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->getRefreshToken()Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;

    invoke-direct {p2, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;-><init>(Ljava/lang/String;)V

    .line 7
    :goto_0
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    invoke-direct {p1, v1, v2, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;)V

    return-object p1
.end method

.method public final u(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GetDetailsHandler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->y(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserDetails;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GetDetailsHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserDetails;)V

    return-void
.end method

.method public final v(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V
    .locals 2

    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->s()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V

    return-void
.end method

.method public final w(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->s()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V

    return-void

    :cond_0
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    const-string v0, "callback is null"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final x()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;
    .locals 2

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->e(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object v0

    return-object v0
.end method

.method public final y(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserDetails;
    .locals 3

    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;

    invoke-direct {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;-><init>()V

    const-string v1, "email"

    const-string v2, "infinity@nowhere.com"

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserDetails;

    invoke-direct {v1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserDetails;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;)V

    return-object v1
.end method

.method public final z(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V
    .locals 0

    invoke-interface {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;->onSuccess()V

    return-void
.end method
