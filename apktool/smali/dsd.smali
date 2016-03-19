.class public Ldsd;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>(Lkdn;)V
    .locals 4

    .prologue
    .line 2361
    iget-object v0, p1, Lkdn;->responseHeader:Lkdp;

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Ldqf;-><init>(Lkdp;J)V

    .line 2362
    return-void
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 2366
    new-instance v0, Lkdn;

    invoke-direct {v0}, Lkdn;-><init>()V

    .line 3131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 2367
    check-cast v0, Lkdn;

    .line 2368
    iget-object v1, v0, Lkdn;->responseHeader:Lkdp;

    invoke-static {v1}, Ldsd;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2369
    new-instance v1, Ldqs;

    iget-object v0, v0, Lkdn;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 2371
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldsd;

    invoke-direct {v1, v0}, Ldsd;-><init>(Lkdn;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lbfz;Ldyy;)V
    .locals 3

    .prologue
    .line 2378
    invoke-super {p0, p1, p2}, Ldqf;->a(Lbfz;Ldyy;)V

    .line 2379
    iget-object v0, p0, Ldsd;->b:Leff;

    check-cast v0, Ldpm;

    iget-object v1, v0, Ldpm;->c:Ljava/lang/String;

    .line 2380
    iget-object v0, p0, Ldsd;->b:Leff;

    check-cast v0, Ldpm;

    iget v0, v0, Ldpm;->b:I

    .line 2381
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2382
    invoke-virtual {p1, v1}, Lbfz;->R(Ljava/lang/String;)V

    .line 2384
    invoke-static {p2, p1, v1}, Lbft;->a(Ldyy;Lbfz;Ljava/lang/String;)V

    .line 2387
    :cond_0
    invoke-static {p1}, Lbft;->d(Lbfz;)V

    .line 2389
    return-void
.end method
