.class public Ldqg;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final g:[B

.field private final h:[B


# direct methods
.method private constructor <init>(Lkgo;)V
    .locals 4

    .prologue
    .line 4048
    iget-object v0, p1, Lkgo;->responseHeader:Lkdp;

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Ldqf;-><init>(Lkdp;J)V

    .line 4232
    sget-boolean v0, Ldqf;->a:Z

    .line 4049
    if-eqz v0, :cond_0

    .line 4050
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "AddBroadcastResponse from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4052
    :cond_0
    iget-object v0, p1, Lkgo;->a:Lkgd;

    invoke-static {v0}, Lkgd;->a(Llyi;)[B

    move-result-object v0

    iput-object v0, p0, Ldqg;->g:[B

    .line 4053
    iget-object v0, p1, Lkgo;->b:Lkii;

    invoke-static {v0}, Lkii;->a(Llyi;)[B

    move-result-object v0

    iput-object v0, p0, Ldqg;->h:[B

    .line 4054
    return-void
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 4058
    new-instance v0, Lkgo;

    invoke-direct {v0}, Lkgo;-><init>()V

    .line 5131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 4059
    check-cast v0, Lkgo;

    .line 4060
    iget-object v1, v0, Lkgo;->responseHeader:Lkdp;

    invoke-static {v1}, Ldqg;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4061
    new-instance v1, Ldqs;

    iget-object v0, v0, Lkgo;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 4063
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldqg;

    invoke-direct {v1, v0}, Ldqg;-><init>(Lkgo;)V

    move-object v0, v1

    goto :goto_0
.end method
