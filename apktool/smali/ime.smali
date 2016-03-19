.class public Lime;
.super Lipd;
.source "SourceFile"

# interfaces
.implements Lilk;


# instance fields
.field private aj:Liol;

.field public final am:Lill;

.field public final an:Lilh;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lipd;-><init>()V

    .line 23
    new-instance v0, Lill;

    invoke-direct {v0}, Lill;-><init>()V

    iput-object v0, p0, Lime;->am:Lill;

    .line 24
    iget-object v0, p0, Lime;->am:Lill;

    invoke-virtual {v0}, Lill;->getBinder()Lilh;

    move-result-object v0

    iput-object v0, p0, Lime;->an:Lilh;

    return-void
.end method


# virtual methods
.method public e(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lime;->an:Lilh;

    new-instance v1, Limm;

    iget-object v2, p0, Lime;->ao:Linz;

    invoke-direct {v1, p0, v2}, Limm;-><init>(Lav;Liog;)V

    invoke-virtual {v0, v1}, Lilh;->a(Lilq;)Lilh;

    .line 101
    return-void
.end method

.method public getBinder()Lilh;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lime;->an:Lilh;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lime;->am:Lill;

    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 73
    invoke-super {p0, p1}, Lipd;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 74
    iget-object v0, p0, Lime;->am:Lill;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lime;->getParentFragment()Lav;

    move-result-object v0

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Lav;)Lilh;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lime;->am:Lill;

    invoke-virtual {v1, p1}, Lill;->a(Landroid/content/Context;)V

    .line 41
    iget-object v1, p0, Lime;->am:Lill;

    invoke-virtual {v1, v0}, Lill;->a(Lilh;)V

    .line 42
    iget-object v0, p0, Lime;->an:Lilh;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lilh;->b(Ljava/lang/String;)V

    .line 43
    invoke-super {p0, p1}, Lipd;->onAttach(Landroid/app/Activity;)V

    .line 44
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lime;->e(Landroid/os/Bundle;)V

    .line 1105
    iget-object v0, p0, Lime;->an:Lilh;

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

    .line 51
    :cond_0
    iget-object v0, p0, Lime;->an:Lilh;

    invoke-virtual {v0}, Lilh;->a()V

    .line 52
    iget-object v0, p0, Lime;->ao:Linz;

    new-instance v1, Limf;

    invoke-direct {v1, p0, p1}, Limf;-><init>(Lime;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Linz;->a(Liol;)Liol;

    move-result-object v0

    iput-object v0, p0, Lime;->aj:Liol;

    .line 62
    invoke-super {p0, p1}, Lipd;->onCreate(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lime;->ao:Linz;

    iget-object v1, p0, Lime;->aj:Liol;

    invoke-virtual {v0, v1}, Linz;->b(Liol;)V

    .line 68
    invoke-super {p0}, Lipd;->onDestroy()V

    .line 69
    return-void
.end method
