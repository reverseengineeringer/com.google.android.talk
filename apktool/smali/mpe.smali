.class final Lmpe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/net/UrlRequest;


# instance fields
.field final a:Lmpt;

.field final b:Ljava/util/concurrent/Executor;

.field final c:Ljava/lang/String;

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lmqh;",
            ">;"
        }
    .end annotation
.end field

.field final g:I

.field h:Ljava/lang/String;

.field i:Lorg/chromium/net/UploadDataProvider;

.field j:Ljava/util/concurrent/Executor;

.field volatile k:I

.field l:Ljava/lang/String;

.field m:Ljava/nio/channels/ReadableByteChannel;

.field n:Lorg/chromium/net/UrlResponseInfo;

.field o:Ljava/lang/String;

.field final p:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/net/HttpURLConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lmpe;->d:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmpe;->e:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lmqh;->a:Lmqh;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmpe;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lmpe;->k:I

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lmpe;->p:Ljava/util/concurrent/atomic/AtomicReference;

    .line 121
    if-nez p4, :cond_0

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "URL is required"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    if-nez p1, :cond_1

    .line 125
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Listener is required"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    if-nez p2, :cond_2

    .line 128
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Executor is required"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_2
    if-nez p3, :cond_3

    .line 131
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "userExecutor is required"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_3
    new-instance v0, Lmpt;

    invoke-direct {v0, p0, p1, p3}, Lmpt;-><init>(Lmpe;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lmpe;->a:Lmpt;

    .line 134
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v0

    iput v0, p0, Lmpe;->g:I

    .line 135
    new-instance v0, Lmpf;

    invoke-direct {v0, p0, p2}, Lmpf;-><init>(Lmpe;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lmpe;->b:Ljava/util/concurrent/Executor;

    .line 152
    iput-object p4, p0, Lmpe;->l:Ljava/lang/String;

    .line 153
    iput-object p5, p0, Lmpe;->c:Ljava/lang/String;

    .line 154
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 173
    iget-object v0, p0, Lmpe;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmqh;

    .line 174
    sget-object v1, Lmqh;->a:Lmqh;

    if-eq v0, v1, :cond_0

    .line 175
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Request is already started. State is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_0
    return-void
.end method


# virtual methods
.method a(Lmqh;Lmpz;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 585
    new-instance v0, Lmpr;

    invoke-direct {v0, p0, p2, p1}, Lmpr;-><init>(Lmpe;Lmpz;Lmqh;)V

    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 394
    const/16 v0, 0xa

    iput v0, p0, Lmpe;->k:I

    .line 395
    sget-object v0, Lmqh;->a:Lmqh;

    sget-object v1, Lmqh;->b:Lmqh;

    new-instance v2, Lmpl;

    invoke-direct {v2, p0}, Lmpl;-><init>(Lmpe;)V

    invoke-virtual {p0, v0, v1, v2}, Lmpe;->a(Lmqh;Lmqh;Ljava/lang/Runnable;)V

    .line 402
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 158
    invoke-direct {p0}, Lmpe;->e()V

    .line 159
    if-nez p1, :cond_0

    .line 160
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Method is required."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    const-string v0, "OPTIONS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "GET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "HEAD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "POST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PUT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DELETE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TRACE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PATCH"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    :cond_1
    iput-object p1, p0, Lmpe;->h:Ljava/lang/String;

    return-void

    .line 168
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid http method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 181
    invoke-direct {p0}, Lmpe;->e()V

    move v0, v1

    .line 1192
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1193
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1194
    sparse-switch v2, :sswitch_data_0

    .line 1214
    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    :cond_0
    :goto_1
    :sswitch_0
    if-eqz v1, :cond_1

    const-string v0, "\r\n"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 183
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid header "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1192
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1220
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 185
    :cond_4
    iget-object v0, p0, Lmpe;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 186
    iget-object v0, p0, Lmpe;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_5
    iget-object v0, p0, Lmpe;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    return-void

    .line 1194
    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 3

    .prologue
    .line 627
    invoke-static {p1}, Laal;->b(Ljava/nio/ByteBuffer;)V

    .line 628
    invoke-static {p1}, Laal;->c(Ljava/nio/ByteBuffer;)V

    .line 629
    sget-object v0, Lmqh;->e:Lmqh;

    sget-object v1, Lmqh;->f:Lmqh;

    new-instance v2, Lmpi;

    invoke-direct {v2, p0, p1}, Lmpi;-><init>(Lmpe;Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, v0, v1, v2}, Lmpe;->a(Lmqh;Lmqh;Ljava/lang/Runnable;)V

    .line 641
    return-void
.end method

.method a(Lmqh;Lmqh;Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 435
    iget-object v0, p0, Lmpe;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lmpe;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmqh;

    .line 437
    sget-object v1, Lmqh;->i:Lmqh;

    if-eq v0, v1, :cond_1

    sget-object v1, Lmqh;->g:Lmqh;

    if-eq v0, v1, :cond_1

    .line 438
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid state transition - expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 442
    :cond_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 444
    :cond_1
    return-void
.end method

.method a(Lmqh;Lorg/chromium/net/UrlRequestException;)V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lmpe;->f:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lmqh;->g:Lmqh;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {p0}, Lmpe;->c()V

    .line 407
    iget-object v0, p0, Lmpe;->a:Lmpt;

    iget-object v1, p0, Lmpe;->n:Lorg/chromium/net/UrlResponseInfo;

    invoke-virtual {v0, v1, p2}, Lmpt;->a(Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/UrlRequestException;)V

    .line 409
    :cond_0
    return-void
.end method

.method public a(Lorg/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)V
    .locals 2

    .prologue
    .line 225
    if-nez p1, :cond_0

    .line 226
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Invalid UploadDataProvider."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    iget-object v0, p0, Lmpe;->d:Ljava/util/Map;

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requests with upload data must have a Content-Type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_1
    invoke-direct {p0}, Lmpe;->e()V

    .line 233
    iget-object v0, p0, Lmpe;->h:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 234
    const-string v0, "POST"

    iput-object v0, p0, Lmpe;->h:Ljava/lang/String;

    .line 236
    :cond_2
    iput-object p1, p0, Lmpe;->i:Lorg/chromium/net/UploadDataProvider;

    .line 237
    iput-object p2, p0, Lmpe;->j:Ljava/util/concurrent/Executor;

    .line 238
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 448
    sget-object v0, Lmqh;->d:Lmqh;

    sget-object v1, Lmqh;->b:Lmqh;

    new-instance v2, Lmpm;

    invoke-direct {v2, p0}, Lmpm;-><init>(Lmpe;)V

    invoke-virtual {p0, v0, v1, v2}, Lmpe;->a(Lmqh;Lmqh;Ljava/lang/Runnable;)V

    .line 456
    return-void
.end method

.method c()V
    .locals 3

    .prologue
    .line 656
    iget-object v0, p0, Lmpe;->p:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 657
    if-eqz v0, :cond_0

    .line 658
    iget-object v1, p0, Lmpe;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Lmpk;

    invoke-direct {v2, p0, v0}, Lmpk;-><init>(Lmpe;Ljava/net/HttpURLConnection;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 665
    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 702
    return-void
.end method
