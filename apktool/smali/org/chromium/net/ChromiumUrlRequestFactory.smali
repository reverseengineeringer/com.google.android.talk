.class public Lorg/chromium/net/ChromiumUrlRequestFactory;
.super Lorg/chromium/net/HttpUrlRequestFactory;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/chromium/base/annotations/UsedByReflection;
.end annotation


# instance fields
.field private a:Lorg/chromium/net/ChromiumUrlRequestContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/net/CronetEngine$Builder;)V
    .locals 2
    .annotation build Lorg/chromium/base/annotations/UsedByReflection;
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/chromium/net/HttpUrlRequestFactory;-><init>()V

    .line 26
    invoke-virtual {p0}, Lorg/chromium/net/ChromiumUrlRequestFactory;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {p2}, Lorg/chromium/net/CronetEngine$Builder;->b()Ljava/lang/String;

    move-result-object v0

    .line 28
    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lorg/chromium/net/CronetEngine$Builder;

    invoke-direct {v0, p1}, Lorg/chromium/net/CronetEngine$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/chromium/net/CronetEngine$Builder;->a()Ljava/lang/String;

    move-result-object v0

    .line 32
    :cond_0
    new-instance v1, Lorg/chromium/net/ChromiumUrlRequestContext;

    invoke-direct {v1, p1, v0, p2}, Lorg/chromium/net/ChromiumUrlRequestContext;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/chromium/net/CronetEngine$Builder;)V

    iput-object v1, p0, Lorg/chromium/net/ChromiumUrlRequestFactory;->a:Lorg/chromium/net/ChromiumUrlRequestContext;

    .line 35
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/util/Map;Ljava/nio/channels/WritableByteChannel;Lorg/chromium/net/HttpUrlRequestListener;)Lorg/chromium/net/ChromiumUrlRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/nio/channels/WritableByteChannel;",
            "Lorg/chromium/net/HttpUrlRequestListener;",
            ")",
            "Lorg/chromium/net/ChromiumUrlRequest;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lorg/chromium/net/ChromiumUrlRequest;

    iget-object v1, p0, Lorg/chromium/net/ChromiumUrlRequestFactory;->a:Lorg/chromium/net/ChromiumUrlRequestContext;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/chromium/net/ChromiumUrlRequest;-><init>(Lorg/chromium/net/ChromiumUrlRequestContext;Ljava/lang/String;ILjava/util/Map;Ljava/nio/channels/WritableByteChannel;Lorg/chromium/net/HttpUrlRequestListener;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;ILjava/util/Map;Lorg/chromium/net/HttpUrlRequestListener;)Lorg/chromium/net/ChromiumUrlRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/chromium/net/HttpUrlRequestListener;",
            ")",
            "Lorg/chromium/net/ChromiumUrlRequest;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lorg/chromium/net/ChromiumUrlRequest;

    iget-object v1, p0, Lorg/chromium/net/ChromiumUrlRequestFactory;->a:Lorg/chromium/net/ChromiumUrlRequestContext;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/net/ChromiumUrlRequest;-><init>(Lorg/chromium/net/ChromiumUrlRequestContext;Ljava/lang/String;ILjava/util/Map;Lorg/chromium/net/HttpUrlRequestListener;)V

    return-object v0
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Chromium/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1063
    invoke-static {}, Lorg/chromium/net/Version;->a()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/String;ILjava/util/Map;Ljava/nio/channels/WritableByteChannel;Lorg/chromium/net/HttpUrlRequestListener;)Lorg/chromium/net/HttpUrlRequest;
    .locals 1

    .prologue
    .line 19
    invoke-virtual/range {p0 .. p5}, Lorg/chromium/net/ChromiumUrlRequestFactory;->a(Ljava/lang/String;ILjava/util/Map;Ljava/nio/channels/WritableByteChannel;Lorg/chromium/net/HttpUrlRequestListener;)Lorg/chromium/net/ChromiumUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/String;ILjava/util/Map;Lorg/chromium/net/HttpUrlRequestListener;)Lorg/chromium/net/HttpUrlRequest;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/chromium/net/ChromiumUrlRequestFactory;->a(Ljava/lang/String;ILjava/util/Map;Lorg/chromium/net/HttpUrlRequestListener;)Lorg/chromium/net/ChromiumUrlRequest;

    move-result-object v0

    return-object v0
.end method
