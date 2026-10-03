.class public final Lzi/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lun/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lun/d<",
        "Lsl/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroidx/lifecycle/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/y<",
            "Lcom/joolarobot/ipong/ui/settings/model/ProfileImageDataCognitoResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/lifecycle/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/y<",
            "Lcom/joolarobot/ipong/ui/settings/model/ProfileImageDataCognitoResponse;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lzi/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lzi/a;->b:Landroidx/lifecycle/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lun/b;Lun/y;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lun/b<",
            "Lsl/p;",
            ">;",
            "Lun/y<",
            "Lsl/p;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lrm/e0;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lrm/e0;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;

    invoke-direct {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;-><init>()V

    const-string p2, "https://api-v6.admin.joola.com/profile-picture/"

    .line 2
    invoke-static {p2}, Landroid/support/v4/media/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lzi/a;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "picture"

    .line 4
    invoke-virtual {p1, v0, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lzi/a;->b:Landroidx/lifecycle/y;

    const-string v0, "updateDataCognitoResponse"

    .line 6
    invoke-static {p2, v0}, Lrm/e0;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lhm/w;

    invoke-direct {v0}, Lhm/w;-><init>()V

    .line 8
    sget-object v1, Lrm/o0;->b:Lwm/b;

    const/4 v2, 0x0

    .line 9
    invoke-static {v0, v2, v1}, Lal/h;->b(Lhm/w;Lxl/d;Lwm/b;)V

    .line 10
    iget-object v0, v0, Lhm/w;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 11
    sget-object v0, Lcom/joolarobot/ipong/JoolaApp;->F:Lcom/joolarobot/ipong/JoolaApp$a;

    invoke-virtual {v0}, Lcom/joolarobot/ipong/JoolaApp$a;->a()Lcom/joolarobot/ipong/JoolaApp;

    move-result-object v0

    .line 12
    iget-object v0, v0, Lcom/joolarobot/ipong/JoolaApp;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/joolarobot/ipong/ui/t;

    invoke-direct {v1, p2, p1}, Lcom/joolarobot/ipong/ui/t;-><init>(Landroidx/lifecycle/y;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;)V

    .line 15
    invoke-virtual {v0, p1, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->I(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/UpdateAttributesHandler;)V

    goto :goto_2

    .line 16
    :cond_2
    sget-object p1, Lcom/joolarobot/ipong/JoolaApp;->F:Lcom/joolarobot/ipong/JoolaApp$a;

    invoke-virtual {p1}, Lcom/joolarobot/ipong/JoolaApp$a;->a()Lcom/joolarobot/ipong/JoolaApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/joolarobot/ipong/JoolaApp;->e()V

    :cond_3
    :goto_2
    return-void
.end method

.method public final b(Lun/b;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lun/b<",
            "Lsl/p;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lrm/e0;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, Lrm/e0;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lzi/a;->b:Landroidx/lifecycle/y;

    new-instance v0, Lcom/joolarobot/ipong/ui/settings/model/ProfileImageDataCognitoResponse;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/joolarobot/ipong/ui/settings/model/ProfileImageDataCognitoResponse;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/y;->j(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    sget p1, Lhm/z;->b:I

    return-void
.end method
