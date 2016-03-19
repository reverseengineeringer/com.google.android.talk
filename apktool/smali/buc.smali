.class public Lbuc;
.super Lbut;
.source "SourceFile"

# interfaces
.implements Lbmv;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lbut;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lbuc;->binder:Lilh;

    const-class v1, Lbpq;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpq;

    invoke-interface {v0}, Lbpq;->i()V

    .line 29
    iget-object v0, p0, Lbuc;->binder:Lilh;

    const-class v1, Lbmw;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbmw;

    .line 30
    invoke-interface {v0}, Lbmw;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lbuc;->binder:Lilh;

    const-class v1, Lbkt;

    .line 32
    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbkt;

    .line 33
    sget-object v1, Lbkr;->d:Lbkr;

    invoke-interface {v0, v1}, Lbkt;->a(Lbkr;)V

    .line 34
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachBinder(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 17
    invoke-super {p0, p1}, Lbut;->onAttachBinder(Landroid/os/Bundle;)V

    .line 18
    iget-object v0, p0, Lbuc;->binder:Lilh;

    const-class v1, Lbub;

    new-instance v2, Lbud;

    invoke-direct {v2, p0}, Lbud;-><init>(Lbuc;)V

    invoke-virtual {v0, v1, v2}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 24
    return-void
.end method
