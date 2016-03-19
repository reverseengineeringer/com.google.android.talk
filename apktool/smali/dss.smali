.class public final Ldss;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>(Lkem;)V
    .locals 4

    .prologue
    .line 1821
    iget-object v0, p1, Lkem;->responseHeader:Lkdp;

    iget-object v1, p1, Lkem;->a:Ljava/lang/Long;

    .line 2051
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 1821
    invoke-direct {p0, v0, v2, v3}, Ldqf;-><init>(Lkdp;J)V

    .line 1823
    return-void
.end method

.method public static parseFrom(Lkem;)Ldqf;
    .locals 2

    .prologue
    .line 1833
    iget-object v0, p0, Lkem;->responseHeader:Lkdp;

    invoke-static {v0}, Ldss;->a(Lkdp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1834
    new-instance v0, Ldqs;

    iget-object v1, p0, Lkem;->responseHeader:Lkdp;

    invoke-direct {v0, v1}, Ldqs;-><init>(Lkdp;)V

    .line 1836
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ldss;

    invoke-direct {v0, p0}, Ldss;-><init>(Lkem;)V

    goto :goto_0
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 1827
    new-instance v0, Lkem;

    invoke-direct {v0}, Lkem;-><init>()V

    .line 2131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 1828
    check-cast v0, Lkem;

    .line 1829
    invoke-static {v0}, Ldss;->parseFrom(Lkem;)Ldqf;

    move-result-object v0

    return-object v0
.end method
