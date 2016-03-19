.class public Ldsa;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>(Lkgu;)V
    .locals 4

    .prologue
    .line 4171
    iget-object v0, p1, Lkgu;->responseHeader:Lkdp;

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Ldqf;-><init>(Lkdp;J)V

    .line 4232
    sget-boolean v0, Ldqf;->a:Z

    .line 4172
    if-eqz v0, :cond_0

    .line 4173
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "RemoveBroadcastResponse from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4175
    :cond_0
    return-void
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 4179
    new-instance v0, Lkgu;

    invoke-direct {v0}, Lkgu;-><init>()V

    .line 5131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 4180
    check-cast v0, Lkgu;

    .line 4181
    iget-object v1, v0, Lkgu;->responseHeader:Lkdp;

    invoke-static {v1}, Ldsa;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4182
    new-instance v1, Ldqs;

    iget-object v0, v0, Lkgu;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 4184
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldsa;

    invoke-direct {v1, v0}, Ldsa;-><init>(Lkgu;)V

    move-object v0, v1

    goto :goto_0
.end method
