.class public Ldsb;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>(Lkdi;)V
    .locals 4

    .prologue
    .line 1662
    iget-object v0, p1, Lkdi;->responseHeader:Lkdp;

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Ldqf;-><init>(Lkdp;J)V

    .line 2232
    sget-boolean v0, Ldqf;->a:Z

    .line 1663
    if-eqz v0, :cond_0

    .line 1664
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "RemoveUserResponse from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1666
    :cond_0
    return-void
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 1670
    new-instance v0, Lkdi;

    invoke-direct {v0}, Lkdi;-><init>()V

    .line 3131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 1671
    check-cast v0, Lkdi;

    .line 1672
    iget-object v1, v0, Lkdi;->responseHeader:Lkdp;

    invoke-static {v1}, Ldsb;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1673
    new-instance v1, Ldqs;

    iget-object v0, v0, Lkdi;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 1675
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldsb;

    invoke-direct {v1, v0}, Ldsb;-><init>(Lkdi;)V

    move-object v0, v1

    goto :goto_0
.end method
