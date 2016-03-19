.class public Ldtc;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x2L


# direct methods
.method private constructor <init>(Lkde;)V
    .locals 4

    .prologue
    .line 2879
    iget-object v0, p1, Lkde;->responseHeader:Lkdp;

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Ldqf;-><init>(Lkdp;J)V

    .line 2880
    const-string v0, "Babel"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2881
    const-string v1, "Babel"

    const-string v0, "UploadAnalyticsResponse debugUrl: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p1, Lkde;->responseHeader:Lkdp;

    iget-object v0, v0, Lkdp;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2884
    :cond_0
    return-void

    .line 2881
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 2888
    new-instance v0, Lkde;

    invoke-direct {v0}, Lkde;-><init>()V

    .line 3131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 2889
    check-cast v0, Lkde;

    .line 2890
    iget-object v1, v0, Lkde;->responseHeader:Lkdp;

    invoke-static {v1}, Ldtc;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2891
    new-instance v1, Ldqs;

    iget-object v0, v0, Lkde;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 2893
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldtc;

    invoke-direct {v1, v0}, Ldtc;-><init>(Lkde;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lbfz;Ldyy;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 2900
    invoke-super {p0, p1, p2}, Ldqf;->a(Lbfz;Ldyy;)V

    .line 2901
    const-string v0, "Babel"

    invoke-static {v0, v7}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2902
    const-string v0, "Babel"

    const-string v1, "processEventResponse response status: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldtc;->c:Ldsf;

    iget v2, v2, Ldsf;->b:I

    iget-object v3, p0, Ldtc;->c:Ldsf;

    iget-object v3, v3, Ldsf;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1d

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error description"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2907
    :cond_0
    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v0

    .line 2908
    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    invoke-static {v0}, Ledq;->b(I)Ledq;

    move-result-object v0

    .line 2909
    invoke-virtual {v0, v7}, Ledq;->a(I)V

    .line 2910
    return-void
.end method
