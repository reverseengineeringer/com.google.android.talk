.class public final Lhkl;
.super Lhko;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field a:Lhkn;

.field b:Z

.field c:Z

.field d:Lhlc;

.field private final k:Landroid/view/TextureView;

.field private final l:Z

.field private final m:Z

.field private final n:Ljava/lang/Object;

.field private o:I

.field private p:I

.field private q:I

.field private r:Landroid/graphics/SurfaceTexture;

.field private s:Z

.field private final t:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lhks;Landroid/view/TextureView;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 103
    invoke-direct {p0, p1}, Lhko;-><init>(Lhks;)V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lhkl;->n:Ljava/lang/Object;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lhkl;->o:I

    .line 71
    new-instance v0, Lhkm;

    invoke-direct {v0, p0}, Lhkm;-><init>(Lhkl;)V

    iput-object v0, p0, Lhkl;->t:Ljava/lang/Runnable;

    .line 104
    iput-object p2, p0, Lhkl;->k:Landroid/view/TextureView;

    .line 105
    iput-boolean v1, p0, Lhkl;->l:Z

    .line 106
    iput-boolean v1, p0, Lhkl;->m:Z

    .line 107
    invoke-virtual {p2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p2}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lhkl;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 111
    :cond_0
    invoke-virtual {p2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 112
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 128
    iget-object v1, p0, Lhkl;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v0, p0, Lhkl;->r:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhkl;->r:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lhkl;->k:Landroid/view/TextureView;

    .line 130
    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 131
    iget-object v0, p0, Lhkl;->k:Landroid/view/TextureView;

    iget-object v2, p0, Lhkl;->r:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lhkl;->k:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->requestLayout()V

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lhkl;->p:I

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lhkl;->q:I

    .line 136
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 143
    iput p1, p0, Lhkl;->o:I

    .line 144
    iget-object v0, p0, Lhkl;->f:Lhlh;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lhkl;->f:Lhlh;

    invoke-virtual {v0, p1}, Lhlh;->a(I)V

    .line 147
    :cond_0
    return-void
.end method

.method public a(Lhkn;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lhkl;->a:Lhkn;

    .line 122
    return-void
.end method

.method protected a(Z)V
    .locals 4

    .prologue
    .line 172
    iput-boolean p1, p0, Lhkl;->s:Z

    .line 178
    iget-object v0, p0, Lhkl;->a:Lhkn;

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "vclib"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "TextureViewVideoRenderer.onCurrentParticipantChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1073
    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lhkl;->t:Ljava/lang/Runnable;

    .line 1089
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 181
    if-eqz p1, :cond_1

    .line 183
    iget-object v0, p0, Lhkl;->t:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lhkl;->t:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Laal;->a(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 151
    iget-object v1, p0, Lhkl;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_0
    iget-object v0, p0, Lhkl;->f:Lhlh;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lhkl;->f:Lhlh;

    invoke-virtual {v0}, Lhlh;->a()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lhkl;->f:Lhlh;

    .line 156
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lhkl;->r:Landroid/graphics/SurfaceTexture;

    .line 157
    iget-object v0, p0, Lhkl;->k:Landroid/view/TextureView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lhkl;->a:Lhkn;

    .line 159
    invoke-super {p0}, Lhko;->b()V

    .line 160
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected b(Z)V
    .locals 3

    .prologue
    .line 192
    iput-boolean p1, p0, Lhkl;->s:Z

    .line 193
    if-eqz p1, :cond_0

    iget-object v0, p0, Lhkl;->a:Lhkn;

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "vclib"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "TextureViewVideoRenderer.onMuteStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2073
    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lhkl;->t:Ljava/lang/Runnable;

    .line 2089
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 197
    iget-object v0, p0, Lhkl;->t:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 199
    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 336
    const-string v0, "vclib"

    const-string v1, "TextureViewVideoRenderer.onSurfaceTextureAvailable %dx%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 337
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 3077
    invoke-static {v5, v0, v1, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    iget-object v1, p0, Lhkl;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 339
    :try_start_0
    iget-object v0, p0, Lhkl;->r:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lhkl;->m:Z

    if-nez v0, :cond_2

    .line 340
    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_3

    .line 341
    :cond_1
    const-string v0, "vclib"

    const-string v2, "Ignoring surface because it has an area of zero."

    .line 4073
    const/4 v3, 0x3

    invoke-static {v3, v0, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_2
    :goto_0
    monitor-exit v1

    return-void

    .line 343
    :cond_3
    iput-object p1, p0, Lhkl;->r:Landroid/graphics/SurfaceTexture;

    .line 344
    iput p2, p0, Lhkl;->p:I

    .line 345
    iput p3, p0, Lhkl;->q:I

    .line 346
    iget-object v0, p0, Lhkl;->e:Lhks;

    iget-object v2, p0, Lhkl;->r:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v2}, Lhks;->a(Landroid/graphics/SurfaceTexture;)Lhlh;

    move-result-object v0

    iput-object v0, p0, Lhkl;->f:Lhlh;

    .line 347
    iget-object v0, p0, Lhkl;->f:Lhlh;

    if-eqz v0, :cond_4

    .line 348
    iget-object v0, p0, Lhkl;->f:Lhlh;

    iget-object v2, p0, Lhkl;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lhlh;->a(Ljava/lang/String;)V

    .line 350
    :cond_4
    iget-object v0, p0, Lhkl;->f:Lhlh;

    iget v2, p0, Lhkl;->o:I

    invoke-virtual {v0, v2}, Lhlh;->a(I)V

    goto :goto_0

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .prologue
    .line 358
    const-string v0, "vclib"

    const-string v1, "TextureViewVideoRenderer.onSurfaceTextureDestroyed"

    .line 5073
    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lhkl;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 360
    :try_start_0
    iget-boolean v0, p0, Lhkl;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhkl;->r:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 361
    const/4 v0, 0x0

    monitor-exit v1

    .line 363
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 5

    .prologue
    .line 369
    const-string v0, "vclib"

    const-string v1, "TextureViewVideoRenderer.onSurfaceTextureSizeChanged %dx%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 370
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 5077
    const/4 v3, 0x3

    invoke-static {v3, v0, v1, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 18

    .prologue
    .line 376
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lhkl;->s:Z

    if-eqz v2, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 5296
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lhkl;->n:Ljava/lang/Object;

    monitor-enter v5

    .line 5297
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lhkl;->k:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getWidth()I

    move-result v6

    .line 5298
    move-object/from16 v0, p0

    iget-object v2, v0, Lhkl;->k:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getHeight()I

    move-result v7

    .line 5299
    move-object/from16 v0, p0

    iget-object v2, v0, Lhkl;->f:Lhlh;

    if-nez v2, :cond_6

    .line 5300
    const/4 v2, 0x0

    move-object v3, v2

    .line 5302
    :goto_1
    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lhkl;->r:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_2

    .line 5303
    invoke-virtual {v3}, Lhlc;->b()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lhlc;->c()I

    move-result v2

    if-nez v2, :cond_7

    .line 5304
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lhkl;->a:Lhkn;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lhkl;->c:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lhkl;->m:Z

    if-eqz v2, :cond_5

    .line 381
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lhkl;->t:Ljava/lang/Runnable;

    .line 7089
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 385
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lhkl;->b:Z

    if-nez v2, :cond_4

    .line 386
    invoke-static {}, Lhbs;->a()V

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lhkl;->a:Lhkn;

    invoke-interface {v2}, Lhkn;->m()V

    .line 388
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lhkl;->b:Z

    .line 390
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lhkl;->d:Lhlc;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lhkl;->d:Lhlc;

    invoke-virtual {v2}, Lhlc;->i()Z

    move-result v2

    if-nez v2, :cond_5

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lhkl;->t:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    invoke-static {v2, v4, v5}, Laal;->a(Ljava/lang/Runnable;J)V

    .line 394
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lhkl;->c:Z

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lhkl;->f:Lhlh;

    if-eqz v2, :cond_0

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lhkl;->f:Lhlh;

    invoke-virtual {v2}, Lhlh;->c()V

    goto/16 :goto_0

    .line 5300
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lhkl;->f:Lhlh;

    invoke-virtual {v2}, Lhlh;->b()Lhlc;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_1

    .line 5310
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lhkl;->p:I

    if-ne v6, v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lhkl;->q:I

    if-eq v7, v2, :cond_b

    .line 5311
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lhkl;->r:Landroid/graphics/SurfaceTexture;

    .line 5312
    invoke-virtual {v3}, Lhlc;->d()I

    move-result v4

    invoke-virtual {v3}, Lhlc;->e()I

    move-result v8

    .line 5311
    invoke-virtual {v2, v4, v8}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 5313
    const/4 v2, 0x1

    .line 5318
    :goto_3
    if-eqz v2, :cond_a

    .line 5320
    invoke-virtual {v3}, Lhlc;->a()Lhlc;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lhkl;->d:Lhlc;

    .line 5321
    move-object/from16 v0, p0

    iget-object v8, v0, Lhkl;->d:Lhlc;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lhkl;->l:Z

    .line 6204
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lhlc;->b()I

    move-result v2

    if-eqz v2, :cond_9

    .line 6205
    invoke-virtual {v8}, Lhlc;->c()I

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v6, :cond_9

    if-nez v7, :cond_d

    .line 6206
    :cond_9
    const/4 v2, 0x0

    .line 5322
    :goto_4
    if-eqz v2, :cond_a

    .line 5323
    const-string v3, "vclib"

    const-string v4, "Applying output format %s to view size %dx%d, matrix=%s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lhkl;->d:Lhlc;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 5324
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v2, v8, v9

    .line 7077
    const/4 v9, 0x3

    invoke-static {v9, v3, v4, v8}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5325
    move-object/from16 v0, p0

    iget-object v3, v0, Lhkl;->k:Landroid/view/TextureView;

    invoke-virtual {v3, v2}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 5329
    :cond_a
    move-object/from16 v0, p0

    iput v6, v0, Lhkl;->p:I

    .line 5330
    move-object/from16 v0, p0

    iput v7, v0, Lhkl;->q:I

    .line 5331
    monitor-exit v5

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 5315
    :cond_b
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lhkl;->d:Lhlc;

    invoke-virtual {v3, v2}, Lhlc;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    goto :goto_3

    :cond_c
    const/4 v2, 0x0

    goto :goto_3

    .line 6209
    :cond_d
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 6210
    invoke-virtual {v8}, Lhlc;->h()I

    move-result v10

    .line 6214
    const/16 v2, 0x5a

    if-eq v10, v2, :cond_e

    const/16 v2, 0x10e

    if-ne v10, v2, :cond_11

    .line 6215
    :cond_e
    invoke-virtual {v8}, Lhlc;->c()I

    move-result v4

    .line 6216
    invoke-virtual {v8}, Lhlc;->b()I

    move-result v2

    .line 6221
    :goto_5
    invoke-virtual {v8}, Lhlc;->g()Landroid/graphics/RectF;

    move-result-object v11

    .line 6223
    const/high16 v12, 0x3f800000    # 1.0f

    iget v13, v11, Landroid/graphics/RectF;->left:F

    sub-float/2addr v12, v13

    iget v13, v11, Landroid/graphics/RectF;->right:F

    sub-float/2addr v12, v13

    .line 6224
    const/high16 v13, 0x3f800000    # 1.0f

    iget v14, v11, Landroid/graphics/RectF;->top:F

    sub-float/2addr v13, v14

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    sub-float v11, v13, v11

    .line 6225
    int-to-float v4, v4

    mul-float/2addr v4, v12

    float-to-int v12, v4

    .line 6226
    int-to-float v2, v2

    mul-float/2addr v2, v11

    float-to-int v2, v2

    .line 6228
    new-instance v11, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v13, 0x0

    int-to-float v14, v12

    int-to-float v15, v2

    invoke-direct {v11, v4, v13, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 6229
    new-instance v13, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v14, 0x0

    int-to-float v15, v6

    int-to-float v0, v7

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v13, v4, v14, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 6231
    int-to-float v4, v6

    int-to-float v14, v12

    div-float/2addr v4, v14

    int-to-float v14, v7

    int-to-float v15, v2

    div-float/2addr v14, v15

    invoke-static {v4, v14}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 6233
    if-eqz v9, :cond_13

    .line 6234
    invoke-virtual {v8}, Lhlc;->f()Landroid/graphics/RectF;

    move-result-object v8

    .line 6235
    int-to-float v9, v12

    int-to-float v14, v2

    div-float/2addr v9, v14

    .line 6236
    int-to-float v14, v6

    int-to-float v15, v7

    div-float/2addr v14, v15

    .line 6238
    int-to-float v15, v6

    int-to-float v0, v12

    move/from16 v16, v0

    div-float v15, v15, v16

    int-to-float v0, v7

    move/from16 v16, v0

    int-to-float v0, v2

    move/from16 v17, v0

    div-float v16, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 6241
    cmpl-float v9, v14, v9

    if-lez v9, :cond_12

    .line 6245
    int-to-float v2, v2

    mul-float/2addr v2, v15

    .line 6246
    int-to-float v9, v7

    sub-float v9, v2, v9

    div-float v2, v9, v2

    .line 6254
    iget v9, v8, Landroid/graphics/RectF;->bottom:F

    const/4 v12, 0x0

    cmpl-float v9, v9, v12

    if-lez v9, :cond_f

    .line 6255
    const/high16 v9, 0x40000000    # 2.0f

    iget v12, v8, Landroid/graphics/RectF;->top:F

    const/high16 v14, 0x3f800000    # 1.0f

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    sub-float v8, v14, v8

    .line 6256
    invoke-static {v12, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    mul-float/2addr v8, v9

    .line 6255
    invoke-static {v2, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 6276
    :cond_f
    :goto_6
    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-static {v9, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float v2, v8, v2

    div-float v2, v4, v2

    .line 6279
    :goto_7
    invoke-virtual {v13}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    .line 6280
    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    .line 6282
    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    sub-float v9, v4, v9

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    sub-float v12, v8, v12

    invoke-virtual {v11, v9, v12}, Landroid/graphics/RectF;->offset(FF)V

    .line 6284
    sget-object v9, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v13, v11, v9}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 6286
    invoke-virtual {v3, v2, v2, v4, v8}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 6287
    if-eqz v10, :cond_10

    .line 6289
    int-to-float v2, v10

    invoke-virtual {v3, v2, v4, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :cond_10
    move-object v2, v3

    .line 6292
    goto/16 :goto_4

    .line 6218
    :cond_11
    invoke-virtual {v8}, Lhlc;->b()I

    move-result v4

    .line 6219
    invoke-virtual {v8}, Lhlc;->c()I

    move-result v2

    goto/16 :goto_5

    .line 6262
    :cond_12
    int-to-float v2, v12

    mul-float/2addr v2, v15

    .line 6263
    int-to-float v9, v6

    sub-float v9, v2, v9

    div-float v2, v9, v2

    .line 6271
    iget v9, v8, Landroid/graphics/RectF;->right:F

    const/4 v12, 0x0

    cmpl-float v9, v9, v12

    if-lez v9, :cond_f

    .line 6272
    const/high16 v9, 0x40000000    # 2.0f

    iget v12, v8, Landroid/graphics/RectF;->left:F

    const/high16 v14, 0x3f800000    # 1.0f

    iget v8, v8, Landroid/graphics/RectF;->right:F

    sub-float v8, v14, v8

    .line 6273
    invoke-static {v12, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    mul-float/2addr v8, v9

    .line 6272
    invoke-static {v2, v8}, Ljava/lang/Math;->min(FF)F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    goto :goto_6

    :cond_13
    move v2, v4

    goto :goto_7
.end method
