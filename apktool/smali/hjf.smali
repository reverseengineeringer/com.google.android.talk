.class final Lhjf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhje;


# direct methods
.method constructor <init>(Lhje;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lhjf;->a:Lhje;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 138
    iget-object v0, p0, Lhjf;->a:Lhje;

    iget-object v7, v0, Lhje;->s:Ljava/lang/Object;

    monitor-enter v7

    .line 139
    :try_start_0
    iget-object v0, p0, Lhjf;->a:Lhje;

    .line 1020
    iget-object v0, v0, Lhje;->e:Landroid/hardware/Camera;

    .line 139
    if-nez v0, :cond_0

    iget-object v0, p0, Lhjf;->a:Lhje;

    iget-object v0, v0, Lhje;->p:Lhld;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhjf;->a:Lhje;

    iget-object v0, v0, Lhje;->t:Lhlf;

    if-nez v0, :cond_1

    .line 140
    :cond_0
    monitor-exit v7

    .line 267
    :goto_0
    return-void

    .line 143
    :cond_1
    const-string v1, "Attempted to open camera without a camera selected"

    iget-object v0, p0, Lhjf;->a:Lhje;

    iget v0, v0, Lhje;->x:I

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lhbs;->b(Ljava/lang/String;Z)V

    .line 146
    iget-object v0, p0, Lhjf;->a:Lhje;

    iget v0, v0, Lhje;->x:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lhjf;->a:Lhje;

    .line 2020
    iget v0, v0, Lhje;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :goto_2
    :try_start_1
    iget-object v1, p0, Lhjf;->a:Lhje;

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    .line 4020
    iput-object v0, v1, Lhje;->e:Landroid/hardware/Camera;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :try_start_2
    iget-object v0, p0, Lhjf;->a:Lhje;

    .line 5020
    iget-object v0, v0, Lhje;->e:Landroid/hardware/Camera;

    .line 156
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    .line 158
    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v1

    .line 159
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 161
    iget-object v2, p0, Lhjf;->a:Lhje;

    iget-object v2, v2, Lhje;->t:Lhlf;

    iget v2, v2, Lhlf;->c:I

    mul-int/lit16 v2, v2, 0x3e8

    .line 162
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 163
    const-string v4, "vclib"

    const-string v5, "Camera FPS range: %d-%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v0, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v0, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v9

    .line 5077
    const/4 v9, 0x3

    invoke-static {v9, v4, v5, v6}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    const/4 v4, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    aget v5, v1, v5

    if-gt v4, v5, :cond_11

    const/4 v4, 0x1

    aget v4, v0, v4

    if-lt v4, v2, :cond_11

    const/4 v4, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    aget v5, v1, v5

    if-lt v4, v5, :cond_2

    const/4 v4, 0x0

    aget v4, v0, v4

    const/4 v5, 0x0

    aget v5, v1, v5

    if-gt v4, v5, :cond_11

    :cond_2
    :goto_4
    move-object v1, v0

    .line 171
    goto :goto_3

    .line 143
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 146
    :cond_4
    iget-object v0, p0, Lhjf;->a:Lhje;

    .line 3020
    iget v0, v0, Lhje;->b:I

    goto :goto_2

    .line 150
    :catch_0
    move-exception v0

    .line 151
    const-string v1, "vclib"

    const-string v2, "Error opening camera"

    invoke-static {v1, v2, v0}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    iget-object v0, p0, Lhjf;->a:Lhje;

    .line 4418
    iget-object v0, v0, Lhjk;->m:Lhjn;

    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    .line 153
    monitor-exit v7

    goto/16 :goto_0

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 172
    :cond_5
    :try_start_3
    const-string v0, "vclib"

    const-string v2, "Using camera FPS range: %d-%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    const/4 v0, 0x0

    aget v0, v1, v0

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v8, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 175
    iget-object v0, p0, Lhjf;->a:Lhje;

    iget-object v0, v0, Lhje;->v:Lhlp;

    new-instance v1, Lhlp;

    iget-object v2, p0, Lhjf;->a:Lhje;

    iget-object v2, v2, Lhje;->t:Lhlf;

    iget v2, v2, Lhlf;->d:I

    iget-object v3, p0, Lhjf;->a:Lhje;

    iget-object v3, v3, Lhje;->t:Lhlf;

    iget v3, v3, Lhlf;->e:I

    invoke-direct {v1, v2, v3}, Lhlp;-><init>(II)V

    invoke-static {v0, v1}, Lhlp;->b(Lhlp;Lhlp;)Lhlp;

    move-result-object v5

    .line 178
    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 179
    const/4 v3, 0x0

    .line 180
    const v2, 0x7fffffff

    .line 181
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 182
    const-string v1, "vclib"

    const-string v4, "Camera preview candidate: %d x %d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget v11, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 6077
    const/4 v10, 0x3

    invoke-static {v10, v1, v4, v9}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v4, v5, Lhlp;->a:I

    sub-int v4, v1, v4

    .line 184
    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    iget v9, v5, Lhlp;->b:I

    sub-int/2addr v1, v9

    .line 186
    if-gez v4, :cond_6

    .line 187
    mul-int/lit8 v4, v4, -0x4

    .line 189
    :cond_6
    if-gez v1, :cond_7

    .line 190
    mul-int/lit8 v1, v1, -0x4

    .line 193
    :cond_7
    add-int/2addr v1, v4

    .line 194
    if-ge v1, v2, :cond_10

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_6
    move v2, v0

    move-object v3, v1

    .line 199
    goto :goto_5

    .line 201
    :cond_8
    iget v0, v3, Landroid/hardware/Camera$Size;->width:I

    iget v1, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v8, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 205
    iget v0, v3, Landroid/hardware/Camera$Size;->width:I

    int-to-float v0, v0

    iget v1, v3, Landroid/hardware/Camera$Size;->height:I

    int-to-float v1, v1

    div-float v9, v0, v1

    .line 206
    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    .line 207
    const/4 v6, 0x0

    .line 208
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 209
    const v1, 0x7fffffff

    .line 210
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_9
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 211
    const-string v2, "vclib"

    const-string v5, "Camera picture candidate: %d x %d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget v13, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    .line 7077
    const/4 v12, 0x3

    invoke-static {v12, v2, v5, v11}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    if-lt v2, v5, :cond_9

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    if-lt v2, v5, :cond_9

    .line 216
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    if-ne v2, v5, :cond_a

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    if-ne v2, v5, :cond_a

    .line 239
    :goto_8
    if-nez v0, :cond_c

    .line 240
    const-string v0, "vclib"

    const-string v1, "No picture size appropriate for current preview size."

    .line 7089
    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 247
    :goto_9
    iget-object v0, p0, Lhjf;->a:Lhje;

    .line 8020
    iget-object v0, v0, Lhje;->e:Landroid/hardware/Camera;

    .line 247
    invoke-virtual {v0, v8}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 248
    iget-object v0, p0, Lhjf;->a:Lhje;

    new-instance v1, Lhlp;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    .line 249
    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v2, v3}, Lhlp;-><init>(II)V

    .line 9020
    iput-object v1, v0, Lhje;->f:Lhlp;

    .line 251
    const-string v0, "vclib"

    const-string v1, "Camera preview size: %s "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lhjf;->a:Lhje;

    .line 10020
    iget-object v4, v4, Lhje;->f:Lhlp;

    .line 251
    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 256
    :try_start_4
    iget-object v0, p0, Lhjf;->a:Lhje;

    iget-object v0, v0, Lhje;->w:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lhjf;->a:Lhje;

    .line 11020
    iget-object v1, v1, Lhje;->f:Lhlp;

    .line 257
    iget v1, v1, Lhlp;->a:I

    iget-object v2, p0, Lhjf;->a:Lhje;

    .line 12020
    iget-object v2, v2, Lhje;->f:Lhlp;

    .line 257
    iget v2, v2, Lhlp;->b:I

    .line 256
    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 258
    iget-object v0, p0, Lhjf;->a:Lhje;

    .line 13020
    iget-object v0, v0, Lhje;->e:Landroid/hardware/Camera;

    .line 258
    iget-object v1, p0, Lhjf;->a:Lhje;

    iget-object v1, v1, Lhje;->w:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 263
    :goto_a
    :try_start_5
    iget-object v0, p0, Lhjf;->a:Lhje;

    .line 14020
    iget-object v0, v0, Lhje;->e:Landroid/hardware/Camera;

    .line 263
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 264
    iget-object v0, p0, Lhjf;->a:Lhje;

    iget v0, v0, Lhje;->x:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 265
    iget-object v0, p0, Lhjf;->a:Lhje;

    .line 15020
    iget v0, v0, Lhje;->c:I

    .line 266
    :goto_b
    iget-object v1, p0, Lhjf;->a:Lhje;

    invoke-virtual {v1, v0, v0}, Lhje;->a(II)V

    .line 267
    monitor-exit v7

    goto/16 :goto_0

    .line 222
    :cond_a
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v2, v2

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    .line 224
    sub-float/2addr v2, v9

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 226
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v11, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v11

    .line 230
    cmpg-float v11, v5, v4

    if-ltz v11, :cond_b

    cmpl-float v11, v5, v4

    if-nez v11, :cond_e

    if-ge v2, v1, :cond_e

    :cond_b
    move v1, v5

    move v14, v2

    move-object v2, v0

    move v0, v14

    :goto_c
    move v4, v1

    move-object v6, v2

    move v1, v0

    .line 237
    goto/16 :goto_7

    .line 242
    :cond_c
    const-string v1, "vclib"

    const-string v2, "Camera picture size: %d x %d "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    .line 243
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 242
    invoke-static {v1, v2, v3}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v8, v1, v0}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    goto/16 :goto_9

    .line 259
    :catch_1
    move-exception v0

    .line 261
    const-string v1, "vclib"

    const-string v2, "Failure setting surface texture"

    invoke-static {v1, v2, v0}, Lhlk;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 265
    :cond_d
    iget-object v0, p0, Lhjf;->a:Lhje;

    .line 16020
    iget v0, v0, Lhje;->d:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_b

    :cond_e
    move v0, v1

    move-object v2, v6

    move v1, v4

    goto :goto_c

    :cond_f
    move-object v0, v6

    goto/16 :goto_8

    :cond_10
    move v0, v2

    move-object v1, v3

    goto/16 :goto_6

    :cond_11
    move-object v0, v1

    goto/16 :goto_4
.end method
