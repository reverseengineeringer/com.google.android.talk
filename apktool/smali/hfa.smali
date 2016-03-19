.class public abstract Lhfa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;

.field private b:Lhdo;

.field private c:Landroid/media/MediaCodec;

.field private d:Lhdq;

.field private final e:J

.field private final f:I

.field private final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private h:I

.field private i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private m:Ljava/nio/ByteBuffer;

.field private n:I

.field private final o:Ljava/lang/Object;

.field private p:I

.field private volatile q:Z

.field private final r:Lhgc;

.field private volatile s:Z

.field private volatile t:Z

.field private volatile u:F

.field private v:I

.field private w:I

.field private final x:Ljava/util/Random;

.field private y:J


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;Lhdo;JIIIIII)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-boolean v4, p0, Lhfa;->s:Z

    .line 158
    iput-boolean v4, p0, Lhfa;->t:Z

    .line 173
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lhfa;->x:Ljava/util/Random;

    .line 206
    iput-object p1, p0, Lhfa;->a:Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;

    .line 207
    iput-object p2, p0, Lhfa;->b:Lhdo;

    .line 208
    iput-wide p3, p0, Lhfa;->e:J

    .line 209
    iput p5, p0, Lhfa;->f:I

    .line 210
    iput p6, p0, Lhfa;->k:I

    .line 211
    iput p7, p0, Lhfa;->l:I

    .line 212
    iput p8, p0, Lhfa;->h:I

    .line 213
    iput p9, p0, Lhfa;->i:I

    .line 214
    if-lez p10, :cond_0

    .line 217
    :goto_0
    iput p10, p0, Lhfa;->j:I

    .line 218
    const-string v0, "vclib"

    const-string v1, "Maximum outstanding encoder frames set to %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lhfa;->j:I

    .line 219
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 218
    invoke-static {v0, v1, v2}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lhfa;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 222
    iput v4, p0, Lhfa;->n:I

    .line 223
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lhfa;->o:Ljava/lang/Object;

    .line 224
    iput-boolean v4, p0, Lhfa;->q:Z

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Lhfa;->u:F

    .line 226
    iput v4, p0, Lhfa;->v:I

    .line 227
    iput v4, p0, Lhfa;->w:I

    .line 228
    new-instance v0, Lhgc;

    const-string v1, "MediaCodecEncoder"

    invoke-direct {v0, v1}, Lhgc;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lhfa;->r:Lhgc;

    .line 229
    return-void

    .line 217
    :cond_0
    const/4 p10, 0x2

    goto :goto_0
.end method

