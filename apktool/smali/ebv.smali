.class public final Lebv;
.super Lecg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lecg",
        "<",
        "Ldpo;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Ldpo;


# direct methods
.method public constructor <init>(Ldpo;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lecg;-><init>(Leff;)V

    .line 29
    iput-object p1, p0, Lebv;->b:Ldpo;

    .line 30
    return-void
.end method


# virtual methods
.method public E_()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lebv;->b:Ldpo;

    invoke-virtual {v0}, Ldpo;->E_()Z

    move-result v0

    return v0
.end method

.method public F_()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lebv;->b:Ldpo;

    invoke-virtual {v0}, Ldpo;->F_()Z

    move-result v0

    return v0
.end method

.method protected a(Lbfd;I)Ldom;
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lebv;->b:Ldpo;

    invoke-virtual {v0}, Ldpo;->k()V

    .line 35
    const/4 v0, 0x0

    .line 36
    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v1

    .line 1036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 39
    const-class v2, Lawm;

    .line 40
    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawm;

    invoke-interface {v0, v1}, Lawm;->e(I)Ljava/lang/String;

    move-result-object v0

    .line 42
    :cond_0
    iget-object v1, p0, Lebv;->b:Ldpo;

    invoke-virtual {v1}, Ldpo;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    new-instance v1, Ldol;

    iget-object v2, p0, Lebv;->b:Ldpo;

    invoke-direct {v1, p1, p2, v2, v0}, Ldol;-><init>(Lbfd;ILdpo;Ljava/lang/String;)V

    move-object v0, v1

    .line 45
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ldok;

    iget-object v2, p0, Lebv;->b:Ldpo;

    invoke-direct {v1, p1, p2, v2, v0}, Ldok;-><init>(Lbfd;ILdpo;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lebv;->b:Ldpo;

    invoke-virtual {v0}, Ldpo;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(ILdvn;)V
    .locals 2

    .prologue
    .line 52
    invoke-static {p1}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lebv;->b:Ldpo;

    invoke-virtual {v1, v0, p2}, Ldpo;->a(Lbfd;Ldvn;)V

    .line 55
    invoke-virtual {p2}, Ldvn;->c()I

    move-result v0

    const/16 v1, 0x79

    if-eq v0, v1, :cond_0

    .line 1102
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lebw;

    invoke-direct {v1, p0}, Lebw;-><init>(Lebv;)V

    .line 1103
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    :cond_0
    return-void
.end method

.method public a(Lcwi;)Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcwk;Ldvn;)Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lebv;->b:Ldpo;

    invoke-virtual {v0, p1, p2}, Ldpo;->a(Lcwk;Ldvn;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lebv;->b:Ldpo;

    invoke-virtual {v0, p1}, Ldpo;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lebv;->b:Ldpo;

    invoke-virtual {v0}, Ldpo;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lebv;->b:Ldpo;

    invoke-virtual {v0}, Ldpo;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
