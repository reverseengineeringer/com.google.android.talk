.class public Limg;
.super Lipe;
.source "SourceFile"

# interfaces
.implements Lhsb;
.implements Lilk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lipe;",
        "Lhsb;",
        "Lilk;"
    }
.end annotation


# instance fields
.field private a:Liol;

.field public final binder:Lilh;

.field public final context:Lill;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lipe;-><init>()V

    .line 22
    new-instance v0, Lill;

    invoke-direct {v0}, Lill;-><init>()V

    iput-object v0, p0, Limg;->context:Lill;

    .line 23
    iget-object v0, p0, Limg;->context:Lill;

    invoke-virtual {v0}, Lill;->getBinder()Lilh;

    move-result-object v0

    iput-object v0, p0, Limg;->binder:Lilh;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 2

    .prologue
    .line 2042
    invoke-direct {p0}, Limg;-><init>()V

    .line 2044
    new-instance v0, Lhsc;

    iget-object v1, p0, Limg;->lifecycle:Linz;

    invoke-direct {v0, v1}, Lhsc;-><init>(Liog;)V

    iget-object v1, p0, Limg;->binder:Lilh;

    .line 2045
    invoke-virtual {v0, v1}, Lhsc;->a(Lilh;)Lhsc;

    move-result-object v0

    sget v1, Laal;->tA:I

    invoke-virtual {v0, v1, p0}, Lhsc;->a(ILhsb;)Lhsc;

    .line 2046
    return-void
.end method


# virtual methods
.method public getBinder()Lilh;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Limg;->binder:Lilh;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Limg;->context:Lill;

    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 72
    invoke-super {p0, p1}, Lipe;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 73
    iget-object v0, p0, Limg;->context:Lill;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 2050
    invoke-virtual {p0}, Limg;->getParentFragment()Lav;

    move-result-object v0

    check-cast v0, Lhqm;

    .line 2051
    invoke-interface {v0}, Lhqm;->a()V

    .line 2052
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Limg;->getParentFragment()Lav;

    move-result-object v0

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Lav;)Lilh;

    move-result-object v0

    .line 39
    iget-object v1, p0, Limg;->context:Lill;

    invoke-virtual {v1, p1}, Lill;->a(Landroid/content/Context;)V

    .line 40
    iget-object v1, p0, Limg;->context:Lill;

    invoke-virtual {v1, v0}, Lill;->a(Lilh;)V

    .line 41
    iget-object v0, p0, Limg;->binder:Lilh;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lilh;->b(Ljava/lang/String;)V

    .line 42
    invoke-super {p0, p1}, Lipe;->onAttach(Landroid/app/Activity;)V

    .line 43
    return-void
.end method

.method public onAttachBinder(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Limg;->binder:Lilh;

    new-instance v1, Limm;

    iget-object v2, p0, Limg;->lifecycle:Linz;

    invoke-direct {v1, p0, v2}, Limm;-><init>(Lav;Liog;)V

    invoke-virtual {v0, v1}, Lilh;->a(Lilq;)Lilh;

    .line 100
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Limg;->onAttachBinder(Landroid/os/Bundle;)V

    .line 1104
    iget-object v0, p0, Limg;->binder:Lilh;

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
    iget-object v0, p0, Limg;->binder:Lilh;

    invoke-virtual {v0}, Lilh;->a()V

    .line 51
    iget-object v0, p0, Limg;->lifecycle:Linz;

    new-instance v1, Limh;

    invoke-direct {v1, p0, p1}, Limh;-><init>(Limg;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Linz;->a(Liol;)Liol;

    move-result-object v0

    iput-object v0, p0, Limg;->a:Liol;

    .line 61
    invoke-super {p0, p1}, Lipe;->onCreate(Landroid/os/Bundle;)V

    .line 62
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Limg;->lifecycle:Linz;

    iget-object v1, p0, Limg;->a:Liol;

    invoke-virtual {v0, v1}, Linz;->b(Liol;)V

    .line 67
    invoke-super {p0}, Lipe;->onDestroy()V

    .line 68
    return-void
.end method
