.class final Lihk;
.super Lihj;
.source "SourceFile"


# instance fields
.field final synthetic d:Lihi;

.field private final e:Lihl;


# direct methods
.method constructor <init>(Lihi;Lihl;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lihk;->d:Lihi;

    .line 1412
    invoke-direct {p0, p1}, Lihj;-><init>(Lihi;)V

    .line 454
    iput-object p2, p0, Lihk;->e:Lihl;

    .line 455
    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/net/UrlRequest;Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lihk;->e:Lihl;

    invoke-virtual {v0, p2}, Lihl;->a(Ljava/nio/ByteBuffer;)V

    .line 462
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    invoke-interface {p1, p2}, Lorg/chromium/net/UrlRequest;->a(Ljava/nio/ByteBuffer;)V

    .line 470
    :goto_0
    return-void

    .line 468
    :cond_0
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/chromium/net/UrlRequest;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method
