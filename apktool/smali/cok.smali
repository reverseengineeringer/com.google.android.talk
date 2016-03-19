.class final Lcok;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/net/HttpUrlRequestListener;


# instance fields
.field final a:Landroid/os/ConditionVariable;

.field b:[B

.field c:Ljava/io/IOException;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcok;->a:Landroid/os/ConditionVariable;

    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/net/HttpUrlRequest;)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public b(Lorg/chromium/net/HttpUrlRequest;)V
    .locals 8

    .prologue
    const/16 v7, 0xc8

    const/4 v6, 0x0

    .line 81
    invoke-interface {p1}, Lorg/chromium/net/HttpUrlRequest;->f()[B

    move-result-object v0

    iput-object v0, p0, Lcok;->b:[B

    .line 82
    invoke-interface {p1}, Lorg/chromium/net/HttpUrlRequest;->d()Ljava/io/IOException;

    move-result-object v0

    iput-object v0, p0, Lcok;->c:Ljava/io/IOException;

    .line 83
    invoke-interface {p1}, Lorg/chromium/net/HttpUrlRequest;->b()I

    move-result v2

    .line 84
    const-string v0, "Babel_CronetHttpSender"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "Babel_CronetHttpSender"

    const-string v1, "Response headers for [%s]: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/chromium/net/HttpUrlRequest;->n()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    .line 86
    invoke-interface {p1}, Lorg/chromium/net/HttpUrlRequest;->m()Ljava/util/Map;

    move-result-object v5

    aput-object v5, v3, v4

    .line 85
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :cond_0
    if-eq v2, v7, :cond_1

    .line 90
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcok;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 91
    new-instance v1, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v1}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 92
    invoke-virtual {v1, v0}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 93
    invoke-interface {p1}, Lorg/chromium/net/HttpUrlRequest;->a()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 94
    invoke-interface {p1}, Lorg/chromium/net/HttpUrlRequest;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/BasicHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 97
    :try_start_0
    const-string v3, "Babel_CronetHttpSender"

    const-string v4, "Http error response "

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_1
    :goto_1
    iget-object v0, p0, Lcok;->c:Ljava/io/IOException;

    if-nez v0, :cond_2

    if-eq v2, v7, :cond_2

    .line 105
    new-instance v0, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {p1}, Lorg/chromium/net/HttpUrlRequest;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcok;->c:Ljava/io/IOException;

    .line 107
    :cond_2
    iget-object v0, p0, Lcok;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 108
    return-void

    .line 97
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 99
    const-string v3, "Babel_CronetHttpSender"

    const-string v4, "Http error but unable to parse the response body. Response Bytes: "

    iget-object v0, p0, Lcok;->b:[B

    .line 100
    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_2
    invoke-static {v3, v0, v1}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 100
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method
