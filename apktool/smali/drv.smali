.class public Ldrv;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Liyg;)V
    .locals 1

    .prologue
    .line 4399
    iget-object v0, p1, Liyg;->apiHeader:Liye;

    invoke-direct {p0, v0}, Ldqf;-><init>(Liye;)V

    .line 4400
    return-void
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 4404
    new-instance v0, Liyg;

    invoke-direct {v0}, Liyg;-><init>()V

    .line 5131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 4405
    check-cast v0, Liyg;

    .line 4406
    iget-object v1, v0, Liyg;->apiHeader:Liye;

    invoke-static {v1}, Ldrv;->a(Liye;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4407
    new-instance v1, Ldqs;

    iget-object v0, v0, Liyg;->apiHeader:Liye;

    invoke-direct {v1, v0}, Ldqs;-><init>(Liye;)V

    move-object v0, v1

    .line 4409
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldrv;

    invoke-direct {v1, v0}, Ldrv;-><init>(Liyg;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lbfz;Ldyy;)V
    .locals 4

    .prologue
    .line 4416
    invoke-super {p0, p1, p2}, Ldqf;->a(Lbfz;Ldyy;)V

    .line 4418
    invoke-virtual {p0}, Ldrv;->c()Leff;

    move-result-object v0

    check-cast v0, Ldnn;

    .line 4419
    iget-object v1, v0, Ldnn;->a:Ljava/lang/String;

    .line 4420
    iget-object v2, v0, Ldnn;->b:Ljava/lang/String;

    .line 4422
    iget-boolean v3, v0, Ldnn;->d:Z

    invoke-virtual {p1, v1, v2, v3}, Lbfz;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4423
    iget-boolean v3, v0, Ldnn;->d:Z

    if-eqz v3, :cond_0

    .line 4424
    iget-object v0, v0, Ldnn;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Lbfz;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4431
    :goto_0
    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v0

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IZ)I

    .line 4432
    return-void

    .line 4426
    :cond_0
    invoke-virtual {p1, v1, v2}, Lbfz;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
