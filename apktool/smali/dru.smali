.class public Ldru;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>(Lkei;)V
    .locals 4

    .prologue
    .line 1873
    iget-object v0, p1, Lkei;->responseHeader:Lkdp;

    iget-object v1, p1, Lkei;->a:Ljava/lang/Long;

    .line 2051
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 1873
    invoke-direct {p0, v0, v2, v3}, Ldqf;-><init>(Lkdp;J)V

    .line 2232
    sget-boolean v0, Ldqf;->a:Z

    .line 1875
    if-eqz v0, :cond_0

    .line 1876
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "NotificationLevelResponse from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1878
    :cond_0
    return-void
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 1882
    new-instance v0, Lkei;

    invoke-direct {v0}, Lkei;-><init>()V

    .line 3131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 1883
    check-cast v0, Lkei;

    .line 1884
    iget-object v1, v0, Lkei;->responseHeader:Lkdp;

    invoke-static {v1}, Ldru;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1885
    new-instance v1, Ldqs;

    iget-object v0, v0, Lkei;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 1887
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldru;

    invoke-direct {v1, v0}, Ldru;-><init>(Lkei;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lbfz;Ldyy;)V
    .locals 4

    .prologue
    .line 1897
    invoke-super {p0, p1, p2}, Ldqf;->a(Lbfz;Ldyy;)V

    .line 1898
    sget-boolean v0, Lbft;->a:Z

    .line 1901
    iget-object v0, p0, Ldru;->c:Ldsf;

    iget v0, v0, Ldsf;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1904
    const-string v0, "Babel"

    iget-object v1, p0, Ldru;->c:Ldsf;

    iget v1, v1, Ldsf;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x3b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to set conversation preference with code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1909
    :cond_0
    return-void
.end method
