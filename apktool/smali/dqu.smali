.class public Ldqu;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>(Lkae;)V
    .locals 4

    .prologue
    .line 4308
    iget-object v0, p1, Lkae;->responseHeader:Lkdp;

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Ldqf;-><init>(Lkdp;J)V

    .line 5232
    sget-boolean v0, Ldqf;->a:Z

    .line 4309
    if-eqz v0, :cond_0

    .line 4310
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "FinishPhoneVerificationResponse from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4313
    :cond_0
    return-void
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 4317
    new-instance v0, Lkae;

    invoke-direct {v0}, Lkae;-><init>()V

    .line 6131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 4318
    check-cast v0, Lkae;

    .line 4319
    iget-object v1, v0, Lkae;->responseHeader:Lkdp;

    invoke-static {v1}, Ldqu;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4320
    new-instance v1, Ldqs;

    iget-object v0, v0, Lkae;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 4322
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldqu;

    invoke-direct {v1, v0}, Ldqu;-><init>(Lkae;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lbfz;Ldyy;)V
    .locals 3

    .prologue
    .line 4329
    invoke-super {p0, p1, p2}, Ldqf;->a(Lbfz;Ldyy;)V

    .line 4332
    const/4 v0, 0x1

    invoke-static {v0}, Ldvd;->c(Z)V

    .line 7036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 4334
    const-class v1, Ldjw;

    .line 4333
    invoke-static {v0, v1}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldjw;

    .line 4335
    if-eqz v0, :cond_0

    .line 4336
    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ldjw;->a(IZ)V

    .line 4338
    :cond_0
    return-void
.end method
