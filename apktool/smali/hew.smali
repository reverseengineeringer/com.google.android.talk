.class public final Lhew;
.super Lcom/google/android/libraries/hangouts/video/internal/MediaCodecDecoder;
.source "SourceFile"


# instance fields
.field final f:Ljava/lang/Runnable;

.field g:[Ljava/nio/ByteBuffer;

.field private h:[Ljava/nio/ByteBuffer;

.field private i:I


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;Lhev;)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/hangouts/video/internal/MediaCodecDecoder;-><init>(Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;Lhev;)V

    .line 28
    new-instance v0, Lhex;

    invoke-direct {v0, p0}, Lhex;-><init>(Lhew;)V

    iput-object v0, p0, Lhew;->f:Ljava/lang/Runnable;

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lhew;->i:I

    .line 90
    return-void
.end method


# virtual methods
.method protected a(I)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lhew;->h:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lhew;->d()Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lhew;->h:[Ljava/nio/ByteBuffer;

    .line 95
    invoke-virtual {p0}, Lhew;->d()Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lhew;->g:[Ljava/nio/ByteBuffer;

    .line 98
    invoke-virtual {p0}, Lhew;->e()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lhew;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lhew;->e()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lhew;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method

.method protected b(I)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 127
    if-eq p1, v2, :cond_0

    iget v0, p0, Lhew;->i:I

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1134
    :goto_0
    const-string v1, "Expected condition to be true"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 128
    iput v2, p0, Lhew;->i:I

    .line 129
    return-void

    .line 127
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()I
    .locals 4

    .prologue
    .line 119
    iget v0, p0, Lhew;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lhew;->d()Landroid/media/MediaCodec;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    iput v0, p0, Lhew;->i:I

    .line 122
    :cond_0
    iget v0, p0, Lhew;->i:I

    return v0
.end method