.method private static a(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 442
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 443
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 444
    add-int v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 445
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(JLjava/nio/ByteBuffer;IIIIIZ)I
    .locals 13

    .prologue
    .line 291
    iget-object v1, p0, Lhfa;->a:Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;

    iget-wide v2, p0, Lhfa;->e:J

    move-wide v4, p1

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual/range {v1 .. v12}, Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;->sendEncodedFrame(JJLjava/nio/ByteBuffer;IIIIIZ)I

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/String;)Landroid/media/MediaCodec;
    .locals 1

    .prologue
    .line 284
    invoke-static {p1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(I)Ljava/nio/ByteBuffer;
.end method

.method protected abstract a()V
.end method

.method public a(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 12

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v0, 0x1

    const/4 v11, 0x0

    .line 481
    invoke-static {}, Lhbs;->f()V

    .line 482
    iget-boolean v1, p0, Lhfa;->s:Z

    if-eqz v1, :cond_1

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    invoke-virtual {p0, p1}, Lhfa;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 487
    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 496
    iget v2, p0, Lhfa;->f:I

    if-ne v2, v0, :cond_2

    .line 4134
    :goto_1
    const-string v2, "Expected condition to be true"

    invoke-static {v2, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 498
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lhfa;->m:Ljava/nio/ByteBuffer;

    .line 499
    iget-object v0, p0, Lhfa;->m:Ljava/nio/ByteBuffer;

    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 500
    invoke-static {v1, v2, v3}, Lhfa;->a(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 499
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 501
    iget-object v0, p0, Lhfa;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, v11}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    :cond_2
    move v0, v11

    .line 496
    goto :goto_1

    .line 4658
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4659
    iget-wide v4, p0, Lhfa;->y:J

    sub-long v4, v2, v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_4

    .line 4663
    iget v4, p0, Lhfa;->w:I

    if-eqz v4, :cond_4

    .line 4666
    iput-wide v2, p0, Lhfa;->y:J

    .line 4667
    const/high16 v2, 0x3e800000    # 0.25f

    iget v3, p0, Lhfa;->v:I

    int-to-float v3, v3

    iget v4, p0, Lhfa;->v:I

    iget v5, p0, Lhfa;->w:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f400000    # 0.75f

    iget v4, p0, Lhfa;->u:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lhfa;->u:F

    .line 4672
    iput v11, p0, Lhfa;->v:I

    .line 4673
    iput v11, p0, Lhfa;->w:I

    .line 508
    :cond_4
    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    move v10, v0

    .line 509
    :goto_2
    if-eqz v10, :cond_8

    .line 511
    iput v11, p0, Lhfa;->n:I

    .line 5458
    iget-object v2, p0, Lhfa;->m:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_6

    :goto_3
    move-object v4, v1

    .line 517
    :goto_4
    iget-wide v2, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    div-long/2addr v2, v6

    .line 518
    invoke-virtual {p0}, Lhfa;->b()I

    move-result v9

    .line 519
    iget v1, p0, Lhfa;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lhfa;->n:I

    .line 521
    iget v5, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v6, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v7, p0, Lhfa;->h:I

    iget v8, p0, Lhfa;->i:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lhfa;->a(JLjava/nio/ByteBuffer;IIIIIZ)I

    move-result v1

    .line 523
    if-lez v1, :cond_7

    .line 528
    iput-boolean v0, p0, Lhfa;->q:Z

    .line 531
    iget v1, p0, Lhfa;->v:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lhfa;->v:I

    .line 538
    :goto_5
    iget-object v1, p0, Lhfa;->c:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1, v11}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 539
    iget-object v1, p0, Lhfa;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    .line 540
    if-gez v1, :cond_0

    .line 541
    const-string v2, "vclib"

    const-string v3, "The encoder for resolution: (%dx%d) produced extra frames, recovering."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lhfa;->k:I

    .line 542
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    iget v5, p0, Lhfa;->l:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    .line 541
    invoke-static {v2, v3, v4}, Lhlk;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    iget-object v0, p0, Lhfa;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1, v11}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    goto/16 :goto_0

    :cond_5
    move v10, v11

    .line 508
    goto :goto_2

    .line 5462
    :cond_6
    iget-object v2, p0, Lhfa;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 5465
    iget-object v2, p0, Lhfa;->m:Ljava/nio/ByteBuffer;

    .line 5466
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    iget v3, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 5467
    iget-object v3, p0, Lhfa;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 5468
    iget v3, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 5469
    invoke-static {v1, v3, v4}, Lhfa;->a(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 5468
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 5470
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 5471
    iput v11, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 5472
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    iput v1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object v1, v2

    .line 5473
    goto/16 :goto_3

    .line 533
    :cond_7
    iget v1, p0, Lhfa;->w:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lhfa;->w:I

    goto :goto_5

    :cond_8
    move-object v4, v1

    goto/16 :goto_4
.end method

.method protected abstract a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
.end method

.method protected a(Landroid/media/MediaFormat;)V
    .locals 8

    .prologue
    .line 556
    iget-boolean v0, p0, Lhfa;->s:Z

    if-eqz v0, :cond_1

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    iget v0, p0, Lhfa;->h:I

    const-string v1, "width"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lhfa;->i:I

    const-string v1, "height"

    .line 561
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 562
    :cond_2
    const-string v0, "vclib"

    const-string v1, "Encoder is unable to handle the exact requested camera size. Original size requested: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lhfa;->h:I

    iget v3, p0, Lhfa;->i:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x25

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6101
    const/4 v2, 0x6

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v1, p0, Lhfa;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 568
    :try_start_0
    const-string v0, "width"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lhfa;->h:I

    .line 569
    const-string v0, "height"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lhfa;->i:I

    .line 570
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Ljava/lang/IllegalStateException;Z)V
    .locals 2

    .prologue
    .line 87
    const-string v0, "vclib"

    const-string v1, "MediaCodec encoder exception:"

    invoke-static {v0, v1, p1}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhfa;->s:Z

    .line 89
    iput-boolean p2, p0, Lhfa;->t:Z

    .line 90
    return-void
.end method

.method public a(IIIJZ[F)Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 380
    iget-object v7, p0, Lhfa;->o:Ljava/lang/Object;

    monitor-enter v7

    .line 381
    :try_start_0
    iget-boolean v1, p0, Lhfa;->s:Z

    if-eqz v1, :cond_0

    .line 382
    monitor-exit v7

    .line 432
    :goto_0
    return v0

    .line 384
    :cond_0
    iget-object v1, p0, Lhfa;->d:Lhdq;

    if-nez v1, :cond_1

    .line 386
    monitor-exit v7

    goto :goto_0

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 388
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lhfa;->q:Z

    if-nez v1, :cond_2

    iget v1, p0, Lhfa;->u:F

    .line 3677
    iget-object v2, p0, Lhfa;->x:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    .line 3678
    cmpg-float v1, v2, v1

    if-gez v1, :cond_4

    move v1, v6

    .line 388
    :goto_1
    if-eqz v1, :cond_5

    :cond_2
    move v1, v6

    .line 389
    :goto_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lhfa;->q:Z

    .line 390
    iget-object v2, p0, Lhfa;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v2

    .line 391
    iget v3, p0, Lhfa;->j:I

    if-lt v2, v3, :cond_3

    .line 395
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lhfa;->k:I

    .line 399
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget v4, p0, Lhfa;->l:I

    .line 400
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    .line 401
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    move v1, v6

    .line 405
    :cond_3
    if-eqz v1, :cond_6

    .line 406
    monitor-exit v7

    goto :goto_0

    :cond_4
    move v1, v0

    .line 3678
    goto :goto_1

    :cond_5
    move v1, v0

    .line 388
    goto :goto_2

    .line 409
    :cond_6
    iget-object v1, p0, Lhfa;->d:Lhdq;

    invoke-virtual {v1}, Lhdq;->a()Z

    .line 410
    iget-object v1, p0, Lhfa;->d:Lhdq;

    invoke-virtual {v1, p4, p5}, Lhdq;->a(J)Z

    move-result v1

    if-nez v1, :cond_7

    .line 411
    const-string v1, "vclib"

    iget v2, p0, Lhfa;->k:I

    iget v3, p0, Lhfa;->l:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x55

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unable to start frame operation for encoder: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Encode failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4101
    const/4 v3, 0x6

    invoke-static {v3, v1, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 413
    monitor-exit v7

    goto/16 :goto_0

    .line 419
    :cond_7
    iget-object v0, p0, Lhfa;->r:Lhgc;

    const/4 v4, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lhgc;->a(IIIZZ)V

    .line 422
    iget-object v0, p0, Lhfa;->r:Lhgc;

    iget v1, p0, Lhfa;->h:I

    iget v2, p0, Lhfa;->i:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lhgc;->a(IIZ)V

    .line 424
    iget-object v0, p0, Lhfa;->r:Lhgc;

    invoke-virtual {v0, p7}, Lhgc;->b([F)V

    .line 425
    iget-object v0, p0, Lhfa;->r:Lhgc;

    invoke-virtual {v0}, Lhgc;->d()Z

    .line 430
    iget-object v0, p0, Lhfa;->d:Lhdq;

    invoke-virtual {v0}, Lhdq;->c()Z

    .line 431
    iget-object v0, p0, Lhfa;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 432
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v6

    goto/16 :goto_0
.end method

.method protected abstract b()I
.end method

.method public b(I)Z
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1594
    mul-int/lit16 v2, p1, 0x3b6

    .line 297
    iput v2, p0, Lhfa;->p:I

    .line 299
    :try_start_0
    invoke-virtual {p0}, Lhfa;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lhfa;->a(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lhfa;->c:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    iget-object v2, p0, Lhfa;->c:Landroid/media/MediaCodec;

    if-nez v2, :cond_1

    .line 306
    const-string v0, "Unexpected: MediaCodec.createEncoderByType returned null."

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    .line 307
    const-string v2, "vclib"

    const-string v3, "Unable to create a hardware encoder for "

    invoke-virtual {p0}, Lhfa;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2101
    :goto_0
    invoke-static {v7, v2, v0}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 362
    :goto_1
    return v0

    .line 301
    :catch_0
    move-exception v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unable to create hardware encoder. Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    move v0, v1

    .line 303
    goto :goto_1

    .line 307
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :cond_1
    invoke-static {}, Lhlk;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 311
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lhfa;->k:I

    .line 313
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    iget v3, p0, Lhfa;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    iget v4, p0, Lhfa;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lhfa;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 314
    new-array v2, v0, [Ljava/lang/Object;

    iget v3, p0, Lhfa;->p:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    .line 315
    new-array v2, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lhfa;->c:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 316
    new-array v2, v0, [Ljava/lang/Object;

    iget-wide v4, p0, Lhfa;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    .line 319
    :cond_2
    invoke-virtual {p0}, Lhfa;->k()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lhfa;->h:I

    iget v4, p0, Lhfa;->i:I

    .line 318
    invoke-static {v2, v3, v4}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    .line 320
    const-string v3, "color-format"

    const v4, 0x7f000789

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 322
    const-string v3, "bitrate"

    iget v4, p0, Lhfa;->p:I

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 328
    const-string v3, "frame-rate"

    const/16 v4, 0x1e

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 331
    const-string v3, "i-frame-interval"

    const/16 v4, 0x78

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 333
    iget-object v3, p0, Lhfa;->c:Landroid/media/MediaCodec;

    invoke-virtual {p0, v3, v2}, Lhfa;->a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    .line 334
    new-array v3, v0, [Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 338
    :try_start_1
    iget-object v3, p0, Lhfa;->c:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 341
    new-instance v2, Lhdq;

    iget-object v3, p0, Lhfa;->b:Lhdo;

    iget-object v4, p0, Lhfa;->c:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lhdq;-><init>(Lhdo;Landroid/view/Surface;)V

    .line 342
    iget-object v3, p0, Lhfa;->c:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V

    .line 344
    iget-object v3, p0, Lhfa;->o:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 345
    :try_start_2
    iget-object v4, p0, Lhfa;->d:Lhdq;

    if-eqz v4, :cond_3

    .line 347
    const-string v4, "Existing input surface on the encoder instance."

    invoke-static {v4}, Lhbs;->a(Ljava/lang/String;)V

    .line 348
    iget-object v4, p0, Lhfa;->d:Lhdq;

    invoke-virtual {v4}, Lhdq;->b()V

    .line 350
    :cond_3
    iput-object v2, p0, Lhfa;->d:Lhdq;

    .line 351
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 353
    :try_start_3
    invoke-virtual {p0}, Lhfa;->a()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 354
    :catch_1
    move-exception v2

    .line 355
    const-string v3, "vclib"

    const-string v4, "Encoder initialization failed."

    .line 3101
    invoke-static {v7, v3, v4}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0, v2, v0}, Lhfa;->a(Ljava/lang/IllegalStateException;Z)V

    move v0, v1

    .line 360
    goto/16 :goto_1

    .line 351
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method protected c()Landroid/media/MediaCodec;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lhfa;->c:Landroid/media/MediaCodec;

    return-object v0
.end method

.method public c(I)V
    .locals 6

    .prologue
    .line 599
    iget-boolean v0, p0, Lhfa;->s:Z

    if-eqz v0, :cond_1

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 7594
    :cond_1
    mul-int/lit16 v0, p1, 0x3b6

    .line 603
    iget v1, p0, Lhfa;->p:I

    if-eq v0, v1, :cond_0

    .line 606
    const-string v1, "vclib"

    iget v2, p0, Lhfa;->k:I

    iget v3, p0, Lhfa;->l:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x51

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Encoder bitrate changing to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for resolution: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8081
    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 608
    iput v0, p0, Lhfa;->p:I

    .line 609
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 610
    const-string v1, "video-bitrate"

    iget v2, p0, Lhfa;->p:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 611
    iget-object v1, p0, Lhfa;->c:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected d()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lhfa;->n:I

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lhfa;->s:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lhfa;->t:Z

    return v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 240
    iget-wide v0, p0, Lhfa;->e:J

    return-wide v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lhfa;->f:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lhfa;->k:I

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lhfa;->l:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 271
    iget v0, p0, Lhfa;->f:I

    if-nez v0, :cond_0

    .line 272
    const-string v0, "video/x-vnd.on2.vp8"

    .line 277
    :goto_0
    return-object v0

    .line 273
    :cond_0
    iget v0, p0, Lhfa;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 274
    const-string v0, "video/avc"

    goto :goto_0

    .line 276
    :cond_1
    iget v0, p0, Lhfa;->f:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown codec type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    .line 277
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()V
    .locals 5

    .prologue
    .line 576
    iget-boolean v0, p0, Lhfa;->s:Z

    if-eqz v0, :cond_0

    .line 584
    :goto_0
    return-void

    .line 579
    :cond_0
    const-string v0, "vclib"

    iget v1, p0, Lhfa;->k:I

    iget v2, p0, Lhfa;->l:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x42

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Encoder keyframe request for resolution: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7081
    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 581
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 582
    const-string v1, "request-sync"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 583
    iget-object v1, p0, Lhfa;->c:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public m()Lhdq;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 632
    iget-object v1, p0, Lhfa;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 633
    :try_start_0
    iget-object v0, p0, Lhfa;->d:Lhdq;

    .line 634
    const/4 v2, 0x0

    iput-object v2, p0, Lhfa;->d:Lhdq;

    .line 635
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    iget-object v1, p0, Lhfa;->c:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    .line 637
    iget-object v1, p0, Lhfa;->c:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lhfa;->k:I

    iget v3, p0, Lhfa;->l:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x32

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Releasing encoder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", size: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 640
    :try_start_1
    iget-object v1, p0, Lhfa;->c:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 645
    :goto_0
    iget-object v1, p0, Lhfa;->c:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 646
    iput-object v6, p0, Lhfa;->c:Landroid/media/MediaCodec;

    .line 648
    :cond_0
    return-object v0

    .line 635
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
