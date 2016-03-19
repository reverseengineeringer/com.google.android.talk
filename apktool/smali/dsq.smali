.class public Ldsq;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>(Lkef;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2329
    iget-object v0, p1, Lkef;->responseHeader:Lkdp;

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Ldqf;-><init>(Lkdp;J)V

    .line 2331
    const-string v0, "Babel"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2332
    const-string v1, "Babel"

    const-string v0, "SetConfigurationBitResponse debugUrl: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p1, Lkef;->responseHeader:Lkdp;

    iget-object v0, v0, Lkdp;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2334
    iget-object v0, p1, Lkef;->a:[Ljxo;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 2335
    const-string v1, "Babel"

    const-string v2, "SetConfigurationBitResponse error: "

    iget-object v0, p1, Lkef;->a:[Ljxo;

    aget-object v0, v0, v4

    iget-object v0, v0, Ljxo;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3232
    :cond_0
    sget-boolean v0, Ldqf;->a:Z

    .line 2339
    if-eqz v0, :cond_1

    .line 2340
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "SetConfigurationBitResponse from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2343
    :cond_1
    return-void

    .line 2332
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2335
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 2347
    new-instance v0, Lkef;

    invoke-direct {v0}, Lkef;-><init>()V

    .line 4131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 2348
    check-cast v0, Lkef;

    .line 2349
    iget-object v1, v0, Lkef;->responseHeader:Lkdp;

    invoke-static {v1}, Ldsq;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2350
    new-instance v1, Ldqs;

    iget-object v0, v0, Lkef;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 2352
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldsq;

    invoke-direct {v1, v0}, Ldsq;-><init>(Lkef;)V

    move-object v0, v1

    goto :goto_0
.end method
