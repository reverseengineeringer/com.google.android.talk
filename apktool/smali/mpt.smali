.class final Lmpt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lorg/chromium/net/UrlRequest$Callback;

.field final b:Ljava/util/concurrent/Executor;

.field final synthetic c:Lmpe;


# direct methods
.method constructor <init>(Lmpe;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 740
    iput-object p1, p0, Lmpt;->c:Lmpe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    iput-object p2, p0, Lmpt;->a:Lorg/chromium/net/UrlRequest$Callback;

    .line 742
    iput-object p3, p0, Lmpt;->b:Ljava/util/concurrent/Executor;

    .line 743
    return-void
.end method

.method private a(Lmqh;Lmpz;)V
    .locals 4

    .prologue
    .line 756
    :try_start_0
    iget-object v0, p0, Lmpt;->b:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lmpt;->c:Lmpe;

    .line 1598
    new-instance v2, Lmps;

    invoke-direct {v2, v1, p2, p1}, Lmps;-><init>(Lmpe;Lmpz;Lmqh;)V

    .line 756
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    :goto_0
    return-void

    .line 757
    :catch_0
    move-exception v0

    .line 758
    iget-object v1, p0, Lmpt;->c:Lmpe;

    .line 2413
    new-instance v2, Lorg/chromium/net/UrlRequestException;

    const-string v3, "User Error"

    invoke-direct {v2, v3, v0}, Lorg/chromium/net/UrlRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, p1, v2}, Lmpe;->a(Lmqh;Lorg/chromium/net/UrlRequestException;)V

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 772
    sget-object v0, Lmqh;->e:Lmqh;

    new-instance v1, Lmpv;

    invoke-direct {v1, p0}, Lmpv;-><init>(Lmpt;)V

    invoke-direct {p0, v0, v1}, Lmpt;->a(Lmqh;Lmpz;)V

    .line 780
    return-void
.end method

.method a(Lorg/chromium/net/UrlResponseInfo;)V
    .locals 2

    .prologue
    .line 808
    iget-object v0, p0, Lmpt;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lmpx;

    invoke-direct {v1, p0, p1}, Lmpx;-><init>(Lmpt;Lorg/chromium/net/UrlResponseInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 818
    return-void
.end method

.method a(Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 763
    sget-object v0, Lmqh;->d:Lmqh;

    new-instance v1, Lmpu;

    invoke-direct {v1, p0, p1, p2}, Lmpu;-><init>(Lmpt;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lmpt;->a(Lmqh;Lmpz;)V

    .line 769
    return-void
.end method

.method a(Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 783
    sget-object v0, Lmqh;->e:Lmqh;

    new-instance v1, Lmpw;

    invoke-direct {v1, p0, p1, p2}, Lmpw;-><init>(Lmpt;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, v0, v1}, Lmpt;->a(Lmqh;Lmpz;)V

    .line 791
    return-void
.end method

.method a(Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/UrlRequestException;)V
    .locals 2

    .prologue
    .line 821
    iget-object v0, p0, Lmpt;->c:Lmpe;

    .line 3035
    iget-object v0, v0, Lmpe;->m:Ljava/nio/channels/ReadableByteChannel;

    .line 4836
    if-eqz v0, :cond_0

    .line 4840
    :try_start_0
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    :cond_0
    :goto_0
    iget-object v0, p0, Lmpt;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lmpy;

    invoke-direct {v1, p0, p1, p2}, Lmpy;-><init>(Lmpt;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/UrlRequestException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 832
    return-void

    .line 4842
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
