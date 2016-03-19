.class public final Lorg/chromium/net/HttpUrlConnectionUrlRequestFactory;
.super Lorg/chromium/net/HttpUrlRequestFactory;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/net/CronetEngine$Builder;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/chromium/net/HttpUrlRequestFactory;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/chromium/net/HttpUrlConnectionUrlRequestFactory;->a:Landroid/content/Context;

    .line 26
    invoke-virtual {p2}, Lorg/chromium/net/CronetEngine$Builder;->b()Ljava/lang/String;

    move-result-object v0

    .line 27
    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lorg/chromium/net/CronetEngine$Builder;

    iget-object v1, p0, Lorg/chromium/net/HttpUrlConnectionUrlRequestFactory;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/chromium/net/CronetEngine$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/chromium/net/CronetEngine$Builder;->a()Ljava/lang/String;

    move-result-object v0

    .line 31
    :cond_0
    iput-object v0, p0, Lorg/chromium/net/HttpUrlConnectionUrlRequestFactory;->b:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpUrlConnection/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/net/Version;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;ILjava/util/Map;Ljava/nio/channels/WritableByteChannel;Lorg/chromium/net/HttpUrlRequestListener;)Lorg/chromium/net/HttpUrlRequest;
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
            "Lorg/chromium/net/HttpUrlRequest;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lmow;

    iget-object v1, p0, Lorg/chromium/net/HttpUrlConnectionUrlRequestFactory;->a:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/net/HttpUrlConnectionUrlRequestFactory;->b:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lmow;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/nio/channels/WritableByteChannel;Lorg/chromium/net/HttpUrlRequestListener;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;ILjava/util/Map;Lorg/chromium/net/HttpUrlRequestListener;)Lorg/chromium/net/HttpUrlRequest;
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
            "Lorg/chromium/net/HttpUrlRequest;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lmow;

    iget-object v1, p0, Lorg/chromium/net/HttpUrlConnectionUrlRequestFactory;->a:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/net/HttpUrlConnectionUrlRequestFactory;->b:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmow;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/chromium/net/HttpUrlRequestListener;)V

    return-object v0
.end method
