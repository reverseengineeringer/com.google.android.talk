.class final Lmpn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmpz;


# instance fields
.field final synthetic a:Lmpe;


# direct methods
.method constructor <init>(Lmpe;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lmpn;->a:Lmpe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 11

    .prologue
    const/16 v10, 0x190

    const/4 v5, 0x0

    .line 463
    iget-object v0, p0, Lmpn;->a:Lmpe;

    .line 1035
    iget-object v0, v0, Lmpe;->p:Ljava/util/concurrent/atomic/AtomicReference;

    .line 463
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/net/HttpURLConnection;

    .line 464
    if-nez v8, :cond_0

    .line 496
    :goto_0
    return-void

    .line 467
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 468
    const-string v6, "http/1.1"

    move v0, v5

    .line 470
    :goto_1
    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 471
    const-string v2, "X-Android-Selected-Transport"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 472
    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v6

    .line 474
    :cond_1
    const-string v2, "X-Android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 475
    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 479
    :cond_3
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 483
    iget-object v9, p0, Lmpn;->a:Lmpe;

    new-instance v0, Lorg/chromium/net/UrlResponseInfo;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lmpn;->a:Lmpe;

    .line 2035
    iget-object v3, v3, Lmpe;->e:Ljava/util/List;

    .line 483
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    const-string v7, ""

    invoke-direct/range {v0 .. v7}, Lorg/chromium/net/UrlResponseInfo;-><init>(Ljava/util/List;ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)V

    .line 3035
    iput-object v0, v9, Lmpe;->n:Lorg/chromium/net/UrlResponseInfo;

    .line 487
    const/16 v0, 0x12c

    if-lt v2, v0, :cond_4

    if-ge v2, v10, :cond_4

    .line 488
    iget-object v0, p0, Lmpn;->a:Lmpe;

    iget-object v1, p0, Lmpn;->a:Lmpe;

    .line 4035
    iget-object v1, v1, Lmpe;->n:Lorg/chromium/net/UrlResponseInfo;

    .line 488
    invoke-virtual {v1}, Lorg/chromium/net/UrlResponseInfo;->b()Ljava/util/Map;

    move-result-object v1

    .line 5501
    sget-object v2, Lmqh;->b:Lmqh;

    sget-object v3, Lmqh;->c:Lmqh;

    new-instance v4, Lmpo;

    invoke-direct {v4, v0, v1}, Lmpo;-><init>(Lmpe;Ljava/util/Map;)V

    invoke-virtual {v0, v2, v3, v4}, Lmpe;->a(Lmqh;Lmqh;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 489
    :cond_4
    if-lt v2, v10, :cond_5

    .line 490
    iget-object v0, p0, Lmpn;->a:Lmpe;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lmpa;->a(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v1

    .line 6035
    iput-object v1, v0, Lmpe;->m:Ljava/nio/channels/ReadableByteChannel;

    .line 491
    iget-object v0, p0, Lmpn;->a:Lmpe;

    .line 7035
    iget-object v0, v0, Lmpe;->a:Lmpt;

    .line 491
    invoke-virtual {v0}, Lmpt;->a()V

    goto/16 :goto_0

    .line 493
    :cond_5
    iget-object v0, p0, Lmpn;->a:Lmpe;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lmpa;->a(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v1

    .line 8035
    iput-object v1, v0, Lmpe;->m:Ljava/nio/channels/ReadableByteChannel;

    .line 494
    iget-object v0, p0, Lmpn;->a:Lmpe;

    .line 9035
    iget-object v0, v0, Lmpe;->a:Lmpt;

    .line 494
    invoke-virtual {v0}, Lmpt;->a()V

    goto/16 :goto_0
.end method
