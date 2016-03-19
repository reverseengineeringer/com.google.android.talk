.class final Lmqa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/net/UploadDataSink;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lmqg;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/Executor;

.field final c:Ljava/util/concurrent/Executor;

.field final d:Ljava/net/HttpURLConnection;

.field e:Ljava/nio/channels/WritableByteChannel;

.field final f:Lorg/chromium/net/UploadDataProvider;

.field g:Ljava/nio/ByteBuffer;

.field h:J

.field i:J

.field final synthetic j:Lmpe;


# direct methods
.method constructor <init>(Lmpe;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/net/HttpURLConnection;Lorg/chromium/net/UploadDataProvider;)V
    .locals 2

    .prologue
    .line 261
    iput-object p1, p0, Lmqa;->j:Lmpe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lmqg;->d:Lmqg;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmqa;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 258
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmqa;->i:J

    .line 262
    new-instance v0, Lmqb;

    invoke-direct {v0, p0, p1, p2}, Lmqb;-><init>(Lmqa;Lmpe;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lmqa;->b:Ljava/util/concurrent/Executor;

    .line 272
    iput-object p3, p0, Lmqa;->c:Ljava/util/concurrent/Executor;

    .line 273
    iput-object p4, p0, Lmqa;->d:Ljava/net/HttpURLConnection;

    .line 274
    iput-object p5, p0, Lmqa;->f:Lorg/chromium/net/UploadDataProvider;

    .line 275
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 279
    iget-object v0, p0, Lmqa;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lmqg;->a:Lmqg;

    sget-object v2, Lmqg;->c:Lmqg;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not expecting a read result, expecting: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmqa;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    iget-object v0, p0, Lmqa;->c:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lmqa;->j:Lmpe;

    sget-object v2, Lmqh;->b:Lmqh;

    new-instance v3, Lmqc;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lmqc;-><init>(Lmqa;Z)V

    .line 1035
    invoke-virtual {v1, v2, v3}, Lmpe;->a(Lmqh;Lmpz;)Ljava/lang/Runnable;

    move-result-object v1

    .line 283
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 308
    return-void
.end method

.method a(Z)V
    .locals 4

    .prologue
    .line 352
    iget-object v0, p0, Lmqa;->b:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lmqa;->j:Lmpe;

    new-instance v2, Lmqf;

    invoke-direct {v2, p0, p1}, Lmqf;-><init>(Lmqa;Z)V

    .line 4611
    new-instance v3, Lmph;

    invoke-direct {v3, v1, v2}, Lmph;-><init>(Lmpe;Lmpz;)V

    .line 352
    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 389
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 312
    iget-object v0, p0, Lmqa;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lmqg;->b:Lmqg;

    sget-object v2, Lmqg;->c:Lmqg;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not expecting a read result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_0
    invoke-virtual {p0}, Lmqa;->c()V

    .line 316
    return-void
.end method

.method c()V
    .locals 4

    .prologue
    .line 329
    iget-object v0, p0, Lmqa;->b:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lmqa;->j:Lmpe;

    new-instance v2, Lmqe;

    invoke-direct {v2, p0}, Lmqe;-><init>(Lmqa;)V

    .line 2611
    new-instance v3, Lmph;

    invoke-direct {v3, v1, v2}, Lmph;-><init>(Lmpe;Lmpz;)V

    .line 329
    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 342
    return-void
.end method

.method d()V
    .locals 4

    .prologue
    .line 345
    iget-object v0, p0, Lmqa;->e:Ljava/nio/channels/WritableByteChannel;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lmqa;->e:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->close()V

    .line 348
    :cond_0
    iget-object v0, p0, Lmqa;->j:Lmpe;

    .line 3459
    const/16 v1, 0xd

    iput v1, v0, Lmpe;->k:I

    .line 3460
    iget-object v1, v0, Lmpe;->b:Ljava/util/concurrent/Executor;

    sget-object v2, Lmqh;->b:Lmqh;

    new-instance v3, Lmpn;

    invoke-direct {v3, v0}, Lmpn;-><init>(Lmpe;)V

    invoke-virtual {v0, v2, v3}, Lmpe;->a(Lmqh;Lmpz;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 349
    return-void
.end method
