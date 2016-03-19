.class public final Ledt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lilu;
.implements Lios;
.implements Liov;
.implements Lioz;


# instance fields
.field a:Lhpu;

.field b:Lbdp;

.field c:Leat;

.field d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Liog;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1, p0}, Liog;->a(Lioz;)Lioz;

    .line 27
    return-void
.end method


# virtual methods
.method public X_()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Ledt;->d:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "requestWarmSyncRunnable should be null"

    invoke-static {v0, v1}, Laen;->b(ZLjava/lang/Object;)V

    .line 42
    new-instance v0, Ledu;

    invoke-direct {v0, p0}, Ledu;-><init>(Ledt;)V

    iput-object v0, p0, Ledt;->d:Ljava/lang/Runnable;

    .line 59
    iget-object v0, p0, Ledt;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    .line 60
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Ledt;->d:Ljava/lang/Runnable;

    .line 1089
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Ledt;->d:Ljava/lang/Runnable;

    .line 66
    return-void
.end method

.method public a(Landroid/content/Context;Lilh;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lhpu;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    iput-object v0, p0, Ledt;->a:Lhpu;

    .line 32
    const-class v0, Lbdp;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdp;

    iput-object v0, p0, Ledt;->b:Lbdp;

    .line 33
    const-class v0, Leat;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leat;

    iput-object v0, p0, Ledt;->c:Leat;

    .line 34
    return-void
.end method
