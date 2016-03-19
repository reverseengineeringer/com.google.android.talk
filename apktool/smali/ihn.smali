.class final Lihn;
.super Lihj;
.source "SourceFile"


# instance fields
.field final synthetic d:Lihi;

.field private final e:Ljava/nio/channels/WritableByteChannel;


# direct methods
.method constructor <init>(Lihi;Ljava/nio/channels/WritableByteChannel;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lihn;->d:Lihi;

    .line 1412
    invoke-direct {p0, p1}, Lihj;-><init>(Lihi;)V

    .line 478
    iput-object p2, p0, Lihn;->e:Ljava/nio/channels/WritableByteChannel;

    .line 479
    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/net/UrlRequest;Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 485
    iget-object v0, p0, Lihn;->e:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0, p2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 486
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 487
    invoke-interface {p1, p2}, Lorg/chromium/net/UrlRequest;->a(Ljava/nio/ByteBuffer;)V

    .line 488
    return-void
.end method
