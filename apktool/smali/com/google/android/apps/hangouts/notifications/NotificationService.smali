.class public Lcom/google/android/apps/hangouts/notifications/NotificationService;
.super Lehq;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "NotificationService"

    invoke-direct {p0, v0}, Lehq;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;Lknq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lknq",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    :try_start_0
    invoke-super {p0, p1, p2}, Lehq;->a(Landroid/content/Intent;Lknq;)V
    :try_end_0
    .catch Lbgz; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    const-string v0, "account_id"

    const/4 v1, -0x1

    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 50
    const-string v1, "Babel"

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x47

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Ignoring NotificationService intent for invalid account id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected a()[Lehr;
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x7

    new-array v0, v0, [Lehr;

    const/4 v1, 0x0

    new-instance v2, Lcxw;

    invoke-direct {v2}, Lcxw;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcxl;

    invoke-direct {v2}, Lcxl;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcxe;

    invoke-direct {v2}, Lcxe;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcwu;

    invoke-direct {v2}, Lcwu;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcxv;

    invoke-direct {v2}, Lcxv;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcxk;

    invoke-direct {v2}, Lcxk;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcxd;

    invoke-direct {v2}, Lcxd;-><init>()V

    aput-object v2, v0, v1

    return-object v0
.end method
