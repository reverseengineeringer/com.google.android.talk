.class public final Ldxh;
.super Lecg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lecg",
        "<",
        "Ldxi;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ldxi;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lecg;-><init>(Leff;)V

    .line 24
    return-void
.end method


# virtual methods
.method public E_()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public F_()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method protected a(Lbfd;I)Ldom;
    .locals 2

    .prologue
    .line 28
    new-instance v1, Ldms;

    iget-object v0, p0, Ldxh;->a:Leff;

    check-cast v0, Ldxi;

    invoke-direct {v1, p1, p2, v0}, Ldms;-><init>(Lbfd;ILdxi;)V

    return-object v1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "background_queue"

    return-object v0
.end method

.method protected a(ILdvn;)V
    .locals 1

    .prologue
    .line 33
    invoke-static {p1}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 34
    invoke-static {v0, p2}, Ldvd;->a(Lbfd;Ljava/lang/Exception;)V

    .line 35
    return-void
.end method

.method public a(Lcwi;)Z
    .locals 5

    .prologue
    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lhbs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    check-cast p1, Ldxh;

    .line 65
    iget-object v0, p1, Ldxh;->a:Leff;

    check-cast v0, Ldxi;

    .line 68
    iget-object v1, p0, Ldxh;->a:Leff;

    check-cast v1, Ldxi;

    invoke-virtual {v1}, Ldxi;->a()Z

    move-result v1

    invoke-virtual {v0}, Ldxi;->a()Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 71
    iget-object v1, p0, Ldxh;->a:Leff;

    check-cast v1, Ldxi;

    invoke-virtual {v1}, Ldxi;->a()Z

    move-result v1

    .line 77
    :goto_0
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v0}, Ldxi;->a()Z

    move-result v2

    iget-object v0, p0, Ldxh;->a:Leff;

    check-cast v0, Ldxi;

    .line 80
    invoke-virtual {v0}, Ldxi;->a()Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x4c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Replacing a GetSelfInfoRequest. Old shouldRetry="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". New shouldRetry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    :cond_0
    return v1

    .line 74
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public a(Lcwk;Ldvn;)Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Ldxh;->a:Leff;

    check-cast v0, Ldxi;

    invoke-virtual {v0}, Ldxi;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lecg;->a(Lcwk;Ldvn;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Ldxh;->a:Leff;

    check-cast v0, Ldxi;

    invoke-virtual {v0}, Ldxi;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Ldvd;->c()J

    move-result-wide v0

    .line 47
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
