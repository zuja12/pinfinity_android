.class public final Llj/g;
.super Lzl/h;
.source "SourceFile"

# interfaces
.implements Lgm/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzl/h;",
        "Lgm/p<",
        "Lrm/a0;",
        "Lxl/d<",
        "-",
        "Lsl/p;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lzl/e;
    c = "com.joolarobot.ipong.ui.settings.viewmodel.FeedbackViewModel$uploadFeedbackWithImageToAWS$1"
    f = "FeedbackViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic A:Ljava/lang/String;

.field public final synthetic w:Llj/h;

.field public final synthetic x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic y:Ljava/lang/String;

.field public final synthetic z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Llj/h;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lxl/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llj/h;",
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxl/d<",
            "-",
            "Llj/g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Llj/g;->w:Llj/h;

    iput-object p2, p0, Llj/g;->x:Ljava/util/List;

    iput-object p3, p0, Llj/g;->y:Ljava/lang/String;

    iput-object p4, p0, Llj/g;->z:Ljava/lang/String;

    iput-object p5, p0, Llj/g;->A:Ljava/lang/String;

    invoke-direct {p0, p6}, Lzl/h;-><init>(Lxl/d;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lxl/d;)Lxl/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lxl/d<",
            "*>;)",
            "Lxl/d<",
            "Lsl/p;",
            ">;"
        }
    .end annotation

    new-instance p1, Llj/g;

    iget-object v1, p0, Llj/g;->w:Llj/h;

    iget-object v2, p0, Llj/g;->x:Ljava/util/List;

    iget-object v3, p0, Llj/g;->y:Ljava/lang/String;

    iget-object v4, p0, Llj/g;->z:Ljava/lang/String;

    iget-object v5, p0, Llj/g;->A:Ljava/lang/String;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Llj/g;-><init>(Llj/h;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lxl/d;)V

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lyl/a;->COROUTINE_SUSPENDED:Lyl/a;

    .line 2
    invoke-static {p1}, Lv5/e;->n(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Llj/g;->w:Llj/h;

    .line 4
    iget-object p1, p1, Llj/h;->h:Landroidx/lifecycle/y;

    .line 5
    sget-object v0, Lcom/joolarobot/ipong/api/Resource;->Companion:Lcom/joolarobot/ipong/api/Resource$a;

    invoke-virtual {v0}, Lcom/joolarobot/ipong/api/Resource$a;->b()Lcom/joolarobot/ipong/api/Resource;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/y;->k(Ljava/lang/Object;)V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v0, p0, Llj/g;->x:Ljava/util/List;

    iget-object v1, p0, Llj/g;->w:Llj/h;

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 9
    iget-object v3, v1, Llj/h;->f:Ljj/b;

    .line 10
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v3, Lhj/e;

    invoke-direct {v3}, Lhj/e;-><init>()V

    invoke-virtual {v3}, Lcom/joolarobot/ipong/api/a;->y()Lcom/joolarobot/ipong/api/Resource;

    move-result-object v3

    .line 12
    invoke-virtual {v3}, Lcom/joolarobot/ipong/api/Resource;->isSuccess()Z

    move-result v4

    const v5, 0x7f1201a0

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/joolarobot/ipong/api/Resource;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/joolarobot/ipong/ui/settings/model/FeedBackImageResponse;

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/joolarobot/ipong/ui/settings/model/FeedBackImageResponse;->getData()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    move-object v4, v6

    :goto_1
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_3

    goto :goto_4

    .line 13
    :cond_3
    invoke-virtual {v3}, Lcom/joolarobot/ipong/api/Resource;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/joolarobot/ipong/ui/settings/model/FeedBackImageResponse;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/joolarobot/ipong/ui/settings/model/FeedBackImageResponse;->getData()Ljava/lang/String;

    move-result-object v6

    :cond_4
    invoke-static {v6}, Lrm/e0;->h(Ljava/lang/Object;)V

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://api-v6.admin.joola.com/feedback-images/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 15
    iget-object v4, v1, Llj/h;->f:Ljj/b;

    .line 16
    invoke-virtual {v4, v6, v2}, Ljj/b;->b(Ljava/lang/String;Ljava/io/File;)Lcom/joolarobot/ipong/api/Resource;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/joolarobot/ipong/api/Resource;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_5

    .line 18
    iget-object p1, v1, Llj/h;->h:Landroidx/lifecycle/y;

    .line 19
    sget-object v0, Lcom/joolarobot/ipong/api/Resource;->Companion:Lcom/joolarobot/ipong/api/Resource$a;

    .line 20
    iget-object v1, v1, Llj/h;->e:Landroid/app/Application;

    .line 21
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/joolarobot/ipong/api/Resource$a;->a(Ljava/lang/String;)Lcom/joolarobot/ipong/api/Resource;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/y;->k(Ljava/lang/Object;)V

    .line 22
    sget-object p1, Lsl/p;->a:Lsl/p;

    return-object p1

    .line 23
    :cond_5
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 24
    :cond_6
    :goto_4
    iget-object p1, v1, Llj/h;->h:Landroidx/lifecycle/y;

    .line 25
    sget-object v0, Lcom/joolarobot/ipong/api/Resource;->Companion:Lcom/joolarobot/ipong/api/Resource$a;

    .line 26
    iget-object v1, v1, Llj/h;->e:Landroid/app/Application;

    .line 27
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/joolarobot/ipong/api/Resource$a;->a(Ljava/lang/String;)Lcom/joolarobot/ipong/api/Resource;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/y;->k(Ljava/lang/Object;)V

    .line 28
    sget-object p1, Lsl/p;->a:Lsl/p;

    return-object p1

    .line 29
    :cond_7
    iget-object v0, p0, Llj/g;->w:Llj/h;

    .line 30
    iget-object v0, v0, Llj/h;->f:Ljj/b;

    .line 31
    iget-object v1, p0, Llj/g;->y:Ljava/lang/String;

    iget-object v2, p0, Llj/g;->z:Ljava/lang/String;

    iget-object v3, p0, Llj/g;->A:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Ljj/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/joolarobot/ipong/api/Resource;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/joolarobot/ipong/api/Resource;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 33
    iget-object p1, p0, Llj/g;->w:Llj/h;

    .line 34
    iget-object v0, p1, Llj/h;->h:Landroidx/lifecycle/y;

    .line 35
    sget-object v1, Lcom/joolarobot/ipong/api/Resource;->Companion:Lcom/joolarobot/ipong/api/Resource$a;

    .line 36
    iget-object p1, p1, Llj/h;->e:Landroid/app/Application;

    const v2, 0x7f12019f

    .line 37
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/joolarobot/ipong/api/Resource$a;->d(Ljava/lang/Object;)Lcom/joolarobot/ipong/api/Resource;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->k(Ljava/lang/Object;)V

    goto :goto_5

    .line 38
    :cond_8
    invoke-virtual {p1}, Lcom/joolarobot/ipong/api/Resource;->isError()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 39
    iget-object p1, p0, Llj/g;->w:Llj/h;

    .line 40
    iget-object v0, p1, Llj/h;->h:Landroidx/lifecycle/y;

    .line 41
    sget-object v1, Lcom/joolarobot/ipong/api/Resource;->Companion:Lcom/joolarobot/ipong/api/Resource$a;

    .line 42
    iget-object p1, p1, Llj/h;->e:Landroid/app/Application;

    const v2, 0x7f12019e

    .line 43
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/joolarobot/ipong/api/Resource$a;->d(Ljava/lang/Object;)Lcom/joolarobot/ipong/api/Resource;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->k(Ljava/lang/Object;)V

    .line 44
    :cond_9
    :goto_5
    sget-object p1, Lsl/p;->a:Lsl/p;

    return-object p1
.end method

.method public final m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lrm/a0;

    move-object v6, p2

    check-cast v6, Lxl/d;

    .line 1
    new-instance p1, Llj/g;

    iget-object v1, p0, Llj/g;->w:Llj/h;

    iget-object v2, p0, Llj/g;->x:Ljava/util/List;

    iget-object v3, p0, Llj/g;->y:Ljava/lang/String;

    iget-object v4, p0, Llj/g;->z:Ljava/lang/String;

    iget-object v5, p0, Llj/g;->A:Ljava/lang/String;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Llj/g;-><init>(Llj/h;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lxl/d;)V

    .line 2
    sget-object p2, Lsl/p;->a:Lsl/p;

    invoke-virtual {p1, p2}, Llj/g;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
