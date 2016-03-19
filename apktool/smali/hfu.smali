.class public final Lhfu;
.super Lhgn;
.source "SourceFile"

# interfaces
.implements Lhev;


# instance fields
.field final a:Lhci;

.field final b:Lcom/google/android/libraries/hangouts/video/internal/MediaCodecDecoder;

.field final c:Lhff;

.field final d:Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;

.field e:Lcom/google/android/libraries/hangouts/video/internal/Renderer;

.field f:I

.field volatile g:Z

.field h:I

.field i:Landroid/view/Surface;

.field private final j:Lhee;

.field private final k:Lcom/google/android/libraries/hangouts/video/internal/RendererManager;

.field private final q:Lhfz;

.field private final r:Lhga;

.field private final s:Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer$RendererFrameOutputData;

.field private final t:Z


# direct methods
.method public constructor <init>(Lhcd;Lhfn;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    invoke-virtual {p1}, Lhcd;->e()Lhee;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lhgn;-><init>(Lhee;Lhfn;)V

    .line 35
    new-instance v0, Lhfz;

    .line 1386
    invoke-direct {v0, p0}, Lhfz;-><init>(Lhfu;)V

    .line 35
    iput-object v0, p0, Lhfu;->q:Lhfz;

    .line 37
    new-instance v0, Lhga;

    .line 1436
    invoke-direct {v0, p0}, Lhga;-><init>(Lhfu;)V

    .line 37
    iput-object v0, p0, Lhfu;->r:Lhga;

    .line 38
    new-instance v0, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer$RendererFrameOutputData;

    invoke-direct {v0}, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer$RendererFrameOutputData;-><init>()V

    iput-object v0, p0, Lhfu;->s:Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer$RendererFrameOutputData;

    .line 51
    invoke-virtual {p1}, Lhcd;->d()Lhci;

    move-result-object v0

    iput-object v0, p0, Lhfu;->a:Lhci;

    .line 52
    invoke-virtual {p1}, Lhcd;->e()Lhee;

    move-result-object v0

    iput-object v0, p0, Lhfu;->j:Lhee;

    .line 53
    invoke-virtual {p1}, Lhcd;->f()Lcom/google/android/libraries/hangouts/video/internal/RendererManager;

    move-result-object v0

    iput-object v0, p0, Lhfu;->k:Lcom/google/android/libraries/hangouts/video/internal/RendererManager;

    .line 54
    invoke-virtual {p1}, Lhcd;->l()Lhkv;

    move-result-object v0

    invoke-virtual {v0}, Lhkv;->a()Lhkt;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    invoke-virtual {v0}, Lhkt;->z()Ljug;

    move-result-object v0

    iget-object v0, v0, Ljug;->z:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 57
    :goto_0
    invoke-virtual {p1}, Lhcd;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "babel_hangout_hardware_decode_use_gl"

    invoke-static {v3, v4, v2}, Lgvj;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v0, :cond_3

    :cond_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lhfu;->t:Z

    .line 59
    invoke-virtual {p2}, Lhfn;->c()Lhil;

    move-result-object v0

    invoke-virtual {v0}, Lhil;->o()Z

    move-result v0

    iput-boolean v0, p0, Lhfu;->o:Z

    .line 60
    invoke-virtual {p2}, Lhfn;->c()Lhil;

    move-result-object v0

    invoke-virtual {v0}, Lhil;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 61
    :goto_2
    iput v0, p0, Lhfu;->f:I

    .line 62
    invoke-virtual {p1}, Lhcd;->h()Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;->a(Lhev;)Lcom/google/android/libraries/hangouts/video/internal/MediaCodecDecoder;

    move-result-object v0

    iput-object v0, p0, Lhfu;->b:Lcom/google/android/libraries/hangouts/video/internal/MediaCodecDecoder;

    .line 64
    iget-boolean v0, p0, Lhfu;->t:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lhfu;->b:Lcom/google/android/libraries/hangouts/video/internal/MediaCodecDecoder;

    if-eqz v0, :cond_5

    .line 65
    const-string v0, "vclib"

    const-string v3, "%s: Decoding video directly to surface is supported."

    new-array v1, v1, [Ljava/lang/Object;

    .line 66
    invoke-virtual {p0}, Lhfu;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 65
    invoke-static {v0, v3, v1}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    new-instance v0, Lhff;

    iget-object v1, p0, Lhfu;->k:Lcom/google/android/libraries/hangouts/video/internal/RendererManager;

    iget-object v2, p0, Lhfu;->b:Lcom/google/android/libraries/hangouts/video/internal/MediaCodecDecoder;

    invoke-direct {v0, v1, v2}, Lhff;-><init>(Lcom/google/android/libraries/hangouts/video/internal/RendererManager;Lcom/google/android/libraries/hangouts/video/internal/MediaCodecDecoder;)V

    iput-object v0, p0, Lhfu;->c:Lhff;

    .line 73
    :goto_3
    new-instance v0, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;

    iget-object v1, p0, Lhfu;->k:Lcom/google/android/libraries/hangouts/video/internal/RendererManager;

    iget-object v2, p0, Lhfu;->b:Lcom/google/android/libraries/hangouts/video/internal/MediaCodecDecoder;

    iget-object v3, p0, Lhfu;->j:Lhee;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;-><init>(Lcom/google/android/libraries/hangouts/video/internal/RendererManager;Lcom/google/android/libraries/hangouts/video/internal/MediaCodecDecoder;Lhee;Lhfu;)V

    iput-object v0, p0, Lhfu;->d:Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;

    .line 74
    iget-object v0, p0, Lhfu;->d:Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;

    iput-object v0, p0, Lhfu;->e:Lcom/google/android/libraries/hangouts/video/internal/Renderer;

    .line 76
    iget-object v0, p0, Lhfu;->j:Lhee;

    new-instance v1, Lhfv;

    invoke-direct {v1, p0}, Lhfv;-><init>(Lhfu;)V

    invoke-virtual {v0, v1}, Lhee;->a(Ljava/lang/Runnable;)V

    .line 82
    iget v0, p0, Lhfu;->f:I

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lhfu;->i()V

    .line 85
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 56
    goto :goto_0

    :cond_3
    move v0, v2

    .line 57
    goto :goto_1

    .line 61
    :cond_4
    invoke-virtual {p2}, Lhfn;->c()Lhil;

    move-result-object v0

    invoke-virtual {v0}, Lhil;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    .line 69
    :cond_5
    const-string v0, "vclib"

    const-string v3, "%s: Decoding video directly to surface is not supported."

    new-array v1, v1, [Ljava/lang/Object;

    .line 70
    invoke-virtual {p0}, Lhfu;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 69
    invoke-static {v0, v3, v1}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lhfu;->c:Lhff;

    goto :goto_3
.end method

.method public static a(Landroid/media/MediaFormat;Lhlc;)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 333
    const-string v0, "width"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 334
    const-string v0, "height"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    .line 336
    invoke-virtual {p1, v5, v6}, Lhlc;->a(II)Lhlc;

    .line 338
    const-string v0, "crop-left"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    const-string v0, "crop-left"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 340
    :goto_0
    const-string v2, "crop-top"

    invoke-virtual {p0, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 341
    const-string v2, "crop-top"

    invoke-virtual {p0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 342
    :goto_1
    const-string v3, "crop-right"

    invoke-virtual {p0, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 343
    const-string v3, "crop-right"

    invoke-virtual {p0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 344
    :goto_2
    const-string v4, "crop-bottom"

    invoke-virtual {p0, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 345
    const-string v4, "crop-bottom"

    invoke-virtual {p0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 348
    :goto_3
    if-ltz v0, :cond_0

    if-ge v0, v5, :cond_0

    if-ltz v2, :cond_0

    if-ge v2, v6, :cond_0

    if-ltz v3, :cond_0

    if-ge v3, v5, :cond_0

    if-ltz v4, :cond_0

    if-lt v4, v6, :cond_7

    .line 350
    :cond_0
    const-string v7, "vclib"

    const-string v8, "Unexpected crop values: width: %d height: %d crop-left: %d crop-top: %d crop-right: %d crop-bottom: %d"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    .line 351
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v1

    const/4 v10, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v10

    const/4 v0, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v0

    const/4 v0, 0x4

    .line 352
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v0

    const/4 v0, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v0

    .line 350
    invoke-static {v7, v8, v9}, Lhlk;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    add-int/lit8 v3, v5, -0x1

    .line 356
    add-int/lit8 v0, v6, -0x1

    move v2, v1

    .line 359
    :goto_4
    if-gtz v3, :cond_1

    if-lez v0, :cond_6

    .line 360
    :cond_1
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v7, v5

    div-float/2addr v1, v7

    int-to-float v2, v2

    int-to-float v7, v6

    div-float/2addr v2, v7

    add-int/lit8 v7, v5, -0x1

    sub-int v3, v7, v3

    int-to-float v3, v3

    int-to-float v5, v5

    div-float/2addr v3, v5

    add-int/lit8 v5, v6, -0x1

    sub-int v0, v5, v0

    int-to-float v0, v0

    int-to-float v5, v6

    div-float/2addr v0, v5

    invoke-direct {v4, v1, v2, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v4}, Lhlc;->b(Landroid/graphics/RectF;)Lhlc;

    .line 368
    :goto_5
    return-void

    :cond_2
    move v0, v1

    .line 339
    goto/16 :goto_0

    :cond_3
    move v2, v1

    .line 341
    goto/16 :goto_1

    .line 343
    :cond_4
    add-int/lit8 v3, v5, -0x1

    goto :goto_2

    .line 345
    :cond_5
    add-int/lit8 v4, v6, -0x1

    goto :goto_3

    .line 366
    :cond_6
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p1, v0}, Lhlc;->b(Landroid/graphics/RectF;)Lhlc;

    goto :goto_5

    :cond_7
    move v1, v0

    move v0, v4

    goto :goto_4
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lhfu;->d:Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lhfu;->d:Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;

    invoke-virtual {v0}, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;->e()V

    .line 155
    :cond_0
    iget-object v0, p0, Lhfu;->c:Lhff;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lhfu;->c:Lhff;

    invoke-virtual {v0}, Lhff;->b()V

    .line 158
    :cond_1
    iget-object v0, p0, Lhfu;->b:Lcom/google/android/libraries/hangouts/video/internal/MediaCodecDecoder;

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lhfu;->b:Lcom/google/android/libraries/hangouts/video/internal/MediaCodecDecoder;

    invoke-virtual {v0}, Lcom/google/android/libraries/hangouts/video/internal/MediaCodecDecoder;->l()V

    .line 161
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lhfu;->p:Lhla;

    .line 162
    return-void
.end method

.method public a(I)V
    .locals 5

    .prologue
    .line 313
    const-string v0, "vclib"

    const-string v1, "%s: Codec type switched to: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lhfu;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    invoke-virtual {p0}, Lhfu;->i()V

    .line 315
    iget-boolean v0, p0, Lhfu;->t:Z

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lhfu;->r:Lhga;

    .line 3089
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 317
    iget-object v0, p0, Lhfu;->r:Lhga;

    const-wide/16 v2, 0xa

    invoke-static {v0, v2, v3}, Laal;->a(Ljava/lang/Runnable;J)V

    .line 319
    :cond_0
    return-void
.end method

.method public a(Landroid/media/MediaFormat;)V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lhfu;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhlc;

    invoke-virtual {v0}, Lhlc;->a()Lhlc;

    move-result-object v0

    .line 324
    invoke-static {p1, v0}, Lhfu;->a(Landroid/media/MediaFormat;Lhlc;)V

    .line 325
    iget-object v1, p0, Lhfu;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 326
    return-void
.end method

.method public a(Lhla;)V
    .locals 2

    .prologue
    .line 89
    const-string v0, "Cannot bind to a null surface"

    invoke-static {v0, p1}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lhfu;->e:Lcom/google/android/libraries/hangouts/video/internal/Renderer;

    instance-of v0, v0, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lhfu;->j:Lhee;

    invoke-virtual {v0, p1, p0}, Lhee;->a(Lhla;Lhgn;)V

    .line 92
    invoke-super {p0, p1}, Lhgn;->a(Lhla;)V

    .line 93
    invoke-virtual {p0}, Lhfu;->i()V

    .line 113
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lhfu;->b:Lcom/google/android/libraries/hangouts/video/internal/MediaCodecDecoder;

    invoke-virtual {v0}, Lcom/google/android/libraries/hangouts/video/internal/MediaCodecDecoder;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lhfw;

    invoke-direct {v1, p0, p1}, Lhfw;-><init>(Lhfu;Lhla;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Lhla;Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 118
    const-string v0, "Cannot unbind from a null surface"

    invoke-static {v0, p1}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lhfu;->p:Lhla;

    invoke-virtual {p1, v0}, Lhla;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const-string v0, "vclib"

    const-string v1, "This source was bound to a different surface, ignoring."

    .line 2073
    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 148
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lhfu;->e:Lcom/google/android/libraries/hangouts/video/internal/Renderer;

    instance-of v0, v0, Lhff;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lhfu;->b:Lcom/google/android/libraries/hangouts/video/internal/MediaCodecDecoder;

    invoke-virtual {v0}, Lcom/google/android/libraries/hangouts/video/internal/MediaCodecDecoder;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lhfx;

    invoke-direct {v1, p0, p1, p2}, Lhfx;-><init>(Lhfu;Lhla;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lhfu;->j:Lhee;

    invoke-virtual {v0, p1}, Lhee;->a(Lhla;)V

    .line 145
    invoke-super {p0, p1, p2}, Lhgn;->a(Lhla;Ljava/lang/Runnable;)V

    .line 146
    invoke-virtual {p0}, Lhfu;->i()V

    goto :goto_0
.end method

.method a(Lkja;)V
    .locals 11

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 264
    iget-object v0, p0, Lhfu;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhlc;

    invoke-virtual {v0}, Lhlc;->a()Lhlc;

    move-result-object v6

    .line 265
    iget-object v0, p1, Lkja;->g:Lkje;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lkja;->g:Lkje;

    iget-object v0, v0, Lkje;->c:[Lkjf;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lkja;->g:Lkje;

    iget-object v0, v0, Lkje;->c:[Lkjf;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 268
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v6, v0}, Lhlc;->a(Landroid/graphics/RectF;)Lhlc;

    .line 269
    invoke-virtual {v6, v1}, Lhlc;->a(Z)Lhlc;

    .line 286
    :goto_0
    iget-object v0, p0, Lhfu;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 287
    return-void

    .line 276
    :cond_1
    iget-object v0, p1, Lkja;->g:Lkje;

    iget-object v7, v0, Lkje;->c:[Lkjf;

    array-length v8, v7

    move v0, v1

    move v4, v3

    move v5, v3

    move v3, v2

    :goto_1
    if-ge v0, v8, :cond_2

    aget-object v9, v7, v0

    .line 277
    iget-object v10, v9, Lkjf;->a:Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-static {v10, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 278
    iget-object v10, v9, Lkjf;->b:Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-static {v10, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 279
    iget-object v10, v9, Lkjf;->c:Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-static {v10, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 280
    iget-object v9, v9, Lkjf;->d:Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-static {v9, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 282
    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v5, v4, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v6, v0}, Lhlc;->a(Landroid/graphics/RectF;)Lhlc;

    .line 283
    iget-object v0, p1, Lkja;->g:Lkje;

    iget-object v0, v0, Lkje;->a:Ljava/lang/Integer;

    .line 3043
    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 283
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v6, v0}, Lhlc;->a(Z)Lhlc;

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 221
    invoke-super {p0, p1}, Lhgn;->a(Z)V

    .line 222
    invoke-virtual {p0}, Lhfu;->i()V

    .line 223
    return-void
.end method

.method b(I)V
    .locals 2

    .prologue
    .line 165
    iget v0, p0, Lhfu;->f:I

    if-ne p1, v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lhfu;->j:Lhee;

    new-instance v1, Lhfy;

    invoke-direct {v1, p0, p1}, Lhfy;-><init>(Lhfu;I)V

    invoke-virtual {v0, v1}, Lhee;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method b(Z)V
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lhfu;->g:Z

    if-eq p1, v0, :cond_0

    .line 295
    iput-boolean p1, p0, Lhfu;->g:Z

    .line 296
    invoke-virtual {p0}, Lhfu;->i()V

    .line 298
    :cond_0
    return-void
.end method

.method b()Z
    .locals 10

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 206
    iget-object v0, p0, Lhfu;->e:Lcom/google/android/libraries/hangouts/video/internal/Renderer;

    instance-of v0, v0, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;

    .line 2134
    const-string v1, "Expected condition to be true"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 207
    iget-object v0, p0, Lhfu;->e:Lcom/google/android/libraries/hangouts/video/internal/Renderer;

    check-cast v0, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;

    .line 208
    iget v1, p0, Lhfu;->f:I

    if-nez v1, :cond_0

    .line 209
    const/4 v0, 0x0

    .line 216
    :goto_0
    return v0

    .line 212
    :cond_0
    iget-object v1, p0, Lhfu;->s:Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer$RendererFrameOutputData;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;->a(Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer$RendererFrameOutputData;)Z

    move-result v1

    .line 213
    if-eqz v1, :cond_3

    iget-object v0, p0, Lhfu;->s:Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer$RendererFrameOutputData;

    iget v0, v0, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer$RendererFrameOutputData;->frameWidth:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lhfu;->s:Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer$RendererFrameOutputData;

    iget v0, v0, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer$RendererFrameOutputData;->frameHeight:I

    if-lez v0, :cond_3

    .line 2182
    iget-object v0, p0, Lhfu;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhlc;

    .line 2183
    iget-object v2, p0, Lhfu;->s:Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer$RendererFrameOutputData;

    iget v2, v2, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer$RendererFrameOutputData;->frameWidth:I

    int-to-float v2, v2

    .line 2184
    iget-object v3, p0, Lhfu;->s:Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer$RendererFrameOutputData;

    iget v3, v3, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer$RendererFrameOutputData;->frameHeight:I

    int-to-float v3, v3

    .line 2185
    invoke-virtual {v0}, Lhlc;->b()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v4, v2

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lhlc;->c()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_3

    .line 2186
    :cond_1
    invoke-virtual {v0}, Lhlc;->a()Lhlc;

    move-result-object v0

    .line 2187
    iget-object v4, p0, Lhfu;->s:Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer$RendererFrameOutputData;

    iget v4, v4, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer$RendererFrameOutputData;->frameWidth:I

    iget-object v5, p0, Lhfu;->s:Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer$RendererFrameOutputData;

    iget v5, v5, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer$RendererFrameOutputData;->frameHeight:I

    invoke-virtual {v0, v4, v5}, Lhlc;->a(II)Lhlc;

    .line 2189
    iget-object v4, p0, Lhfu;->s:Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer$RendererFrameOutputData;

    iget v4, v4, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer$RendererFrameOutputData;->cropRight:I

    if-gtz v4, :cond_2

    iget-object v4, p0, Lhfu;->s:Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer$RendererFrameOutputData;

    iget v4, v4, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer$RendererFrameOutputData;->cropBottom:I

    if-lez v4, :cond_4

    .line 2190
    :cond_2
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lhfu;->s:Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer$RendererFrameOutputData;

    iget v5, v5, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer$RendererFrameOutputData;->cropLeft:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    iget-object v6, p0, Lhfu;->s:Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer$RendererFrameOutputData;

    iget v6, v6, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer$RendererFrameOutputData;->cropTop:I

    int-to-float v6, v6

    div-float/2addr v6, v3

    sub-float v7, v2, v9

    iget-object v8, p0, Lhfu;->s:Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer$RendererFrameOutputData;

    iget v8, v8, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer$RendererFrameOutputData;->cropRight:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    div-float v2, v7, v2

    sub-float v7, v3, v9

    iget-object v8, p0, Lhfu;->s:Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer$RendererFrameOutputData;

    iget v8, v8, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer$RendererFrameOutputData;->cropBottom:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    div-float v3, v7, v3

    invoke-direct {v4, v5, v6, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v4}, Lhlc;->b(Landroid/graphics/RectF;)Lhlc;

    .line 2200
    :goto_1
    iget-object v2, p0, Lhfu;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_3
    move v0, v1

    .line 216
    goto/16 :goto_0

    .line 2197
    :cond_4
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v2}, Lhlc;->b(Landroid/graphics/RectF;)Lhlc;

    goto :goto_1
.end method

.method c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 227
    const-string v1, "Remote:"

    iget-object v0, p0, Lhfu;->m:Lhfn;

    invoke-virtual {v0}, Lhfn;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 371
    iput p1, p0, Lhfu;->h:I

    .line 372
    invoke-virtual {p0}, Lhfu;->i()V

    .line 373
    return-void
.end method

.method d()I
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lhfu;->e:Lcom/google/android/libraries/hangouts/video/internal/Renderer;

    instance-of v0, v0, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lhfu;->e:Lcom/google/android/libraries/hangouts/video/internal/Renderer;

    check-cast v0, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;

    invoke-virtual {v0}, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;->c()I

    move-result v0

    .line 235
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method f()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lhfu;->e:Lcom/google/android/libraries/hangouts/video/internal/Renderer;

    instance-of v0, v0, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lhfu;->e:Lcom/google/android/libraries/hangouts/video/internal/Renderer;

    check-cast v0, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;

    invoke-virtual {v0}, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;->d()Z

    move-result v0

    .line 248
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lhfu;->e:Lcom/google/android/libraries/hangouts/video/internal/Renderer;

    instance-of v0, v0, Lhff;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lhfu;->e:Lcom/google/android/libraries/hangouts/video/internal/Renderer;

    check-cast v0, Lhff;

    invoke-virtual {v0}, Lhff;->a()V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lhfu;->j:Lhee;

    invoke-virtual {v0, p0}, Lhee;->a(Lhgn;)V

    goto :goto_0
.end method

.method h()I
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lhfu;->b:Lcom/google/android/libraries/hangouts/video/internal/MediaCodecDecoder;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lhfu;->b:Lcom/google/android/libraries/hangouts/video/internal/MediaCodecDecoder;

    invoke-virtual {v0}, Lcom/google/android/libraries/hangouts/video/internal/MediaCodecDecoder;->g()I

    move-result v0

    .line 304
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 308
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()V
    .locals 4

    .prologue
    .line 379
    iget-object v0, p0, Lhfu;->q:Lhfz;

    .line 4089
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 380
    iget-object v0, p0, Lhfu;->q:Lhfz;

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Laal;->a(Ljava/lang/Runnable;J)V

    .line 381
    return-void
.end method
