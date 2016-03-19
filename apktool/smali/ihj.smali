.class abstract Lihj;
.super Lorg/chromium/net/UrlRequest$Callback;
.source "SourceFile"


# instance fields
.field a:Lorg/chromium/net/UrlRequestException;

.field b:Lorg/chromium/net/UrlResponseInfo;

.field final synthetic c:Lihi;


# direct methods
.method constructor <init>(Lihi;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lihj;->c:Lihi;

    invoke-direct {p0}, Lorg/chromium/net/UrlRequest$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/net/UrlRequest;)V
    .locals 0

    .prologue
    .line 425
    invoke-interface {p1}, Lorg/chromium/net/UrlRequest;->b()V

    .line 426
    return-void
.end method

.method public a(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 6

    .prologue
    .line 418
    iget-object v1, p0, Lihj;->c:Lihi;

    .line 1673
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->b()Ljava/util/Map;

    move-result-object v2

    .line 1682
    iget-object v0, v1, Lihi;->o:Ljava/nio/channels/WritableByteChannel;

    if-nez v0, :cond_1

    .line 1686
    const/4 v0, 0x0

    .line 1687
    const-string v3, "Content-Length"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1688
    const-string v0, "Content-Length"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1690
    :cond_0
    if-eqz v0, :cond_1

    .line 1691
    iget-object v2, v1, Lihi;->q:Liht;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Liht;->b(J)V

    .line 1695
    :cond_1
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lihi;->r:Ljava/lang/String;

    .line 1696
    iget-object v0, v1, Lihi;->j:Lihp;

    if-eqz v0, :cond_2

    .line 1697
    iget-object v0, v1, Lihi;->j:Lihp;

    invoke-virtual {v0}, Lihp;->a()V

    .line 1698
    iget-object v0, v1, Lihi;->q:Liht;

    iget-object v1, v1, Lihi;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Liht;->a(Ljava/lang/String;)V

    .line 419
    :cond_2
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/chromium/net/UrlRequest;->a(Ljava/nio/ByteBuffer;)V

    .line 420
    return-void
.end method

.method public a(Lorg/chromium/net/UrlResponseInfo;)V
    .locals 2

    .prologue
    .line 430
    iput-object p1, p0, Lihj;->b:Lorg/chromium/net/UrlResponseInfo;

    .line 431
    iget-object v0, p0, Lihj;->c:Lihi;

    .line 2052
    const/4 v1, 0x1

    iput-boolean v1, v0, Lihi;->s:Z

    .line 432
    return-void
.end method

.method public a(Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/UrlRequestException;)V
    .locals 2

    .prologue
    .line 437
    iput-object p2, p0, Lihj;->a:Lorg/chromium/net/UrlRequestException;

    .line 438
    iput-object p1, p0, Lihj;->b:Lorg/chromium/net/UrlResponseInfo;

    .line 439
    iget-object v0, p0, Lihj;->c:Lihi;

    .line 3052
    const/4 v1, 0x1

    iput-boolean v1, v0, Lihi;->s:Z

    .line 440
    return-void
.end method

.method public b(Lorg/chromium/net/UrlResponseInfo;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 444
    iput-object p1, p0, Lihj;->b:Lorg/chromium/net/UrlResponseInfo;

    .line 445
    iget-object v0, p0, Lihj;->c:Lihi;

    .line 4052
    iput-boolean v1, v0, Lihi;->p:Z

    .line 446
    iget-object v0, p0, Lihj;->c:Lihi;

    .line 5052
    iput-boolean v1, v0, Lihi;->s:Z

    .line 447
    return-void
.end method
