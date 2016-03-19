.class public Ldsc;
.super Ldqr;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>(Lkdk;)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 1687
    iget-object v1, p1, Lkdk;->responseHeader:Lkdp;

    iget-object v0, p1, Lkdk;->a:Ljzl;

    iget-object v0, v0, Ljzl;->c:Ljava/lang/Long;

    .line 2051
    invoke-static {v0, v4, v5}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 1688
    iget-object v0, p1, Lkdk;->a:Ljzl;

    iget-object v0, v0, Ljzl;->o:Ljava/lang/Long;

    .line 3051
    invoke-static {v0, v4, v5}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 1689
    iget-object v0, p1, Lkdk;->a:Ljzl;

    iget-object v6, v0, Ljzl;->d:Ljava/lang/String;

    move-object v0, p0

    .line 1687
    invoke-direct/range {v0 .. v6}, Ldqr;-><init>(Lkdp;JJLjava/lang/String;)V

    .line 3232
    sget-boolean v0, Ldqf;->a:Z

    .line 1691
    if-eqz v0, :cond_0

    .line 1692
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "RenameConversationResponse from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1694
    :cond_0
    return-void
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 1698
    new-instance v0, Lkdk;

    invoke-direct {v0}, Lkdk;-><init>()V

    .line 4131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 1699
    check-cast v0, Lkdk;

    .line 1700
    iget-object v1, v0, Lkdk;->responseHeader:Lkdp;

    invoke-static {v1}, Ldsc;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1701
    new-instance v1, Ldqs;

    iget-object v0, v0, Lkdk;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 1703
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldsc;

    invoke-direct {v1, v0}, Ldsc;-><init>(Lkdk;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lbfz;Ldyy;)V
    .locals 0

    .prologue
    .line 1713
    invoke-super {p0, p1, p2}, Ldqr;->a(Lbfz;Ldyy;)V

    .line 1719
    return-void
.end method
