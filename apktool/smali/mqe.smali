.class final Lmqe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmpz;


# instance fields
.field final synthetic a:Lmqa;


# direct methods
.method constructor <init>(Lmqa;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lmqe;->a:Lmqa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 332
    iget-object v0, p0, Lmqe;->a:Lmqa;

    iget-object v0, v0, Lmqa;->e:Ljava/nio/channels/WritableByteChannel;

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lmqe;->a:Lmqa;

    iget-object v0, v0, Lmqa;->j:Lmpe;

    .line 1035
    const/16 v1, 0xa

    iput v1, v0, Lmpe;->k:I

    .line 334
    iget-object v0, p0, Lmqe;->a:Lmqa;

    iget-object v0, v0, Lmqa;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 335
    iget-object v0, p0, Lmqe;->a:Lmqa;

    iget-object v0, v0, Lmqa;->j:Lmpe;

    .line 2035
    const/16 v1, 0xc

    iput v1, v0, Lmpe;->k:I

    .line 336
    iget-object v0, p0, Lmqe;->a:Lmqa;

    iget-object v1, p0, Lmqe;->a:Lmqa;

    iget-object v1, v1, Lmqa;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v1

    iput-object v1, v0, Lmqa;->e:Ljava/nio/channels/WritableByteChannel;

    .line 338
    :cond_0
    iget-object v0, p0, Lmqe;->a:Lmqa;

    iget-object v0, v0, Lmqa;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lmqg;->a:Lmqg;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 339
    iget-object v0, p0, Lmqe;->a:Lmqa;

    iget-object v0, v0, Lmqa;->f:Lorg/chromium/net/UploadDataProvider;

    iget-object v1, p0, Lmqe;->a:Lmqa;

    iget-object v2, p0, Lmqe;->a:Lmqa;

    iget-object v2, v2, Lmqa;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/net/UploadDataProvider;->a(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V

    .line 340
    return-void
.end method
