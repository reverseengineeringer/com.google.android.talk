.class final Lmqf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmpz;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lmqa;


# direct methods
.method constructor <init>(Lmqa;Z)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lmqf;->b:Lmqa;

    iput-boolean p2, p0, Lmqf;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .prologue
    const-wide/32 v8, 0x7fffffff

    const/16 v6, 0x2000

    const-wide/16 v4, 0x0

    .line 355
    iget-object v0, p0, Lmqf;->b:Lmqa;

    iget-object v1, p0, Lmqf;->b:Lmqa;

    iget-object v1, v1, Lmqa;->f:Lorg/chromium/net/UploadDataProvider;

    invoke-virtual {v1}, Lorg/chromium/net/UploadDataProvider;->a()J

    move-result-wide v2

    iput-wide v2, v0, Lmqa;->h:J

    .line 356
    iget-object v0, p0, Lmqf;->b:Lmqa;

    iget-wide v0, v0, Lmqa;->h:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lmqf;->b:Lmqa;

    invoke-virtual {v0}, Lmqa;->d()V

    .line 387
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lmqf;->b:Lmqa;

    iget-wide v0, v0, Lmqa;->h:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Lmqf;->b:Lmqa;

    iget-wide v0, v0, Lmqa;->h:J

    const-wide/16 v2, 0x2000

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 364
    iget-object v0, p0, Lmqf;->b:Lmqa;

    iget-object v1, p0, Lmqf;->b:Lmqa;

    iget-wide v2, v1, Lmqa;->h:J

    long-to-int v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lmqa;->g:Ljava/nio/ByteBuffer;

    .line 369
    :goto_1
    iget-object v0, p0, Lmqf;->b:Lmqa;

    iget-wide v0, v0, Lmqa;->h:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    iget-object v0, p0, Lmqf;->b:Lmqa;

    iget-wide v0, v0, Lmqa;->h:J

    cmp-long v0, v0, v8

    if-gtz v0, :cond_2

    .line 370
    iget-object v0, p0, Lmqf;->b:Lmqa;

    iget-object v0, v0, Lmqa;->d:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lmqf;->b:Lmqa;

    iget-wide v2, v1, Lmqa;->h:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 380
    :goto_2
    iget-boolean v0, p0, Lmqf;->a:Z

    if-eqz v0, :cond_4

    .line 381
    iget-object v0, p0, Lmqf;->b:Lmqa;

    invoke-virtual {v0}, Lmqa;->c()V

    goto :goto_0

    .line 366
    :cond_1
    iget-object v0, p0, Lmqf;->b:Lmqa;

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lmqa;->g:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 371
    :cond_2
    iget-object v0, p0, Lmqf;->b:Lmqa;

    iget-wide v0, v0, Lmqa;->h:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    .line 373
    iget-object v0, p0, Lmqf;->b:Lmqa;

    iget-object v0, v0, Lmqa;->d:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lmqf;->b:Lmqa;

    iget-wide v2, v1, Lmqa;->h:J

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    goto :goto_2

    .line 378
    :cond_3
    iget-object v0, p0, Lmqf;->b:Lmqa;

    iget-object v0, v0, Lmqa;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    goto :goto_2

    .line 383
    :cond_4
    iget-object v0, p0, Lmqf;->b:Lmqa;

    iget-object v0, v0, Lmqa;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lmqg;->b:Lmqg;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 384
    iget-object v0, p0, Lmqf;->b:Lmqa;

    iget-object v0, v0, Lmqa;->f:Lorg/chromium/net/UploadDataProvider;

    iget-object v1, p0, Lmqf;->b:Lmqa;

    invoke-virtual {v0, v1}, Lorg/chromium/net/UploadDataProvider;->a(Lorg/chromium/net/UploadDataSink;)V

    goto/16 :goto_0
.end method
