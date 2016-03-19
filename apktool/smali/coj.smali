.class public final Lcoj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhbr;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;[BI)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BI)[B"
        }
    .end annotation

    .prologue
    .line 32
    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcoj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;[BII)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BII)[B"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 38
    new-instance v0, Lcok;

    .line 1069
    invoke-direct {v0}, Lcok;-><init>()V

    .line 42
    const-string v1, "Babel_CronetHttpSender"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    const-string v1, "Babel_CronetHttpSender"

    const-string v2, "Request headers for [%s]: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v5

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    :cond_0
    invoke-static {p1, p2, p6, p3, v0}, Liff;->a(Landroid/content/Context;Ljava/lang/String;ILjava/util/Map;Lorg/chromium/net/HttpUrlRequestListener;)Lorg/chromium/net/HttpUrlRequest;

    move-result-object v1

    .line 47
    if-eqz p4, :cond_1

    .line 48
    const-string v2, "application/x-protobuf"

    invoke-interface {v1, v2, p4}, Lorg/chromium/net/HttpUrlRequest;->a(Ljava/lang/String;[B)V

    .line 49
    const-string v2, "POST"

    invoke-interface {v1, v2}, Lorg/chromium/net/HttpUrlRequest;->a(Ljava/lang/String;)V

    .line 54
    :goto_0
    invoke-interface {v1}, Lorg/chromium/net/HttpUrlRequest;->h()V

    .line 2069
    iget-object v1, v0, Lcok;->a:Landroid/os/ConditionVariable;

    .line 55
    int-to-long v2, p5

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 57
    new-instance v0, Lorg/apache/http/client/HttpResponseException;

    const-string v1, "cronet http timeout"

    invoke-direct {v0, v5, v1}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    .line 58
    const-string v1, "Babel_CronetHttpSender"

    const-string v2, "Cronet HTTP request timeout"

    invoke-static {v1, v2, v0}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    throw v0

    .line 51
    :cond_1
    const-string v2, "GET"

    invoke-interface {v1, v2}, Lorg/chromium/net/HttpUrlRequest;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 3069
    :cond_2
    iget-object v1, v0, Lcok;->c:Ljava/io/IOException;

    .line 61
    if-eqz v1, :cond_3

    .line 62
    const-string v1, "Babel_CronetHttpSender"

    const-string v2, "Cronet HTTP request failed"

    .line 4069
    iget-object v3, v0, Lcok;->c:Ljava/io/IOException;

    .line 62
    invoke-static {v1, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5069
    iget-object v0, v0, Lcok;->c:Ljava/io/IOException;

    .line 63
    throw v0

    .line 6069
    :cond_3
    iget-object v0, v0, Lcok;->b:[B

    .line 66
    return-object v0
.end method
