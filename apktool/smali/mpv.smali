.class final Lmpv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmpz;


# instance fields
.field final synthetic a:Lmpt;


# direct methods
.method constructor <init>(Lmpt;)V
    .locals 0

    .prologue
    .line 772
    iput-object p1, p0, Lmpv;->a:Lmpt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 775
    iget-object v0, p0, Lmpv;->a:Lmpt;

    iget-object v0, v0, Lmpt;->c:Lmpe;

    .line 1035
    iget-object v0, v0, Lmpe;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 775
    sget-object v1, Lmqh;->b:Lmqh;

    sget-object v2, Lmqh;->e:Lmqh;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lmpv;->a:Lmpt;

    iget-object v0, v0, Lmpt;->a:Lorg/chromium/net/UrlRequest$Callback;

    iget-object v1, p0, Lmpv;->a:Lmpt;

    iget-object v1, v1, Lmpt;->c:Lmpe;

    iget-object v2, p0, Lmpv;->a:Lmpt;

    iget-object v2, v2, Lmpt;->c:Lmpe;

    .line 2035
    iget-object v2, v2, Lmpe;->n:Lorg/chromium/net/UrlResponseInfo;

    .line 776
    invoke-virtual {v0, v1, v2}, Lorg/chromium/net/UrlRequest$Callback;->a(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V

    .line 778
    :cond_0
    return-void
.end method
