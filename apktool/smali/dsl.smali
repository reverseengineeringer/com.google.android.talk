.class public Ldsl;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>(Lkdz;)V
    .locals 4

    .prologue
    .line 4466
    iget-object v0, p1, Lkdz;->responseHeader:Lkdp;

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Ldqf;-><init>(Lkdp;J)V

    .line 5232
    sget-boolean v0, Ldqf;->a:Z

    .line 4467
    if-eqz v0, :cond_0

    .line 4468
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x26

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "SendOffnetworkInvitationResponse from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4471
    :cond_0
    return-void
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 4475
    new-instance v0, Lkdz;

    invoke-direct {v0}, Lkdz;-><init>()V

    .line 6131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 4476
    check-cast v0, Lkdz;

    .line 4477
    iget-object v1, v0, Lkdz;->responseHeader:Lkdp;

    invoke-static {v1}, Ldsl;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4478
    new-instance v1, Ldqs;

    iget-object v0, v0, Lkdz;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 4480
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldsl;

    invoke-direct {v1, v0}, Ldsl;-><init>(Lkdz;)V

    move-object v0, v1

    goto :goto_0
.end method
