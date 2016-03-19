.class public Ldrt;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>(Lkgq;)V
    .locals 4

    .prologue
    .line 4142
    iget-object v0, p1, Lkgq;->responseHeader:Lkdp;

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Ldqf;-><init>(Lkdp;J)V

    .line 4232
    sget-boolean v0, Ldqf;->a:Z

    .line 4143
    if-eqz v0, :cond_0

    .line 4144
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ModifyBroadcastInfoResponse from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4147
    :cond_0
    return-void
.end method

.method public static parseFrom([B)Ldqf;
    .locals 3

    .prologue
    .line 4151
    new-instance v0, Lkgq;

    invoke-direct {v0}, Lkgq;-><init>()V

    .line 5131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 4152
    check-cast v0, Lkgq;

    .line 4153
    iget-object v1, v0, Lkgq;->responseHeader:Lkdp;

    iget-object v1, v1, Lkdp;->a:Ljava/lang/Integer;

    .line 6043
    const/4 v2, 0x0

    invoke-static {v1, v2}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 4153
    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lkgq;->responseHeader:Lkdp;

    .line 4155
    invoke-static {v1}, Ldrt;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4156
    new-instance v1, Ldqs;

    iget-object v0, v0, Lkgq;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 4158
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldrt;

    invoke-direct {v1, v0}, Ldrt;-><init>(Lkgq;)V

    move-object v0, v1

    goto :goto_0
.end method
