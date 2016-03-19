.class public final Lahm;
.super Landroid/content/ContextWrapper;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Laht;

.field private final c:Laut;

.field private final d:Lauk;

.field private final e:Lalh;

.field private final f:Landroid/content/ComponentCallbacks2;

.field private final g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Laht;Laut;Lauk;Lalh;Landroid/content/ComponentCallbacks2;I)V
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p2, p0, Lahm;->b:Laht;

    .line 37
    iput-object p3, p0, Lahm;->c:Laut;

    .line 38
    iput-object p4, p0, Lahm;->d:Lauk;

    .line 39
    iput-object p5, p0, Lahm;->e:Lalh;

    .line 40
    iput-object p6, p0, Lahm;->f:Landroid/content/ComponentCallbacks2;

    .line 41
    iput p7, p0, Lahm;->g:I

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lahm;->a:Landroid/os/Handler;

    .line 44
    return-void
.end method


# virtual methods
.method public a()Lauk;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lahm;->d:Lauk;

    return-object v0
.end method

.method public b()Lalh;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lahm;->e:Lalh;

    return-object v0
.end method

.method public c()Laht;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lahm;->b:Laht;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lahm;->g:I

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lahm;->f:Landroid/content/ComponentCallbacks2;

    invoke-interface {v0, p1}, Landroid/content/ComponentCallbacks2;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 78
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lahm;->f:Landroid/content/ComponentCallbacks2;

    invoke-interface {v0}, Landroid/content/ComponentCallbacks2;->onLowMemory()V

    .line 83
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lahm;->f:Landroid/content/ComponentCallbacks2;

    invoke-interface {v0, p1}, Landroid/content/ComponentCallbacks2;->onTrimMemory(I)V

    .line 73
    return-void
.end method
