.class public Ldtb;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>(Lkfw;)V
    .locals 4

    .prologue
    .line 1204
    iget-object v0, p1, Lkfw;->responseHeader:Lkdp;

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Ldqf;-><init>(Lkdp;J)V

    .line 1205
    return-void
.end method

.method public static parseFrom(Lkfw;)Ldqf;
    .locals 2

    .prologue
    .line 1215
    iget-object v0, p0, Lkfw;->responseHeader:Lkdp;

    invoke-static {v0}, Ldtb;->a(Lkdp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    new-instance v0, Ldqs;

    iget-object v1, p0, Lkfw;->responseHeader:Lkdp;

    invoke-direct {v0, v1}, Ldqs;-><init>(Lkdp;)V

    .line 1218
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ldtb;

    invoke-direct {v0, p0}, Ldtb;-><init>(Lkfw;)V

    goto :goto_0
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 1209
    new-instance v0, Lkfw;

    invoke-direct {v0}, Lkfw;-><init>()V

    .line 2131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 1210
    check-cast v0, Lkfw;

    .line 1211
    invoke-static {v0}, Ldtb;->parseFrom(Lkfw;)Ldqf;

    move-result-object v0

    return-object v0
.end method
