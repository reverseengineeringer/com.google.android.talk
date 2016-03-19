.class public final Lmow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/net/HttpUrlRequest;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static B:Ljava/util/concurrent/ExecutorService;

.field private static final C:Ljava/lang/Object;


# instance fields
.field private final A:Ljava/lang/Object;

.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/Map;
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

.field private final e:Ljava/nio/channels/WritableByteChannel;

.field private final f:Lorg/chromium/net/HttpUrlRequestListener;

.field private g:Ljava/io/IOException;

.field private h:Ljava/net/HttpURLConnection;

.field private i:J

.field private j:I

.field private k:I

.field private l:J

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:J

.field private q:Ljava/lang/String;

.field private r:[B

.field private s:Ljava/nio/channels/ReadableByteChannel;

.field private t:Ljava/lang/String;

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Z

.field private y:Ljava/lang/String;

.field private z:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmow;->C:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/nio/channels/WritableByteChannel;Lorg/chromium/net/HttpUrlRequestListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    if-nez p1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context is required"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    if-nez p3, :cond_1

    .line 114
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "URL is required"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    iput-object p1, p0, Lmow;->a:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Lmow;->b:Ljava/lang/String;

    .line 118
    iput-object p3, p0, Lmow;->c:Ljava/lang/String;

    .line 119
    iput-object p4, p0, Lmow;->d:Ljava/util/Map;

    .line 120
    iput-object p5, p0, Lmow;->e:Ljava/nio/channels/WritableByteChannel;

    .line 121
    iput-object p6, p0, Lmow;->f:Lorg/chromium/net/HttpUrlRequestListener;

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmow;->A:Ljava/lang/Object;

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/chromium/net/HttpUrlRequestListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v5, Lorg/chromium/net/ChunkedWritableByteChannel;

    invoke-direct {v5}, Lorg/chromium/net/ChunkedWritableByteChannel;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lmow;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/nio/channels/WritableByteChannel;Lorg/chromium/net/HttpUrlRequestListener;)V

    .line 105
    return-void
.end method

