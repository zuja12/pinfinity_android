.class public Lcom/amazonaws/http/AmazonHttpClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/amazonaws/logging/Log;

.field public static final e:Lcom/amazonaws/logging/Log;


# instance fields
.field public final a:Lcom/amazonaws/http/HttpClient;

.field public final b:Lcom/amazonaws/ClientConfiguration;

.field public final c:Lcom/amazonaws/http/HttpRequestFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "com.amazonaws.request"

    .line 1
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/String;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/AmazonHttpClient;->d:Lcom/amazonaws/logging/Log;

    .line 2
    const-class v0, Lcom/amazonaws/http/AmazonHttpClient;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/AmazonHttpClient;->e:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/amazonaws/http/HttpRequestFactory;

    invoke-direct {v0}, Lcom/amazonaws/http/HttpRequestFactory;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->c:Lcom/amazonaws/http/HttpRequestFactory;

    .line 3
    iput-object p1, p0, Lcom/amazonaws/http/AmazonHttpClient;->b:Lcom/amazonaws/ClientConfiguration;

    .line 4
    iput-object p2, p0, Lcom/amazonaws/http/AmazonHttpClient;->a:Lcom/amazonaws/http/HttpClient;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lcom/amazonaws/http/HttpResponse;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/amazonaws/http/HttpResponse;->b:I

    .line 2
    iget-object p0, p0, Lcom/amazonaws/http/HttpResponse;->d:Ljava/util/Map;

    const-string v1, "Location"

    .line 3
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/16 v1, 0x133

    if-ne v0, v1, :cond_0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final b(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    .locals 3

    move-object v0, p1

    instance-of v1, v0, Lcom/amazonaws/DefaultRequest;

    if-nez v1, :cond_pass

    check-cast v0, Lcom/amazonaws/DefaultRequest;

    iget-object v0, v0, Lcom/amazonaws/DefaultRequest;->d:Ljava/net/URI;

    if-nez v0, :cond_pass

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_pass

    const-string v1, "amazonaws.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_pass

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Blocked amazonaws.com"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/amazonaws/AmazonClientException;

    invoke-direct {v1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_pass
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazonaws/http/AmazonHttpClient;->c(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazonaws/AmazonWebServiceResponse<",
            "TT;>;>;",
            "Lcom/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazonaws/AmazonServiceException;",
            ">;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")",
            "Lcom/amazonaws/Response<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    .line 1
    iget-object v10, v9, Lcom/amazonaws/http/ExecutionContext;->a:Lcom/amazonaws/util/AWSRequestMetrics;

    .line 2
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ServiceName:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    move-object v11, v8

    check-cast v11, Lcom/amazonaws/DefaultRequest;

    .line 3
    iget-object v1, v11, Lcom/amazonaws/DefaultRequest;->e:Ljava/lang/String;

    .line 4
    invoke-virtual {v10, v0, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 5
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ServiceEndpoint:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 6
    iget-object v1, v11, Lcom/amazonaws/DefaultRequest;->d:Ljava/net/URI;

    .line 7
    invoke-virtual {v10, v0, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 8
    sget-object v0, Lcom/amazonaws/ClientConfiguration;->h:Ljava/lang/String;

    .line 9
    iget-object v1, v11, Lcom/amazonaws/DefaultRequest;->f:Lcom/amazonaws/AmazonWebServiceRequest;

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    sget-object v2, Lcom/amazonaws/RequestClientOptions$Marker;->USER_AGENT:Lcom/amazonaws/RequestClientOptions$Marker;

    .line 12
    iget-object v1, v1, Lcom/amazonaws/RequestClientOptions;->a:Ljava/util/EnumMap;

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13
    invoke-static {v0, v1}, Lcom/amazonaws/http/AmazonHttpClient;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 14
    :goto_0
    iget-object v2, v7, Lcom/amazonaws/http/AmazonHttpClient;->b:Lcom/amazonaws/ClientConfiguration;

    .line 15
    iget-object v2, v2, Lcom/amazonaws/ClientConfiguration;->a:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    iget-object v0, v7, Lcom/amazonaws/http/AmazonHttpClient;->b:Lcom/amazonaws/ClientConfiguration;

    .line 18
    iget-object v0, v0, Lcom/amazonaws/ClientConfiguration;->a:Ljava/lang/String;

    .line 19
    invoke-static {v1, v0}, Lcom/amazonaws/http/AmazonHttpClient;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    :cond_1
    iget-object v0, v7, Lcom/amazonaws/http/AmazonHttpClient;->b:Lcom/amazonaws/ClientConfiguration;

    .line 21
    iget-object v0, v0, Lcom/amazonaws/ClientConfiguration;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v1, v0

    :cond_2
    const-string v0, "User-Agent"

    .line 22
    invoke-virtual {v11, v0, v1}, Lcom/amazonaws/DefaultRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aws-sdk-invocation-id"

    invoke-virtual {v11, v1, v0}, Lcom/amazonaws/DefaultRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 24
    new-instance v12, Ljava/util/LinkedHashMap;

    .line 25
    iget-object v2, v11, Lcom/amazonaws/DefaultRequest;->b:Ljava/util/LinkedHashMap;

    .line 26
    invoke-direct {v12, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 27
    new-instance v13, Ljava/util/HashMap;

    .line 28
    iget-object v2, v11, Lcom/amazonaws/DefaultRequest;->c:Ljava/util/HashMap;

    .line 29
    invoke-direct {v13, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 30
    iget-object v14, v11, Lcom/amazonaws/DefaultRequest;->h:Ljava/io/InputStream;

    if-eqz v14, :cond_3

    .line 31
    invoke-virtual {v14}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, -0x1

    .line 32
    invoke-virtual {v14, v2}, Ljava/io/InputStream;->mark(I)V

    .line 33
    :cond_3
    iget-object v15, v9, Lcom/amazonaws/http/ExecutionContext;->d:Lcom/amazonaws/auth/AWSCredentials;

    const/16 v16, 0x0

    move-wide v1, v0

    move/from16 v0, v16

    move/from16 v19, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_1
    const/4 v6, 0x1

    move-object/from16 v21, v5

    add-int/lit8 v5, v0, 0x1

    .line 34
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestCount:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    move-wide/from16 v22, v1

    int-to-long v1, v5

    invoke-virtual {v10, v0, v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->e(Lcom/amazonaws/metrics/MetricType;J)V

    if-le v5, v6, :cond_4

    .line 35
    iget-object v0, v11, Lcom/amazonaws/DefaultRequest;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 36
    iget-object v0, v11, Lcom/amazonaws/DefaultRequest;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v0, v12}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 37
    iget-object v0, v11, Lcom/amazonaws/DefaultRequest;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 38
    iget-object v0, v11, Lcom/amazonaws/DefaultRequest;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 39
    iput-object v14, v11, Lcom/amazonaws/DefaultRequest;->h:Ljava/io/InputStream;

    :cond_4
    if-eqz v17, :cond_5

    .line 40
    iget-object v0, v11, Lcom/amazonaws/DefaultRequest;->d:Ljava/net/URI;

    if-nez v0, :cond_5

    .line 41
    iget-object v0, v11, Lcom/amazonaws/DefaultRequest;->a:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 45
    iput-object v0, v11, Lcom/amazonaws/DefaultRequest;->d:Ljava/net/URI;

    .line 46
    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 47
    iput-object v0, v11, Lcom/amazonaws/DefaultRequest;->a:Ljava/lang/String;

    :cond_5
    const-string v2, "Cannot close the response content."

    if-le v5, v6, :cond_6

    .line 48
    :try_start_0
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RetryPauseTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->f(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 49
    :try_start_1
    move-object v1, v8

    check-cast v1, Lcom/amazonaws/DefaultRequest;

    .line 50
    iget-object v1, v1, Lcom/amazonaws/DefaultRequest;->f:Lcom/amazonaws/AmazonWebServiceRequest;

    .line 51
    iget-object v6, v7, Lcom/amazonaws/http/AmazonHttpClient;->b:Lcom/amazonaws/ClientConfiguration;

    .line 52
    iget-object v6, v6, Lcom/amazonaws/ClientConfiguration;->d:Lcom/amazonaws/retry/RetryPolicy;

    .line 53
    invoke-virtual {v7, v1, v4, v5, v6}, Lcom/amazonaws/http/AmazonHttpClient;->h(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)J

    move-result-wide v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :try_start_2
    invoke-virtual {v10, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 55
    move-object v0, v8

    check-cast v0, Lcom/amazonaws/DefaultRequest;

    .line 56
    iget-object v0, v0, Lcom/amazonaws/DefaultRequest;->h:Ljava/io/InputStream;

    if-eqz v0, :cond_6

    .line 57
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 58
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 59
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RetryPauseTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 60
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    :catch_0
    move-exception v0

    move-object v9, v2

    goto/16 :goto_1e

    :catch_1
    move-exception v0

    move-object v9, v2

    goto/16 :goto_1f

    :catch_2
    move-exception v0

    move-object v9, v2

    move/from16 v20, v5

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move-object/from16 v13, v21

    move-wide/from16 v27, v22

    const/4 v12, 0x0

    :goto_2
    move-object/from16 v22, v11

    :goto_3
    move-object v11, v3

    goto/16 :goto_21

    :cond_6
    :goto_4
    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move-wide/from16 v12, v22

    :try_start_3
    const-string v0, "aws-sdk-retry"

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v5, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/amazonaws/DefaultRequest;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    if-nez v18, :cond_8

    .line 62
    :try_start_4
    move-object v0, v8

    check-cast v0, Lcom/amazonaws/DefaultRequest;

    .line 63
    iget-object v0, v0, Lcom/amazonaws/DefaultRequest;->d:Ljava/net/URI;

    .line 64
    iget-object v1, v9, Lcom/amazonaws/http/ExecutionContext;->c:Lcom/amazonaws/AmazonWebServiceClient;

    if-nez v1, :cond_7

    const/4 v0, 0x0

    const/4 v4, 0x1

    goto :goto_5

    :cond_7
    const/4 v4, 0x1

    .line 65
    invoke-virtual {v1, v0, v4}, Lcom/amazonaws/AmazonWebServiceClient;->c(Ljava/net/URI;Z)Lcom/amazonaws/auth/Signer;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    :goto_5
    move-object v6, v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_a

    :cond_8
    const/4 v4, 0x1

    move-object/from16 v6, v18

    :goto_6
    if-eqz v6, :cond_9

    if-eqz v15, :cond_9

    .line 66
    :try_start_5
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestSigningTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->f(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .line 67
    :try_start_6
    invoke-interface {v6, v8, v15}, Lcom/amazonaws/auth/Signer;->b(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSCredentials;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 68
    :try_start_7
    invoke-virtual {v10, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v1, v0

    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestSigningTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 69
    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    :catch_4
    move-exception v0

    goto :goto_9

    .line 70
    :cond_9
    :goto_7
    :try_start_8
    sget-object v0, Lcom/amazonaws/http/AmazonHttpClient;->d:Lcom/amazonaws/logging/Log;

    invoke-interface {v0}, Lcom/amazonaws/logging/Log;->c()Z

    move-result v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    if-eqz v1, :cond_a

    .line 71
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending Request: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    goto :goto_b

    :goto_8
    move-object v9, v2

    goto/16 :goto_1d

    :goto_9
    move-object/from16 v18, v6

    :goto_a
    move-object v9, v2

    move/from16 v20, v5

    move-object/from16 v22, v11

    move-wide/from16 v27, v12

    move-object/from16 v13, v21

    const/4 v12, 0x0

    goto/16 :goto_3

    .line 72
    :cond_a
    :goto_b
    :try_start_a
    iget-object v0, v7, Lcom/amazonaws/http/AmazonHttpClient;->c:Lcom/amazonaws/http/HttpRequestFactory;

    iget-object v1, v7, Lcom/amazonaws/http/AmazonHttpClient;->b:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v0, v8, v1}, Lcom/amazonaws/http/HttpRequestFactory;->a(Lcom/amazonaws/Request;Lcom/amazonaws/ClientConfiguration;)Lcom/amazonaws/http/HttpRequest;

    move-result-object v4
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 73
    :try_start_b
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->HttpRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->f(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 74
    :try_start_c
    iget-object v1, v7, Lcom/amazonaws/http/AmazonHttpClient;->a:Lcom/amazonaws/http/HttpClient;

    check-cast v1, Lcom/amazonaws/http/UrlHttpClient;

    invoke-virtual {v1, v4}, Lcom/amazonaws/http/UrlHttpClient;->a(Lcom/amazonaws/http/HttpRequest;)Lcom/amazonaws/http/HttpResponse;

    move-result-object v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 75
    :try_start_d
    invoke-virtual {v10, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 76
    iget v0, v3, Lcom/amazonaws/http/HttpResponse;->b:I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_19
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_d} :catch_18
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_b

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_b

    const/16 v24, 0x1

    goto :goto_c

    :cond_b
    move/from16 v24, v16

    :goto_c
    if-eqz v24, :cond_d

    .line 77
    :try_start_e
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->StatusCode:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 78
    invoke-interface/range {p2 .. p2}, Lcom/amazonaws/http/HttpResponseHandler;->b()Z

    move-result v19

    move-object/from16 v1, p2

    .line 79
    invoke-virtual {v7, v1, v3, v9}, Lcom/amazonaws/http/AmazonHttpClient;->e(Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    new-instance v1, Lcom/amazonaws/Response;

    invoke-direct {v1, v0}, Lcom/amazonaws/Response;-><init>(Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-nez v19, :cond_c

    .line 81
    :try_start_f
    iget-object v0, v3, Lcom/amazonaws/http/HttpResponse;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_c

    .line 82
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    goto :goto_d

    :catch_5
    move-exception v0

    .line 83
    sget-object v3, Lcom/amazonaws/http/AmazonHttpClient;->e:Lcom/amazonaws/logging/Log;

    invoke-interface {v3, v2, v0}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_c
    :goto_d
    return-object v1

    :catchall_2
    move-exception v0

    move-object/from16 v22, v2

    goto/16 :goto_10

    :catch_6
    move-exception v0

    move-object/from16 v22, v2

    goto/16 :goto_11

    :catch_7
    move-exception v0

    move-object/from16 v22, v2

    goto/16 :goto_12

    :catch_8
    move-exception v0

    move-object/from16 v22, v2

    goto/16 :goto_e

    .line 84
    :cond_d
    :try_start_10
    invoke-static {v3}, Lcom/amazonaws/http/AmazonHttpClient;->f(Lcom/amazonaws/http/HttpResponse;)Z

    move-result v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_19
    .catch Ljava/lang/Error; {:try_start_10 .. :try_end_10} :catch_18
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    if-eqz v0, :cond_e

    .line 85
    :try_start_11
    iget-object v0, v3, Lcom/amazonaws/http/HttpResponse;->d:Ljava/util/Map;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/lang/Error; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :try_start_12
    const-string v1, "Location"

    .line 86
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    sget-object v1, Lcom/amazonaws/http/AmazonHttpClient;->e:Lcom/amazonaws/logging/Log;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_7
    .catch Ljava/lang/Error; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    move-object/from16 v22, v2

    :try_start_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_d
    .catch Ljava/lang/Error; {:try_start_13 .. :try_end_13} :catch_c
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    move/from16 v23, v5

    :try_start_14
    const-string v5, "Redirecting to: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    .line 88
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v17

    .line 89
    move-object v1, v8

    check-cast v1, Lcom/amazonaws/DefaultRequest;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_d
    .catch Ljava/lang/Error; {:try_start_14 .. :try_end_14} :catch_c
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    const/4 v2, 0x0

    .line 90
    :try_start_15
    iput-object v2, v1, Lcom/amazonaws/DefaultRequest;->d:Ljava/net/URI;

    .line 91
    move-object v1, v8

    check-cast v1, Lcom/amazonaws/DefaultRequest;

    .line 92
    iput-object v2, v1, Lcom/amazonaws/DefaultRequest;->a:Ljava/lang/String;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_d
    .catch Ljava/lang/Error; {:try_start_15 .. :try_end_15} :catch_c
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 93
    :try_start_16
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->StatusCode:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 94
    iget v2, v3, Lcom/amazonaws/http/HttpResponse;->b:I

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 96
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RedirectLocation:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 97
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazonaws/util/AWSRequestMetrics$Field;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_d
    .catch Ljava/lang/Error; {:try_start_16 .. :try_end_16} :catch_c
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    const/4 v5, 0x0

    :try_start_17
    invoke-virtual {v10, v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_d
    .catch Ljava/lang/Error; {:try_start_17 .. :try_end_17} :catch_c
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    move-object/from16 v18, v4

    move-wide/from16 v27, v12

    move-object/from16 v9, v22

    move/from16 v20, v23

    move-object v12, v5

    move-object/from16 v23, v6

    move-object/from16 v22, v11

    move-object v11, v3

    move-object v6, v12

    goto/16 :goto_14

    :catch_9
    move-exception v0

    goto :goto_13

    :catch_a
    move-exception v0

    move-object v5, v2

    goto :goto_13

    :catch_b
    move-exception v0

    goto :goto_f

    :catchall_3
    move-exception v0

    goto :goto_10

    :catch_c
    move-exception v0

    goto :goto_11

    :catch_d
    move-exception v0

    goto :goto_12

    :catch_e
    move-exception v0

    :goto_e
    move/from16 v23, v5

    :goto_f
    const/4 v5, 0x0

    goto :goto_13

    :goto_10
    move-object/from16 v9, v22

    goto/16 :goto_1d

    :goto_11
    move-object/from16 v9, v22

    goto/16 :goto_1e

    :goto_12
    move-object/from16 v9, v22

    goto/16 :goto_1f

    :goto_13
    move-object/from16 v18, v6

    move-wide/from16 v27, v12

    move-object/from16 v9, v22

    move/from16 v20, v23

    move-object v13, v4

    move-object v12, v5

    goto/16 :goto_2

    :catch_f
    move-exception v0

    move-object/from16 v22, v2

    move/from16 v23, v5

    goto :goto_f

    :cond_e
    move-object/from16 v22, v2

    move/from16 v23, v5

    const/4 v5, 0x0

    .line 98
    :try_start_18
    invoke-interface/range {p3 .. p3}, Lcom/amazonaws/http/HttpResponseHandler;->b()Z

    move-result v19

    move-object/from16 v2, p3

    .line 99
    invoke-virtual {v7, v8, v2, v3}, Lcom/amazonaws/http/AmazonHttpClient;->d(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;

    move-result-object v0

    .line 100
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazonaws/util/AWSRequestMetrics$Field;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_15
    .catch Ljava/lang/Error; {:try_start_18 .. :try_end_18} :catch_14
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    :try_start_19
    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->getRequestId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v1, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 101
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSErrorCode:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v1, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 102
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->StatusCode:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v1, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 103
    move-object v1, v8

    check-cast v1, Lcom/amazonaws/DefaultRequest;

    .line 104
    iget-object v5, v1, Lcom/amazonaws/DefaultRequest;->f:Lcom/amazonaws/AmazonWebServiceRequest;

    .line 105
    iget-object v1, v4, Lcom/amazonaws/http/HttpRequest;->d:Ljava/io/InputStream;

    move-object/from16 v18, v1

    .line 106
    iget-object v1, v7, Lcom/amazonaws/http/AmazonHttpClient;->b:Lcom/amazonaws/ClientConfiguration;

    .line 107
    iget-object v1, v1, Lcom/amazonaws/ClientConfiguration;->d:Lcom/amazonaws/retry/RetryPolicy;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_15
    .catch Ljava/lang/Error; {:try_start_19 .. :try_end_19} :catch_14
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    move-object/from16 v21, v1

    move-object/from16 v1, p0

    move-object/from16 v9, v22

    move-object v2, v5

    move-object v5, v3

    move-object/from16 v3, v18

    move-object/from16 v18, v4

    move-object v4, v0

    move-object/from16 v22, v11

    move/from16 v20, v23

    const/16 v23, 0x0

    move-object v11, v5

    move/from16 v5, v20

    move-wide/from16 v27, v12

    move-object/from16 v12, v23

    move-object/from16 v23, v6

    move-object/from16 v6, v21

    .line 108
    :try_start_1a
    invoke-virtual/range {v1 .. v6}, Lcom/amazonaws/http/AmazonHttpClient;->j(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/io/InputStream;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 109
    invoke-static {v0}, Lcom/amazonaws/retry/RetryUtils;->a(Lcom/amazonaws/AmazonServiceException;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 110
    invoke-virtual {v7, v11, v0}, Lcom/amazonaws/http/AmazonHttpClient;->g(Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/AmazonServiceException;)J

    move-result-wide v1

    .line 111
    sget-object v3, Lcom/amazonaws/SDKGlobalConfiguration;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 112
    :cond_f
    invoke-virtual {v7, v8, v0}, Lcom/amazonaws/http/AmazonHttpClient;->i(Lcom/amazonaws/Request;Ljava/lang/Exception;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_12
    .catch Ljava/lang/Error; {:try_start_1a .. :try_end_1a} :catch_11
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    move-object v6, v0

    :goto_14
    if-nez v19, :cond_10

    .line 113
    :try_start_1b
    iget-object v0, v11, Lcom/amazonaws/http/HttpResponse;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_10

    .line 114
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_10

    goto :goto_15

    :catch_10
    move-exception v0

    .line 115
    sget-object v1, Lcom/amazonaws/http/AmazonHttpClient;->e:Lcom/amazonaws/logging/Log;

    invoke-interface {v1, v9, v0}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_10
    :goto_15
    move-object v4, v6

    move-object v3, v11

    move-object/from16 v5, v18

    move-object/from16 v18, v23

    goto/16 :goto_23

    .line 116
    :cond_11
    :try_start_1c
    throw v0
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_12
    .catch Ljava/lang/Error; {:try_start_1c .. :try_end_1c} :catch_11
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    :catch_11
    move-exception v0

    goto :goto_18

    :catch_12
    move-exception v0

    goto :goto_19

    :catch_13
    move-exception v0

    goto/16 :goto_1b

    :catchall_4
    move-exception v0

    move-object v11, v3

    move-object/from16 v9, v22

    goto :goto_17

    :catch_14
    move-exception v0

    move-object v11, v3

    move-object/from16 v9, v22

    goto :goto_18

    :catch_15
    move-exception v0

    move-object v11, v3

    move-object/from16 v9, v22

    goto :goto_19

    :catch_16
    move-exception v0

    move-object/from16 v18, v4

    move-wide/from16 v27, v12

    move-object/from16 v9, v22

    move/from16 v20, v23

    const/4 v12, 0x0

    :goto_16
    move-object/from16 v23, v6

    move-object/from16 v22, v11

    goto :goto_1a

    :catch_17
    move-exception v0

    move-object/from16 v18, v4

    move-wide/from16 v27, v12

    move-object/from16 v9, v22

    move/from16 v20, v23

    move-object v12, v5

    goto :goto_16

    :catchall_5
    move-exception v0

    move-object v9, v2

    move-object v11, v3

    :goto_17
    move-object v3, v11

    goto/16 :goto_1d

    :catch_18
    move-exception v0

    move-object v9, v2

    move-object v11, v3

    :goto_18
    move-object v3, v11

    goto/16 :goto_1e

    :catch_19
    move-exception v0

    move-object v9, v2

    move-object v11, v3

    :goto_19
    move-object v3, v11

    goto/16 :goto_1f

    :catch_1a
    move-exception v0

    move-object v9, v2

    move-object/from16 v18, v4

    move/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v22, v11

    move-wide/from16 v27, v12

    const/4 v12, 0x0

    :goto_1a
    move-object v11, v3

    :goto_1b
    move-object v3, v11

    goto :goto_1c

    :catchall_6
    move-exception v0

    move-object v9, v2

    move-object/from16 v18, v4

    move/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v22, v11

    move-wide/from16 v27, v12

    const/4 v12, 0x0

    .line 117
    :try_start_1d
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->HttpRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 118
    throw v0
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_1c
    .catch Ljava/lang/Error; {:try_start_1d .. :try_end_1d} :catch_1b
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    :catchall_7
    move-exception v0

    goto :goto_1d

    :catch_1b
    move-exception v0

    goto :goto_1e

    :catch_1c
    move-exception v0

    goto :goto_1f

    :catch_1d
    move-exception v0

    goto :goto_1c

    :catch_1e
    move-exception v0

    move-object v9, v2

    move-object/from16 v18, v4

    move/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v22, v11

    move-wide/from16 v27, v12

    const/4 v12, 0x0

    :goto_1c
    move-object v11, v3

    move-object/from16 v13, v18

    move-object/from16 v18, v23

    goto :goto_21

    :catch_1f
    move-exception v0

    move-object v9, v2

    move/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v22, v11

    move-wide/from16 v27, v12

    const/4 v12, 0x0

    move-object/from16 v18, v23

    goto :goto_20

    :catchall_8
    move-exception v0

    goto/16 :goto_8

    :goto_1d
    move-object v1, v0

    goto/16 :goto_24

    .line 119
    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->Exception:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->c(Lcom/amazonaws/metrics/MetricType;)V

    .line 120
    invoke-virtual {v10, v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 121
    throw v0

    .line 122
    :goto_1f
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->Exception:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->c(Lcom/amazonaws/metrics/MetricType;)V

    .line 123
    invoke-virtual {v10, v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 124
    throw v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    :catch_20
    move-exception v0

    move-object v9, v2

    move/from16 v20, v5

    move-object/from16 v22, v11

    move-wide/from16 v27, v12

    const/4 v12, 0x0

    :goto_20
    move-object v11, v3

    move-object/from16 v13, v21

    .line 125
    :goto_21
    :try_start_1f
    sget-object v1, Lcom/amazonaws/http/AmazonHttpClient;->e:Lcom/amazonaws/logging/Log;

    invoke-interface {v1}, Lcom/amazonaws/logging/Log;->c()Z

    move-result v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    const-string v3, "Unable to execute HTTP request: "

    if-eqz v2, :cond_12

    .line 126
    :try_start_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 127
    :cond_12
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->Exception:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->c(Lcom/amazonaws/metrics/MetricType;)V

    .line 128
    invoke-virtual {v10, v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 129
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v10, v1, v12}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 130
    new-instance v6, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    move-object v1, v8

    check-cast v1, Lcom/amazonaws/DefaultRequest;

    .line 133
    iget-object v2, v1, Lcom/amazonaws/DefaultRequest;->f:Lcom/amazonaws/AmazonWebServiceRequest;

    .line 134
    iget-object v3, v13, Lcom/amazonaws/http/HttpRequest;->d:Ljava/io/InputStream;

    .line 135
    iget-object v1, v7, Lcom/amazonaws/http/AmazonHttpClient;->b:Lcom/amazonaws/ClientConfiguration;

    .line 136
    iget-object v5, v1, Lcom/amazonaws/ClientConfiguration;->d:Lcom/amazonaws/retry/RetryPolicy;

    move-object/from16 v1, p0

    move-object v4, v6

    move-object/from16 v21, v5

    move/from16 v5, v20

    move-object/from16 v23, v6

    move-object/from16 v6, v21

    .line 137
    invoke-virtual/range {v1 .. v6}, Lcom/amazonaws/http/AmazonHttpClient;->j(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/io/InputStream;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 138
    invoke-virtual {v7, v8, v0}, Lcom/amazonaws/http/AmazonHttpClient;->i(Lcom/amazonaws/Request;Ljava/lang/Exception;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    if-nez v19, :cond_13

    if-eqz v11, :cond_13

    .line 139
    :try_start_21
    iget-object v0, v11, Lcom/amazonaws/http/HttpResponse;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_13

    .line 140
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_21

    goto :goto_22

    :catch_21
    move-exception v0

    .line 141
    sget-object v1, Lcom/amazonaws/http/AmazonHttpClient;->e:Lcom/amazonaws/logging/Log;

    invoke-interface {v1, v9, v0}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_13
    :goto_22
    move-object v3, v11

    move-object v5, v13

    move-object/from16 v4, v23

    :goto_23
    move-wide/from16 v1, v27

    move-object/from16 v9, p4

    move/from16 v0, v20

    move-object/from16 v11, v22

    move-object/from16 v12, v25

    move-object/from16 v13, v26

    goto/16 :goto_1

    .line 142
    :cond_14
    :try_start_22
    throw v23
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    :catchall_9
    move-exception v0

    goto/16 :goto_17

    :goto_24
    if-nez v19, :cond_15

    if-eqz v3, :cond_15

    .line 143
    :try_start_23
    iget-object v0, v3, Lcom/amazonaws/http/HttpResponse;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_15

    .line 144
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_22

    goto :goto_25

    :catch_22
    move-exception v0

    .line 145
    sget-object v2, Lcom/amazonaws/http/AmazonHttpClient;->e:Lcom/amazonaws/logging/Log;

    invoke-interface {v2, v9, v0}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 146
    :cond_15
    :goto_25
    throw v1
.end method

.method public final d(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazonaws/AmazonServiceException;",
            ">;",
            "Lcom/amazonaws/http/HttpResponse;",
            ")",
            "Lcom/amazonaws/AmazonServiceException;"
        }
    .end annotation

    .line 1
    iget v0, p3, Lcom/amazonaws/http/HttpResponse;->b:I

    .line 2
    :try_start_0
    invoke-interface {p2, p3}, Lcom/amazonaws/http/HttpResponseHandler;->a(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazonaws/AmazonServiceException;

    .line 3
    sget-object v1, Lcom/amazonaws/http/AmazonHttpClient;->d:Lcom/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received error response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const/16 v1, 0x19d

    if-ne v0, v1, :cond_0

    .line 4
    new-instance p2, Lcom/amazonaws/AmazonServiceException;

    const-string p3, "Request entity too large"

    invoke-direct {p2, p3}, Lcom/amazonaws/AmazonServiceException;-><init>(Ljava/lang/String;)V

    .line 5
    move-object v2, p1

    check-cast v2, Lcom/amazonaws/DefaultRequest;

    .line 6
    iget-object v2, v2, Lcom/amazonaws/DefaultRequest;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {p2, v2}, Lcom/amazonaws/AmazonServiceException;->setServiceName(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2, v1}, Lcom/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 9
    sget-object v1, Lcom/amazonaws/AmazonServiceException$ErrorType;->Client:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {p2, v1}, Lcom/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 10
    invoke-virtual {p2, p3}, Lcom/amazonaws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1f7

    if-ne v0, v1, :cond_1

    .line 11
    iget-object v2, p3, Lcom/amazonaws/http/HttpResponse;->a:Ljava/lang/String;

    const-string v3, "Service Unavailable"

    .line 12
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    new-instance p2, Lcom/amazonaws/AmazonServiceException;

    const-string p3, "Service unavailable"

    invoke-direct {p2, p3}, Lcom/amazonaws/AmazonServiceException;-><init>(Ljava/lang/String;)V

    .line 14
    move-object v2, p1

    check-cast v2, Lcom/amazonaws/DefaultRequest;

    .line 15
    iget-object v2, v2, Lcom/amazonaws/DefaultRequest;->e:Ljava/lang/String;

    .line 16
    invoke-virtual {p2, v2}, Lcom/amazonaws/AmazonServiceException;->setServiceName(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2, v1}, Lcom/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 18
    sget-object v1, Lcom/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {p2, v1}, Lcom/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 19
    invoke-virtual {p2, p3}, Lcom/amazonaws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    .line 20
    :goto_0
    invoke-virtual {p2, v0}, Lcom/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 21
    check-cast p1, Lcom/amazonaws/DefaultRequest;

    .line 22
    iget-object p1, p1, Lcom/amazonaws/DefaultRequest;->e:Ljava/lang/String;

    .line 23
    invoke-virtual {p2, p1}, Lcom/amazonaws/AmazonServiceException;->setServiceName(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    return-object p2

    .line 25
    :cond_1
    instance-of p1, p2, Ljava/io/IOException;

    if-eqz p1, :cond_2

    .line 26
    check-cast p2, Ljava/io/IOException;

    throw p2

    :cond_2
    const-string p1, "Unable to unmarshall error response ("

    .line 27
    invoke-static {p1}, Landroid/support/v4/media/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 28
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "). Response Code: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Response Text: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v0, p3, Lcom/amazonaws/http/HttpResponse;->a:Ljava/lang/String;

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Response Headers: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object p3, p3, Lcom/amazonaws/http/HttpResponse;->d:Ljava/util/Map;

    .line 32
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 33
    new-instance p3, Lcom/amazonaws/AmazonClientException;

    invoke-direct {p3, p1, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public final e(Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazonaws/AmazonWebServiceResponse<",
            "TT;>;>;",
            "Lcom/amazonaws/http/HttpResponse;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")TT;"
        }
    .end annotation

    const-string v0, ", Response Text: "

    .line 1
    :try_start_0
    iget-object p3, p3, Lcom/amazonaws/http/ExecutionContext;->a:Lcom/amazonaws/util/AWSRequestMetrics;

    .line 2
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ResponseProcessingTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p3, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->f(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catch Lcom/amazonaws/internal/CRC32MismatchException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    invoke-interface {p1, p2}, Lcom/amazonaws/http/HttpResponseHandler;->a(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/AmazonWebServiceResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    invoke-virtual {p3, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    if-eqz p1, :cond_1

    .line 5
    sget-object v1, Lcom/amazonaws/http/AmazonHttpClient;->d:Lcom/amazonaws/logging/Log;

    invoke-interface {v1}, Lcom/amazonaws/logging/Log;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received successful response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget v3, p2, Lcom/amazonaws/http/HttpResponse;->b:I

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", AWS Request ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1}, Lcom/amazonaws/AmazonWebServiceResponse;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    .line 11
    :cond_0
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p1}, Lcom/amazonaws/AmazonWebServiceResponse;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 12
    iget-object p1, p1, Lcom/amazonaws/AmazonWebServiceResponse;->a:Ljava/lang/Object;

    return-object p1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to unmarshall response metadata. Response Code: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget v1, p2, Lcom/amazonaws/http/HttpResponse;->b:I

    .line 15
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p2, Lcom/amazonaws/http/HttpResponse;->a:Ljava/lang/String;

    .line 17
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 18
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ResponseProcessingTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p3, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 19
    throw p1
    :try_end_2
    .catch Lcom/amazonaws/internal/CRC32MismatchException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string p3, "Unable to unmarshall response ("

    .line 20
    invoke-static {p3}, Landroid/support/v4/media/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "). Response Code: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v1, p2, Lcom/amazonaws/http/HttpResponse;->b:I

    .line 23
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object p2, p2, Lcom/amazonaws/http/HttpResponse;->a:Ljava/lang/String;

    .line 25
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 26
    new-instance p3, Lcom/amazonaws/AmazonClientException;

    invoke-direct {p3, p2, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_1
    move-exception p1

    .line 27
    throw p1

    :catch_2
    move-exception p1

    .line 28
    throw p1
.end method

.method public final finalize()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->a:Lcom/amazonaws/http/HttpClient;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final g(Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/AmazonServiceException;)J
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/amazonaws/http/HttpResponse;->d:Ljava/util/Map;

    const-string v1, "Date"

    .line 3
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/amazonaws/util/DateUtils;->e(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_3

    .line 6
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Lcom/amazonaws/AmazonServiceException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "("

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const-string v1, " + 15"

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_2
    const-string v1, " - 15"

    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 11
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string p2, "yyyyMMdd\'T\'HHmmss\'Z\'"

    .line 12
    invoke-static {p2, p1}, Lcom/amazonaws/util/DateUtils;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 13
    :goto_2
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x3e8

    .line 14
    div-long/2addr v0, p1

    return-wide v0

    :catch_1
    move-exception p1

    move-object p2, p1

    const/4 p1, 0x0

    .line 15
    :goto_3
    sget-object v0, Lcom/amazonaws/http/AmazonHttpClient;->e:Lcom/amazonaws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse clock skew offset from response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final h(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)J
    .locals 2

    add-int/lit8 p3, p3, -0x1

    add-int/lit8 p3, p3, -0x1

    .line 1
    iget-object p1, p4, Lcom/amazonaws/retry/RetryPolicy;->b:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    .line 2
    invoke-interface {p1, p3}, Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;->a(I)J

    move-result-wide p1

    .line 3
    sget-object p4, Lcom/amazonaws/http/AmazonHttpClient;->e:Lcom/amazonaws/logging/Log;

    invoke-interface {p4}, Lcom/amazonaws/logging/Log;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retriable error detected, will retry in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms, attempt number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p3}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 7
    new-instance p2, Lcom/amazonaws/AmazonClientException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final i(Lcom/amazonaws/Request;Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/amazonaws/DefaultRequest;

    .line 2
    iget-object v0, v0, Lcom/amazonaws/DefaultRequest;->h:Ljava/io/InputStream;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    check-cast p1, Lcom/amazonaws/DefaultRequest;

    .line 5
    iget-object p1, p1, Lcom/amazonaws/DefaultRequest;->h:Ljava/io/InputStream;

    .line 6
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 7
    :catch_0
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Encountered an exception and couldn\'t reset the stream to retry"

    invoke-direct {p1, v0, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Encountered an exception and stream is not resettable"

    invoke-direct {p1, v0, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final j(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/io/InputStream;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)Z
    .locals 1

    add-int/lit8 p4, p4, -0x1

    .line 1
    iget-object p1, p0, Lcom/amazonaws/http/AmazonHttpClient;->b:Lcom/amazonaws/ClientConfiguration;

    .line 2
    iget p1, p1, Lcom/amazonaws/ClientConfiguration;->c:I

    if-ltz p1, :cond_0

    .line 3
    iget-boolean v0, p5, Lcom/amazonaws/retry/RetryPolicy;->d:Z

    if-nez v0, :cond_1

    .line 4
    :cond_0
    iget p1, p5, Lcom/amazonaws/retry/RetryPolicy;->c:I

    :cond_1
    const/4 v0, 0x0

    if-lt p4, p1, :cond_2

    return v0

    :cond_2
    if-eqz p2, :cond_4

    .line 5
    invoke-virtual {p2}, Ljava/io/InputStream;->markSupported()Z

    move-result p1

    if-nez p1, :cond_4

    .line 6
    sget-object p1, Lcom/amazonaws/http/AmazonHttpClient;->e:Lcom/amazonaws/logging/Log;

    invoke-interface {p1}, Lcom/amazonaws/logging/Log;->c()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "Content not repeatable"

    .line 7
    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    :cond_3
    return v0

    .line 8
    :cond_4
    iget-object p1, p5, Lcom/amazonaws/retry/RetryPolicy;->a:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    .line 9
    invoke-interface {p1, p3}, Lcom/amazonaws/retry/RetryPolicy$RetryCondition;->a(Lcom/amazonaws/AmazonClientException;)Z

    move-result p1

    return p1
.end method
