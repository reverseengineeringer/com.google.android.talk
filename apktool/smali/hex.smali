.class final Lhex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhew;


# direct methods
.method constructor <init>(Lhew;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lhex;->a:Lhew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 31
    iget-object v0, p0, Lhex;->a:Lhew;

    invoke-virtual {v0}, Lhew;->e()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lhex;->a:Lhew;

    .line 1016
    iget-object v1, v1, Lhew;->f:Ljava/lang/Runnable;

    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 34
    iget-object v2, p0, Lhex;->a:Lhew;

    invoke-virtual {v2}, Lhew;->d()Landroid/media/MediaCodec;

    move-result-object v2

    .line 36
    if-nez v2, :cond_0

    .line 63
    :goto_0
    return-void

    .line 42
    :cond_0
    :try_start_0
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 43
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    .line 44
    if-ltz v4, :cond_2

    .line 45
    iget-object v2, p0, Lhex;->a:Lhew;

    invoke-virtual {v2, v4, v3}, Lhew;->a(ILandroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 60
    const-wide/16 v2, 0xa

    sub-long v0, v2, v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 62
    iget-object v2, p0, Lhex;->a:Lhew;

    invoke-virtual {v2}, Lhew;->e()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lhex;->a:Lhew;

    .line 3016
    iget-object v3, v3, Lhew;->f:Ljava/lang/Runnable;

    .line 62
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 46
    :cond_2
    const/4 v3, -0x2

    if-ne v4, v3, :cond_3

    .line 47
    :try_start_1
    iget-object v3, p0, Lhex;->a:Lhew;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    invoke-virtual {v3, v2}, Lhew;->a(Landroid/media/MediaFormat;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 51
    :catch_0
    move-exception v0

    .line 55
    iget-object v1, p0, Lhex;->a:Lhew;

    invoke-virtual {v1, v0}, Lhew;->a(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    .line 48
    :cond_3
    const/4 v3, -0x3

    if-ne v4, v3, :cond_1

    .line 49
    :try_start_2
    iget-object v3, p0, Lhex;->a:Lhew;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 2016
    iput-object v2, v3, Lhew;->g:[Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method
