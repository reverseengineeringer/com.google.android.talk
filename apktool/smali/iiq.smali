.class public Liiq;
.super Lijb;
.source "SourceFile"

# interfaces
.implements Lilk;


# instance fields
.field public final a:Lill;

.field public final b:Lilh;

.field private f:Liol;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lijb;-><init>()V

    .line 22
    new-instance v0, Lill;

    invoke-direct {v0}, Lill;-><init>()V

    iput-object v0, p0, Liiq;->a:Lill;

    .line 23
    iget-object v0, p0, Liiq;->a:Lill;

    invoke-virtual {v0}, Lill;->getBinder()Lilh;

    move-result-object v0

    iput-object v0, p0, Liiq;->b:Lilh;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Liiq;->b:Lilh;

    new-instance v1, Limm;

    iget-object v2, p0, Liiq;->c:Linz;

    invoke-direct {v1, p0, v2}, Limm;-><init>(Lav;Liog;)V

    invoke-virtual {v0, v1}, Lilh;->a(Lilq;)Lilh;

    .line 78
    return-void
.end method

.method public getBinder()Lilh;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Liiq;->b:Lilh;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Liiq;->a:Lill;

    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 72
    invoke-super {p0, p1}, Lijb;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 73
    iget-object v0, p0, Liiq;->a:Lill;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Liiq;->getParentFragment()Lav;

    move-result-object v0

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Lav;)Lilh;

    move-result-object v0

    .line 39
    iget-object v1, p0, Liiq;->a:Lill;

    invoke-virtual {v1, p1}, Lill;->a(Landroid/content/Context;)V

    .line 40
    iget-object v1, p0, Liiq;->a:Lill;

    invoke-virtual {v1, v0}, Lill;->a(Lilh;)V

    .line 41
    iget-object v0, p0, Liiq;->c:Linz;

    invoke-virtual {v0, p1}, Linz;->a(Landroid/app/Activity;)V

    .line 42
    invoke-super {p0, p1}, Lijb;->onAttach(Landroid/app/Activity;)V

    .line 43
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Liiq;->a(Landroid/os/Bundle;)V

    .line 1082
    iget-object v0, p0, Liiq;->b:Lilh;

    const-class v1, Limn;

    invoke-virtual {v0, v1}, Lilh;->c(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Liiq;->b:Lilh;

    invoke-virtual {v0}, Lilh;->a()V

    .line 51
    iget-object v0, p0, Liiq;->c:Linz;

    new-instance v1, Liir;

    invoke-direct {v1, p0, p1}, Liir;-><init>(Liiq;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Linz;->a(Liol;)Liol;

    move-result-object v0

    iput-object v0, p0, Liiq;->f:Liol;

    .line 61
    invoke-super {p0, p1}, Lijb;->onCreate(Landroid/os/Bundle;)V

    .line 62
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Liiq;->c:Linz;

    iget-object v1, p0, Liiq;->f:Liol;

    invoke-virtual {v0, v1}, Linz;->b(Liol;)V

    .line 67
    invoke-super {p0}, Lijb;->onDestroy()V

    .line 68
    return-void
.end method
