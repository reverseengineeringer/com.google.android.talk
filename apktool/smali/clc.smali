.class public final Lclc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcla;
.implements Lilu;
.implements Liov;
.implements Lioz;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private c:Lcmu;


# direct methods
.method constructor <init>(Landroid/content/Context;Liog;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lclc;->a:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lclc;->b:Landroid/content/Context;

    .line 31
    invoke-virtual {p2, p0}, Liog;->a(Lioz;)Lioz;

    .line 32
    return-void
.end method


# virtual methods
.method public X_()V
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lclc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lclc;->c:Lcmu;

    iget-object v1, p0, Lclc;->b:Landroid/content/Context;

    invoke-static {v1}, Laal;->c(Landroid/content/Context;)Lcms;

    move-result-object v1

    invoke-interface {v0, v1}, Lcmu;->a(Lcms;)V

    .line 78
    :cond_0
    return-void
.end method

.method public a(Lilh;)Lcla;
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcla;

    invoke-virtual {p1, v0, p0}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 65
    return-object p0
.end method

.method public a(Landroid/content/Context;Lilh;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcmu;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcmu;

    iput-object v0, p0, Lclc;->c:Lcmu;

    .line 71
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Laal;->w()V

    .line 55
    invoke-virtual {p0}, Lclc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lclc;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lclc;->b:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 37
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Laal;->w()V

    .line 43
    iget-object v0, p0, Lclc;->b:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 44
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 45
    const/16 v0, 0xa31

    invoke-static {v0}, Laal;->c(I)V

    .line 46
    iget-object v0, p0, Lclc;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 47
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lclc;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    return-void
.end method
