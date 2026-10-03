.class public Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;
.super Lcom/amazonaws/services/sqs/AmazonSQSClient;
.source "SourceFile"


# instance fields
.field public l:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    const/16 v1, 0xa

    .line 2
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v2}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    .line 4
    invoke-direct {p0, v0, v2}, Lcom/amazonaws/services/sqs/AmazonSQSClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 5
    iput-object v1, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->l:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 3

    const/16 v0, 0xa

    .line 6
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v1}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    .line 8
    new-instance v2, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v2, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    invoke-direct {p0, v2, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 9
    iput-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->l:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final l(Lcom/amazonaws/services/sqs/model/SendMessageRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
