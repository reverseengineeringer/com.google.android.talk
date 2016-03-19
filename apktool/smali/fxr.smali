.class public Lfxr;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Lgfz;

.field public c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lgfz;)V
    .locals 1

    .prologue
    .line 5000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Laal;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgfz;

    iput-object v0, p0, Lfxr;->b:Lgfz;

    invoke-static {p1}, Laal;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lfxr;->a:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 2000
    :try_start_0
    iget-object v0, p0, Lfxr;->b:Lgfz;

    invoke-interface {v0}, Lgfz;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lax;

    invoke-direct {v1, v0}, Lax;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1000
    :try_start_0
    iget-object v0, p0, Lfxr;->b:Lgfz;

    invoke-interface {v0, p1}, Lgfz;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lfxr;->b:Lgfz;

    invoke-interface {v0}, Lgfz;->f()Lfxx;

    move-result-object v0

    invoke-static {v0}, Lfya;->a(Lfxx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lfxr;->c:Landroid/view/View;

    iget-object v0, p0, Lfxr;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lfxr;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lfxr;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lax;

    invoke-direct {v1, v0}, Lax;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a(Lgfm;)V
    .locals 2

    .prologue
    .line 6000
    :try_start_0
    iget-object v0, p0, Lfxr;->b:Lgfz;

    new-instance v1, Lgfk;

    invoke-direct {v1, p0, p1}, Lgfk;-><init>(Lfxr;Lgfm;)V

    invoke-interface {v0, v1}, Lgfz;->a(Lghv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lax;

    invoke-direct {v1, v0}, Lax;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public b()V
    .locals 2

    .prologue
    .line 3000
    :try_start_0
    iget-object v0, p0, Lfxr;->b:Lgfz;

    invoke-interface {v0}, Lgfz;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lax;

    invoke-direct {v1, v0}, Lax;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public c()V
    .locals 2

    .prologue
    .line 4000
    :try_start_0
    iget-object v0, p0, Lfxr;->b:Lgfz;

    invoke-interface {v0}, Lgfz;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lax;

    invoke-direct {v1, v0}, Lax;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
