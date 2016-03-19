.class final Lhez;
.super Landroid/media/MediaCodec$Callback;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhey;


# direct methods
.method constructor <init>(Lhey;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lhez;->a:Lhey;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lhez;->a:Lhey;

    invoke-virtual {v0, p2}, Lhey;->a(Ljava/lang/IllegalStateException;)V

    .line 27
    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lhez;->a:Lhey;

    invoke-virtual {v0}, Lhey;->d()Landroid/media/MediaCodec;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 32
    iget-object v0, p0, Lhez;->a:Lhey;

    .line 1018
    iget-object v0, v0, Lhey;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 32
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lhez;->a:Lhey;

    invoke-virtual {v0}, Lhey;->d()Landroid/media/MediaCodec;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 40
    iget-object v0, p0, Lhez;->a:Lhey;

    invoke-virtual {v0, p2, p3}, Lhey;->a(ILandroid/media/MediaCodec$BufferInfo;)V

    .line 42
    :cond_0
    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lhez;->a:Lhey;

    invoke-virtual {v0}, Lhey;->d()Landroid/media/MediaCodec;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 47
    iget-object v0, p0, Lhez;->a:Lhey;

    invoke-virtual {v0, p2}, Lhey;->a(Landroid/media/MediaFormat;)V

    .line 49
    :cond_0
    return-void
.end method
