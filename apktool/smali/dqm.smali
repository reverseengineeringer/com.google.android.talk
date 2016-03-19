.class public Ldqm;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>(Ljyj;)V
    .locals 4

    .prologue
    .line 2396
    iget-object v0, p1, Ljyj;->responseHeader:Lkdp;

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Ldqf;-><init>(Lkdp;J)V

    .line 2397
    return-void
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 2401
    new-instance v0, Ljyj;

    invoke-direct {v0}, Ljyj;-><init>()V

    .line 3131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 2402
    check-cast v0, Ljyj;

    .line 2403
    iget-object v1, v0, Ljyj;->responseHeader:Lkdp;

    invoke-static {v1}, Ldqm;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2404
    new-instance v1, Ldqs;

    iget-object v0, v0, Ljyj;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 2406
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldqm;

    invoke-direct {v1, v0}, Ldqm;-><init>(Ljyj;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lbfz;Ldyy;)V
    .locals 0

    .prologue
    .line 2413
    invoke-super {p0, p1, p2}, Ldqf;->a(Lbfz;Ldyy;)V

    .line 2414
    invoke-static {p1}, Lbft;->d(Lbfz;)V

    .line 2415
    return-void
.end method
