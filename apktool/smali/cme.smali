.class final Lcme;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lilu;
.implements Lios;
.implements Liov;
.implements Lioz;


# instance fields
.field final a:Lba;

.field b:Lcmu;

.field c:Lcln;

.field d:Lclt;

.field e:Lcls;

.field private final f:Lclm;

.field private final g:Landroid/os/Handler;

.field private h:Ljava/lang/Runnable;

.field private i:Z


# direct methods
.method constructor <init>(Lba;Liog;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcme;->a:Lba;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcme;->g:Landroid/os/Handler;

    .line 52
    new-instance v0, Lcmf;

    invoke-direct {v0, p0}, Lcmf;-><init>(Lcme;)V

    iput-object v0, p0, Lcme;->f:Lclm;

    .line 80
    invoke-virtual {p2, p0}, Liog;->a(Lioz;)Lioz;

    .line 81
    return-void
.end method


# virtual methods
.method public X_()V
    .locals 2

    .prologue
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcme;->i:Z

    .line 92
    iget-object v0, p0, Lcme;->c:Lcln;

    iget-object v1, p0, Lcme;->f:Lclm;

    invoke-interface {v0, v1}, Lcln;->a(Lclm;)V

    .line 93
    iget-object v0, p0, Lcme;->c:Lcln;

    invoke-interface {v0}, Lcln;->a()Lkhk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcme;->c:Lcln;

    invoke-interface {v0}, Lcln;->a()Lkhk;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcme;->a(Lkhk;)V

    .line 96
    :cond_0
    return-void
.end method

.method public a()V
    .locals 2

    .prologue
    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcme;->i:Z

    .line 101
    iget-object v0, p0, Lcme;->c:Lcln;

    iget-object v1, p0, Lcme;->f:Lclm;

    invoke-interface {v0, v1}, Lcln;->b(Lclm;)V

    .line 102
    invoke-virtual {p0}, Lcme;->c()V

    .line 1140
    iget-object v0, p0, Lcme;->e:Lcls;

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcme;->e:Lcls;

    invoke-virtual {v0}, Lcls;->b()V

    .line 1142
    const/4 v0, 0x0

    iput-object v0, p0, Lcme;->e:Lcls;

    .line 104
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lilh;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 85
    const-class v0, Lcmu;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcmu;

    iput-object v0, p0, Lcme;->b:Lcmu;

    .line 86
    const-class v0, Lcln;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcln;

    iput-object v0, p0, Lcme;->c:Lcln;

    .line 87
    return-void
.end method

.method a(Lkhk;)V
    .locals 4

    .prologue
    .line 107
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcme;->e:Lcls;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcme;->i:Z

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Lcmh;

    invoke-direct {v0, p0, p1}, Lcmh;-><init>(Lcme;Lkhk;)V

    iput-object v0, p0, Lcme;->h:Ljava/lang/Runnable;

    .line 109
    iget-object v0, p0, Lcme;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcme;->h:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    :cond_0
    return-void
.end method

.method c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-object v0, p0, Lcme;->h:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcme;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcme;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 116
    iput-object v2, p0, Lcme;->h:Ljava/lang/Runnable;

    .line 119
    :cond_0
    iget-object v0, p0, Lcme;->d:Lclt;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcme;->d:Lclt;

    invoke-virtual {v0}, Lclt;->b()V

    .line 121
    iput-object v2, p0, Lcme;->d:Lclt;

    .line 123
    :cond_1
    return-void
.end method