.method private static p()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .prologue
    .line 126
    sget-object v1, Lmow;->C:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    :try_start_0
    sget-object v0, Lmow;->B:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lmox;

    invoke-direct {v0}, Lmox;-><init>()V

    .line 142
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lmow;->B:Ljava/util/concurrent/ExecutorService;

    .line 144
    :cond_0
    sget-object v0, Lmow;->B:Ljava/util/concurrent/ExecutorService;

    monitor-exit v1

    return-object v0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private q()V
    .locals 5

    .prologue
    .line 320
    iget-object v0, p0, Lmow;->h:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 321
    iget-object v0, p0, Lmow;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lmow;->h:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    iget-object v2, p0, Lmow;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_0
    const/4 v1, 0x0

    .line 327
    :try_start_0
    iget-object v0, p0, Lmow;->r:[B

    if-eqz v0, :cond_3

    .line 328
    iget-object v0, p0, Lmow;->h:Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lmow;->r:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 329
    iget-object v0, p0, Lmow;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 330
    iget-object v0, p0, Lmow;->r:[B

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :cond_1
    if-eqz v1, :cond_2

    .line 344
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 347
    :cond_2
    return-void

    .line 332
    :cond_3
    :try_start_1
    iget-object v0, p0, Lmow;->h:Ljava/net/HttpURLConnection;

    iget v2, p0, Lmow;->k:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 333
    iget-object v0, p0, Lmow;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 334
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 335
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 336
    :goto_0
    iget-object v3, p0, Lmow;->s:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v3, v2}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-lez v3, :cond_1

    .line 337
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 338
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 339
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 343
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    .line 344
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_4
    throw v0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmow;->n:Z

    .line 471
    invoke-virtual {p0}, Lmow;->i()V

    .line 472
    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    .line 525
    iget-boolean v0, p0, Lmow;->w:Z

    if-eqz v0, :cond_0

    .line 526
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_0
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 493
    iget v0, p0, Lmow;->j:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 155
    iput-wide p1, p0, Lmow;->i:J

    .line 156
    return-void
.end method

.method public a(JZ)V
    .locals 1

    .prologue
    .line 160
    iput-wide p1, p0, Lmow;->l:J

    .line 161
    iput-boolean p3, p0, Lmow;->m:Z

    .line 162
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Lmow;->s()V

    .line 190
    iput-object p1, p0, Lmow;->y:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/nio/channels/ReadableByteChannel;J)V
    .locals 3

    .prologue
    .line 175
    invoke-direct {p0}, Lmow;->s()V

    .line 176
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Upload contentLength is too big."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    long-to-int v0, p3

    iput v0, p0, Lmow;->k:I

    .line 181
    iput-object p1, p0, Lmow;->q:Ljava/lang/String;

    .line 182
    iput-object p2, p0, Lmow;->s:Ljava/nio/channels/ReadableByteChannel;

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lmow;->r:[B

    .line 184
    return-void
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Lmow;->s()V

    .line 167
    iput-object p1, p0, Lmow;->q:Ljava/lang/String;

    .line 168
    iput-object p2, p0, Lmow;->r:[B

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lmow;->s:Ljava/nio/channels/ReadableByteChannel;

    .line 170
    return-void
.end method

.method public b()I
    .locals 2

    .prologue
    .line 443
    iget v0, p0, Lmow;->u:I

    .line 450
    const/16 v1, 0xce

    if-ne v0, v1, :cond_0

    .line 451
    const/16 v0, 0xc8

    .line 453
    :cond_0
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lmow;->v:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/io/IOException;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lmow;->g:Ljava/io/IOException;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmow;->n:Z

    if-eqz v0, :cond_0

    .line 464
    new-instance v0, Lorg/chromium/net/ResponseTooLargeException;

    invoke-direct {v0}, Lorg/chromium/net/ResponseTooLargeException;-><init>()V

    iput-object v0, p0, Lmow;->g:Ljava/io/IOException;

    .line 466
    :cond_0
    iget-object v0, p0, Lmow;->g:Ljava/io/IOException;

    return-object v0
.end method

.method public e()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lmow;->e:Ljava/nio/channels/WritableByteChannel;

    check-cast v0, Lorg/chromium/net/ChunkedWritableByteChannel;

    invoke-virtual {v0}, Lorg/chromium/net/ChunkedWritableByteChannel;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public f()[B
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lmow;->e:Ljava/nio/channels/WritableByteChannel;

    check-cast v0, Lorg/chromium/net/ChunkedWritableByteChannel;

    invoke-virtual {v0}, Lorg/chromium/net/ChunkedWritableByteChannel;->b()[B

    move-result-object v0

    return-object v0
.end method

.method g()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v10, -0x1

    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    .line 212
    :try_start_0
    iget-object v1, p0, Lmow;->A:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 213
    :try_start_1
    iget-boolean v0, p0, Lmow;->x:Z

    if-eqz v0, :cond_2

    .line 214
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    iget-object v0, p0, Lmow;->s:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v0, :cond_0

    .line 305
    :try_start_2
    iget-object v0, p0, Lmow;->s:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 314
    :cond_0
    :goto_0
    iget-object v0, p0, Lmow;->f:Lorg/chromium/net/HttpUrlRequestListener;

    invoke-interface {v0, p0}, Lorg/chromium/net/HttpUrlRequestListener;->b(Lorg/chromium/net/HttpUrlRequest;)V

    .line 317
    :cond_1
    :goto_1
    return-void

    .line 216
    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 218
    :try_start_4
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lmow;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lmow;->h:Ljava/net/HttpURLConnection;

    .line 221
    iget-object v0, p0, Lmow;->y:Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_3

    .line 223
    :try_start_5
    iget-object v0, p0, Lmow;->h:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lmow;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 230
    :cond_3
    :try_start_6
    iget-object v0, p0, Lmow;->h:Ljava/net/HttpURLConnection;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 231
    iget-object v0, p0, Lmow;->h:Ljava/net/HttpURLConnection;

    const v1, 0x15f90

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 232
    iget-object v0, p0, Lmow;->h:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 233
    iget-object v0, p0, Lmow;->d:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 234
    iget-object v0, p0, Lmow;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 235
    iget-object v5, p0, Lmow;->h:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 300
    :catch_0
    move-exception v0

    .line 301
    :goto_3
    :try_start_7
    iput-object v0, p0, Lmow;->g:Ljava/io/IOException;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 303
    iget-object v0, p0, Lmow;->s:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v0, :cond_4

    .line 305
    :try_start_8
    iget-object v0, p0, Lmow;->s:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 313
    :cond_4
    :goto_4
    if-nez v3, :cond_1

    .line 314
    iget-object v0, p0, Lmow;->f:Lorg/chromium/net/HttpUrlRequestListener;

    invoke-interface {v0, p0}, Lorg/chromium/net/HttpUrlRequestListener;->b(Lorg/chromium/net/HttpUrlRequest;)V

    goto :goto_1

    .line 216
    :catchall_0
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 303
    :catchall_1
    move-exception v0

    :goto_5
    iget-object v1, p0, Lmow;->s:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v1, :cond_5

    .line 305
    :try_start_b
    iget-object v1, p0, Lmow;->s:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 313
    :cond_5
    :goto_6
    if-nez v3, :cond_6

    .line 314
    iget-object v1, p0, Lmow;->f:Lorg/chromium/net/HttpUrlRequestListener;

    invoke-interface {v1, p0}, Lorg/chromium/net/HttpUrlRequestListener;->b(Lorg/chromium/net/HttpUrlRequest;)V

    :cond_6
    throw v0

    .line 224
    :catch_1
    move-exception v0

    .line 227
    :try_start_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 240
    :cond_7
    iget-wide v0, p0, Lmow;->i:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_8

    .line 241
    iget-object v0, p0, Lmow;->h:Ljava/net/HttpURLConnection;

    const-string v1, "Range"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bytes="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lmow;->i:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_8
    iget-object v0, p0, Lmow;->h:Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 246
    iget-object v0, p0, Lmow;->h:Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    iget-object v4, p0, Lmow;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_9
    iget-object v0, p0, Lmow;->r:[B

    if-nez v0, :cond_a

    iget-object v0, p0, Lmow;->s:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v0, :cond_b

    .line 250
    :cond_a
    invoke-direct {p0}, Lmow;->q()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 253
    :cond_b
    const/4 v0, 0x0

    .line 257
    :try_start_d
    iget-object v1, p0, Lmow;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result-object v0

    .line 262
    :goto_7
    :try_start_e
    iget-object v1, p0, Lmow;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, p0, Lmow;->u:I

    .line 263
    iget-object v1, p0, Lmow;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmow;->v:Ljava/lang/String;

    .line 264
    iget-object v1, p0, Lmow;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmow;->t:Ljava/lang/String;

    .line 265
    iget-object v1, p0, Lmow;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    iput v1, p0, Lmow;->j:I

    .line 266
    iget-wide v4, p0, Lmow;->l:J

    cmp-long v1, v4, v8

    if-lez v1, :cond_d

    iget v1, p0, Lmow;->j:I

    int-to-long v4, v1

    iget-wide v6, p0, Lmow;->l:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_d

    iget-boolean v1, p0, Lmow;->m:Z

    if-eqz v1, :cond_d

    .line 268
    invoke-direct {p0}, Lmow;->r()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 303
    iget-object v0, p0, Lmow;->s:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v0, :cond_c

    .line 305
    :try_start_f
    iget-object v0, p0, Lmow;->s:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    .line 314
    :cond_c
    :goto_8
    iget-object v0, p0, Lmow;->f:Lorg/chromium/net/HttpUrlRequestListener;

    invoke-interface {v0, p0}, Lorg/chromium/net/HttpUrlRequestListener;->b(Lorg/chromium/net/HttpUrlRequest;)V

    goto/16 :goto_1

    .line 272
    :cond_d
    :try_start_10
    iget-object v1, p0, Lmow;->f:Lorg/chromium/net/HttpUrlRequestListener;

    invoke-interface {v1, p0}, Lorg/chromium/net/HttpUrlRequestListener;->a(Lorg/chromium/net/HttpUrlRequest;)V

    .line 274
    iget v1, p0, Lmow;->u:I

    .line 1475
    div-int/lit8 v1, v1, 0x64

    const/4 v4, 0x2

    if-eq v1, v4, :cond_13

    move v1, v2

    .line 274
    :goto_9
    if-eqz v1, :cond_e

    iget-object v0, p0, Lmow;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    :cond_e
    iput-object v0, p0, Lmow;->z:Ljava/io/InputStream;

    .line 278
    iget-object v0, p0, Lmow;->z:Ljava/io/InputStream;

    if-eqz v0, :cond_f

    const-string v0, "gzip"

    iget-object v1, p0, Lmow;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 280
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lmow;->z:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lmow;->z:Ljava/io/InputStream;

    .line 281
    const/4 v0, -0x1

    iput v0, p0, Lmow;->j:I

    .line 284
    :cond_f
    iget-wide v0, p0, Lmow;->i:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_11

    .line 286
    iget v0, p0, Lmow;->u:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_14

    .line 287
    iget v0, p0, Lmow;->j:I

    if-eq v0, v10, :cond_10

    .line 288
    iget v0, p0, Lmow;->j:I

    int-to-long v0, v0

    iget-wide v4, p0, Lmow;->i:J

    sub-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Lmow;->j:I

    .line 290
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmow;->o:Z

    .line 296
    :cond_11
    :goto_a
    iget-object v0, p0, Lmow;->z:Ljava/io/InputStream;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz v0, :cond_15

    .line 2350
    :try_start_11
    invoke-static {}, Lmow;->p()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lmoz;

    invoke-direct {v1, p0}, Lmoz;-><init>(Lmow;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    move v0, v2

    .line 303
    :goto_b
    iget-object v1, p0, Lmow;->s:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v1, :cond_12

    .line 305
    :try_start_12
    iget-object v1, p0, Lmow;->s:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5

    .line 313
    :cond_12
    :goto_c
    if-nez v0, :cond_1

    .line 314
    iget-object v0, p0, Lmow;->f:Lorg/chromium/net/HttpUrlRequestListener;

    invoke-interface {v0, p0}, Lorg/chromium/net/HttpUrlRequestListener;->b(Lorg/chromium/net/HttpUrlRequest;)V

    goto/16 :goto_1

    :cond_13
    move v1, v3

    .line 1475
    goto :goto_9

    .line 292
    :cond_14
    :try_start_13
    iget-wide v0, p0, Lmow;->i:J

    iput-wide v0, p0, Lmow;->p:J
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto :goto_a

    :catch_2
    move-exception v1

    goto/16 :goto_6

    .line 303
    :catchall_2
    move-exception v0

    move v3, v2

    goto/16 :goto_5

    :catch_3
    move-exception v0

    goto/16 :goto_4

    .line 300
    :catch_4
    move-exception v0

    move v3, v2

    goto/16 :goto_3

    :catch_5
    move-exception v1

    goto :goto_c

    :catch_6
    move-exception v0

    goto/16 :goto_8

    :catch_7
    move-exception v1

    goto/16 :goto_7

    :catch_8
    move-exception v0

    goto/16 :goto_0

    :cond_15
    move v0, v3

    goto :goto_b
.end method

.method public h()V
    .locals 2

    .prologue
    .line 201
    invoke-static {}, Lmow;->p()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lmoy;

    invoke-direct {v1, p0}, Lmoy;-><init>(Lmow;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 207
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 415
    iget-object v1, p0, Lmow;->A:Ljava/lang/Object;

    monitor-enter v1

    .line 416
    :try_start_0
    iget-boolean v0, p0, Lmow;->x:Z

    if-eqz v0, :cond_0

    .line 417
    monitor-exit v1

    .line 421
    :goto_0
    return-void

    .line 420
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmow;->x:Z

    .line 421
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 426
    iget-object v1, p0, Lmow;->A:Ljava/lang/Object;

    monitor-enter v1

    .line 427
    :try_start_0
    iget-boolean v0, p0, Lmow;->x:Z

    monitor-exit v1

    return v0

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    const-string v0, ""

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lmow;->t:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lmow;->h:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 519
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Response headers not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_0
    iget-object v0, p0, Lmow;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lmow;->c:Ljava/lang/String;

    return-object v0
.end method

.method o()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 360
    :try_start_0
    iget-object v0, p0, Lmow;->z:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 2384
    const/16 v0, 0x2000

    new-array v3, v0, [B

    .line 2386
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lmow;->j()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmow;->z:Ljava/io/InputStream;

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 2389
    iget-wide v4, p0, Lmow;->p:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lmow;->p:J

    .line 2390
    iget-boolean v1, p0, Lmow;->o:Z

    if-eqz v1, :cond_6

    .line 2391
    iget-wide v4, p0, Lmow;->p:J

    iget-wide v6, p0, Lmow;->i:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 2394
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmow;->o:Z

    .line 2395
    iget-wide v4, p0, Lmow;->i:J

    iget-wide v6, p0, Lmow;->p:J

    int-to-long v8, v0

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .line 2396
    sub-int/2addr v0, v1

    .line 2400
    :goto_1
    iget-wide v4, p0, Lmow;->l:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    iget-wide v4, p0, Lmow;->p:J

    iget-wide v6, p0, Lmow;->l:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    .line 2401
    iget-wide v4, p0, Lmow;->p:J

    iget-wide v6, p0, Lmow;->l:J

    sub-long/2addr v4, v6

    long-to-int v2, v4

    sub-int/2addr v0, v2

    .line 2402
    if-lez v0, :cond_1

    .line 2403
    iget-object v2, p0, Lmow;->e:Ljava/nio/channels/WritableByteChannel;

    invoke-static {v3, v1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 2405
    :cond_1
    invoke-direct {p0}, Lmow;->r()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    :cond_2
    :try_start_1
    iget-object v0, p0, Lmow;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    .line 373
    :goto_2
    :try_start_2
    iget-object v0, p0, Lmow;->e:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 380
    :cond_3
    :goto_3
    iget-object v0, p0, Lmow;->f:Lorg/chromium/net/HttpUrlRequestListener;

    invoke-interface {v0, p0}, Lorg/chromium/net/HttpUrlRequestListener;->b(Lorg/chromium/net/HttpUrlRequest;)V

    .line 381
    return-void

    .line 2409
    :cond_4
    :try_start_3
    iget-object v4, p0, Lmow;->e:Ljava/nio/channels/WritableByteChannel;

    invoke-static {v3, v1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    :try_start_4
    iput-object v0, p0, Lmow;->g:Ljava/io/IOException;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 367
    :try_start_5
    iget-object v0, p0, Lmow;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_5

    .line 373
    :goto_4
    :try_start_6
    iget-object v0, p0, Lmow;->e:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 374
    :catch_1
    move-exception v0

    .line 375
    iget-object v1, p0, Lmow;->g:Ljava/io/IOException;

    if-nez v1, :cond_3

    .line 376
    iput-object v0, p0, Lmow;->g:Ljava/io/IOException;

    goto :goto_3

    .line 374
    :catch_2
    move-exception v0

    .line 375
    iget-object v1, p0, Lmow;->g:Ljava/io/IOException;

    if-nez v1, :cond_3

    .line 376
    iput-object v0, p0, Lmow;->g:Ljava/io/IOException;

    goto :goto_3

    .line 366
    :catchall_0
    move-exception v0

    .line 367
    :try_start_7
    iget-object v1, p0, Lmow;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_4

    .line 373
    :goto_5
    :try_start_8
    iget-object v1, p0, Lmow;->e:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 378
    :cond_5
    :goto_6
    throw v0

    .line 374
    :catch_3
    move-exception v1

    .line 375
    iget-object v2, p0, Lmow;->g:Ljava/io/IOException;

    if-nez v2, :cond_5

    .line 376
    iput-object v1, p0, Lmow;->g:Ljava/io/IOException;

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_1
.end method
