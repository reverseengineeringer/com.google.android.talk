.class final Lefi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbwl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lbwm;

    invoke-direct {v0}, Lbwm;-><init>()V

    const-string v1, "hangouts_rpc"

    .line 30
    invoke-virtual {v0, v1}, Lbwm;->a(Ljava/lang/String;)Lbwm;

    move-result-object v0

    const-string v1, "Module containing code for making rpcs to datamixer."

    .line 31
    invoke-virtual {v0, v1}, Lbwm;->b(Ljava/lang/String;)Lbwm;

    move-result-object v0

    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Lbwm;->a(Z)Lbwm;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lbwm;->a()Lbwl;

    move-result-object v0

    iput-object v0, p0, Lefi;->a:Lbwl;

    .line 34
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lihv;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lefi;->a:Lbwl;

    new-instance v1, Lefg;

    invoke-direct {v1, p1}, Lefg;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1, v1}, Lbwl;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lihv;

    return-object v0
.end method

.method public a()[Lbwl;
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Lbwl;

    const/4 v1, 0x0

    iget-object v2, p0, Lefi;->a:Lbwl;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public b(Landroid/content/Context;)Lefg;
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lefi;->a:Lbwl;

    new-instance v1, Lefg;

    invoke-direct {v1, p1}, Lefg;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1, v1}, Lbwl;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lefg;

    return-object v0
.end method

.method public c(Landroid/content/Context;)Lorg/chromium/net/UrlRequestContextConfig;
    .locals 6

    .prologue
    .line 59
    const-string v0, "babel_quic_for_cronet"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 61
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "cronet_cache"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 63
    new-instance v2, Lorg/chromium/net/HttpUrlRequestFactoryConfig;

    invoke-direct {v2}, Lorg/chromium/net/HttpUrlRequestFactoryConfig;-><init>()V

    .line 64
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/chromium/net/HttpUrlRequestFactoryConfig;->b(Ljava/lang/String;)Lorg/chromium/net/CronetEngine$Builder;

    move-result-object v1

    const/4 v3, 0x2

    const-wide/32 v4, 0x100000

    .line 66
    invoke-virtual {v1, v3, v4, v5}, Lorg/chromium/net/CronetEngine$Builder;->a(IJ)Lorg/chromium/net/CronetEngine$Builder;

    move-result-object v1

    .line 68
    invoke-virtual {v1, v0}, Lorg/chromium/net/CronetEngine$Builder;->a(Z)Lorg/chromium/net/CronetEngine$Builder;

    move-result-object v0

    const-string v1, "www.googleapis.com"

    .line 69
    invoke-virtual {v0, v1}, Lorg/chromium/net/CronetEngine$Builder;->d(Ljava/lang/String;)Lorg/chromium/net/CronetEngine$Builder;

    .line 70
    iget-object v0, p0, Lefi;->a:Lbwl;

    invoke-interface {v0, p1, v2}, Lbwl;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/UrlRequestContextConfig;

    return-object v0
.end method
