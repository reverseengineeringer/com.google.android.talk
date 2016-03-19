.class public Lils;
.super Lipb;
.source "SourceFile"

# interfaces
.implements Lilk;


# instance fields
.field private a:Liol;

.field public final j:Lilh;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lipb;-><init>()V

    .line 18
    new-instance v0, Lilh;

    invoke-direct {v0}, Lilh;-><init>()V

    iput-object v0, p0, Lils;->j:Lilh;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lils;->j:Lilh;

    new-instance v1, Lilz;

    iget-object v2, p0, Lils;->k:Lino;

    invoke-direct {v1, p0, v2}, Lilz;-><init>(Landroid/app/Activity;Liog;)V

    invoke-virtual {v0, v1}, Lilh;->a(Lilq;)Lilh;

    .line 79
    return-void
.end method

.method public getBinder()Lilh;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lils;->j:Lilh;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 28
    invoke-virtual {p0}, Lils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lilh;->b(Landroid/content/Context;)Lilh;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lils;->j:Lilh;

    invoke-virtual {v1, p0}, Lilh;->a(Landroid/content/Context;)V

    .line 30
    iget-object v1, p0, Lils;->j:Lilh;

    invoke-virtual {v1, v0}, Lilh;->a(Lilh;)V

    .line 32
    invoke-virtual {p0, p1}, Lils;->a(Landroid/os/Bundle;)V

    .line 1083
    iget-object v0, p0, Lils;->j:Lilh;

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

    .line 1084
    iget-object v2, p0, Lils;->k:Lino;

    invoke-interface {v0, p0, v2}, Limd;->a(Landroid/app/Activity;Liog;)V

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lils;->j:Lilh;

    invoke-virtual {v0}, Lilh;->a()V

    .line 36
    iget-object v0, p0, Lils;->k:Lino;

    new-instance v1, Lilt;

    invoke-direct {v1, p0, p1}, Lilt;-><init>(Lils;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lino;->a(Liol;)Liol;

    move-result-object v0

    iput-object v0, p0, Lils;->a:Liol;

    .line 46
    invoke-super {p0, p1}, Lipb;->onCreate(Landroid/os/Bundle;)V

    .line 47
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lils;->k:Lino;

    iget-object v1, p0, Lils;->a:Liol;

    invoke-virtual {v0, v1}, Lino;->b(Liol;)V

    .line 52
    invoke-super {p0}, Lipb;->onDestroy()V

    .line 53
    return-void
.end method
