.class public final Lbya;
.super Lbyp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbyp",
        "<",
        "Ldnn;",
        "Ldrv;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Lba;

.field private final e:Lbfd;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Z


# direct methods
.method public constructor <init>(Lba;Lbfd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lbyp;-><init>()V

    .line 39
    iput-object p1, p0, Lbya;->d:Lba;

    .line 40
    iput-object p2, p0, Lbya;->e:Lbfd;

    .line 41
    iput-object p3, p0, Lbya;->f:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lbya;->g:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lbya;->h:Ljava/lang/String;

    .line 44
    iput-boolean p6, p0, Lbya;->i:Z

    .line 45
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5

    .prologue
    .line 49
    iget-object v0, p0, Lbya;->d:Lba;

    invoke-virtual {v0}, Lba;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->G:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lbya;->f:Ljava/lang/String;

    .line 50
    invoke-static {v4}, Lezc;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 55
    iget-object v0, p0, Lbya;->e:Lbfd;

    .line 56
    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    iget-object v1, p0, Lbya;->g:Ljava/lang/String;

    iget-object v2, p0, Lbya;->h:Ljava/lang/String;

    iget-object v3, p0, Lbya;->f:Ljava/lang/String;

    move v5, v4

    .line 55
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public c()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 61
    invoke-static {}, Lbyp;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->E:I

    .line 63
    :goto_0
    iget-object v1, p0, Lbya;->d:Lba;

    iget-object v2, p0, Lbya;->d:Lba;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lbya;->f:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Lba;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 64
    return-void

    .line 62
    :cond_0
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->F:I

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lbya;->i:Z

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lbya;->d:Lba;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lba;->setResult(I)V

    .line 70
    iget-object v0, p0, Lbya;->d:Lba;

    invoke-virtual {v0}, Lba;->finish()V

    .line 72
    :cond_0
    return-void
.end method

.method public e()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ldnn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    const-class v0, Ldnn;

    return-object v0
.end method

.method public f()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ldrv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    const-class v0, Ldrv;

    return-object v0
.end method
