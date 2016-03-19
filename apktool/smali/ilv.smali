.class public Lilv;
.super Lipc;
.source "SourceFile"

# interfaces
.implements Lilk;


# instance fields
.field public final A:Lilh;

.field private j:Liol;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lipc;-><init>()V

    .line 19
    new-instance v0, Lilh;

    invoke-direct {v0}, Lilh;-><init>()V

    iput-object v0, p0, Lilv;->A:Lilh;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lilv;->A:Lilh;

    new-instance v1, Lilz;

    iget-object v2, p0, Lilv;->B:Lipg;

    invoke-direct {v1, p0, v2}, Lilz;-><init>(Landroid/app/Activity;Liog;)V

    invoke-virtual {v0, v1}, Lilh;->a(Lilq;)Lilh;

    .line 81
    return-void
.end method

.method public getBinder()Lilh;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lilv;->A:Lilh;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 29
    invoke-virtual {p0}, Lilv;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lilh;->b(Landroid/content/Context;)Lilh;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lilv;->A:Lilh;

    invoke-virtual {v1, p0}, Lilh;->a(Landroid/content/Context;)V

    .line 31
    iget-object v1, p0, Lilv;->A:Lilh;

    invoke-virtual {v1, v0}, Lilh;->a(Lilh;)V

    .line 33
    invoke-virtual {p0, p1}, Lilv;->a(Landroid/os/Bundle;)V

    .line 1085
    iget-object v0, p0, Lilv;->A:Lilh;

    const-class v1, Limd;

    invoke-virtual {v0, v1}, Lilh;->c(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limd;

    .line 1086
    iget-object v2, p0, Lilv;->B:Lipg;

    invoke-interface {v0, p0, v2}, Limd;->a(Landroid/app/Activity;Liog;)V

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lilv;->A:Lilh;

    invoke-virtual {v0}, Lilh;->a()V

    .line 37
    iget-object v0, p0, Lilv;->B:Lipg;

    new-instance v1, Lilw;

    invoke-direct {v1, p0, p1}, Lilw;-><init>(Lilv;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lipg;->a(Liol;)Liol;

    move-result-object v0

    iput-object v0, p0, Lilv;->j:Liol;

    .line 48
    invoke-super {p0, p1}, Lipc;->onCreate(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lilv;->B:Lipg;

    iget-object v1, p0, Lilv;->j:Liol;

    invoke-virtual {v0, v1}, Lipg;->b(Liol;)V

    .line 54
    invoke-super {p0}, Lipc;->onDestroy()V

    .line 55
    return-void
.end method
