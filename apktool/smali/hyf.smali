.class public final Lhyf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lhyf;->a:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    .prologue
    .line 25
    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    .line 26
    iget-object v0, p0, Lhyf;->a:Landroid/content/Context;

    const-class v1, Lhye;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhye;

    invoke-interface {v0}, Lhye;->k()V

    .line 28
    :cond_0
    return-void
.end method
