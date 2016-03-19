.class final Lhfe;
.super Landroid/media/MediaCodec$Callback;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhfd;


# direct methods
.method constructor <init>(Lhfd;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lhfe;->a:Lhfd;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 2

    .prologue
    .line 27
    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isTransient()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 28
    :goto_0
    iget-object v1, p0, Lhfe;->a:Lhfd;

    invoke-virtual {v1, p2, v0}, Lhfd;->a(Ljava/lang/IllegalStateException;Z)V

    .line 29
    return-void

    .line 27
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 3

    .prologue
    .line 35
    const-string v0, "vclib"

    const-string v1, "Ignoring unexpected onInputBufferAvailable from encoder MediaCodec."

    .line 1089
    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lhfe;->a:Lhfd;

    invoke-virtual {v0, p2, p3}, Lhfd;->a(ILandroid/media/MediaCodec$BufferInfo;)V

    .line 42
    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lhfe;->a:Lhfd;

    invoke-virtual {v0, p2}, Lhfd;->a(Landroid/media/MediaFormat;)V

    .line 47
    return-void
.end method
