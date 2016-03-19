.class public Ldqp;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>(Ljzf;)V
    .locals 4

    .prologue
    .line 4489
    iget-object v0, p1, Ljzf;->responseHeader:Lkdp;

    iget-object v1, p1, Ljzf;->a:Ljava/lang/Long;

    .line 5051
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 4489
    invoke-direct {p0, v0, v2, v3}, Ldqf;-><init>(Lkdp;J)V

    .line 4491
    return-void
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 4495
    new-instance v0, Ljzf;

    invoke-direct {v0}, Ljzf;-><init>()V

    .line 5131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 4496
    check-cast v0, Ljzf;

    .line 4497
    iget-object v1, v0, Ljzf;->responseHeader:Lkdp;

    invoke-static {v1}, Ldqp;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4498
    new-instance v1, Ldqs;

    iget-object v0, v0, Ljzf;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 4500
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldqp;

    invoke-direct {v1, v0}, Ldqp;-><init>(Ljzf;)V

    move-object v0, v1

    goto :goto_0
.end method
