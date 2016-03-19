.class final Lmpw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmpz;


# instance fields
.field final synthetic a:Lorg/chromium/net/UrlResponseInfo;

.field final synthetic b:Ljava/nio/ByteBuffer;

.field final synthetic c:Lmpt;


# direct methods
.method constructor <init>(Lmpt;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 783
    iput-object p1, p0, Lmpw;->c:Lmpt;

    iput-object p2, p0, Lmpw;->a:Lorg/chromium/net/UrlResponseInfo;

    iput-object p3, p0, Lmpw;->b:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 786
    iget-object v0, p0, Lmpw;->c:Lmpt;

    iget-object v0, v0, Lmpt;->c:Lmpe;

    .line 1035
    iget-object v0, v0, Lmpe;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 786
    sget-object v1, Lmqh;->f:Lmqh;

    sget-object v2, Lmqh;->e:Lmqh;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lmpw;->c:Lmpt;

    iget-object v0, v0, Lmpt;->a:Lorg/chromium/net/UrlRequest$Callback;

    iget-object v1, p0, Lmpw;->c:Lmpt;

    iget-object v1, v1, Lmpt;->c:Lmpe;

    iget-object v2, p0, Lmpw;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/net/UrlRequest$Callback;->a(Lorg/chromium/net/UrlRequest;Ljava/nio/ByteBuffer;)V

    .line 789
    :cond_0
    return-void
.end method
