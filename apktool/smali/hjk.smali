.class public abstract Lhjk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhlb;


# instance fields
.field private final a:Lhjo;

.field private final b:Lhjm;

.field private c:I

.field private d:I

.field private e:Z

.field public final k:Landroid/content/Context;

.field public l:Lhjp;

.field final m:Lhjn;

.field public n:Landroid/os/HandlerThread;

.field public o:Landroid/os/Handler;

.field public p:Lhld;

.field public q:Lhjl;

.field public r:Z

.field public final s:Ljava/lang/Object;

.field public t:Lhlf;

.field public u:Lhlp;

.field public v:Lhlp;

.field public w:Landroid/graphics/SurfaceTexture;

.field public x:I

.field y:I

.field z:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lhjk;->s:Ljava/lang/Object;

    .line 79
    new-instance v0, Lhlp;

    invoke-direct {v0, v3, v3}, Lhlp;-><init>(II)V

    iput-object v0, p0, Lhjk;->u:Lhlp;

    .line 82
    new-instance v0, Lhlp;

    const/16 v1, 0x10

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lhlp;-><init>(II)V

    iput-object v0, p0, Lhjk;->v:Lhlp;

    .line 84
    iput v3, p0, Lhjk;->x:I

    .line 86
    iput v3, p0, Lhjk;->c:I

    .line 88
    iput v3, p0, Lhjk;->d:I

    .line 90
    iput v3, p0, Lhjk;->y:I

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhjk;->z:Z

    .line 132
    iput-object p1, p0, Lhjk;->k:Landroid/content/Context;

    .line 133
    new-instance v0, Lhjn;

    invoke-direct {v0, p0}, Lhjn;-><init>(Lhjk;)V

    iput-object v0, p0, Lhjk;->m:Lhjn;

    .line 134
    new-instance v0, Lhjo;

    invoke-direct {v0, p0}, Lhjo;-><init>(Lhjk;)V

    iput-object v0, p0, Lhjk;->a:Lhjo;

    .line 135
    new-instance v0, Lhjm;

    invoke-direct {v0, p0}, Lhjm;-><init>(Lhjk;)V

    iput-object v0, p0, Lhjk;->b:Lhjm;

    .line 136
    invoke-virtual {p0}, Lhjk;->n()I

    move-result v0

    iput v0, p0, Lhjk;->y:I

    .line 137
    return-void
.end method

.method private f()Z
    .locals 6

    .prologue
    const/16 v5, 0x10e

    const/16 v4, 0x5a

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 395
    iget-object v2, p0, Lhjk;->s:Ljava/lang/Object;

    monitor-enter v2

    .line 396
    :try_start_0
    iget v3, p0, Lhjk;->d:I

    if-eq v3, v4, :cond_0

    iget v3, p0, Lhjk;->d:I

    if-ne v3, v5, :cond_3

    .line 399
    :cond_0
    iget v3, p0, Lhjk;->y:I

    if-eqz v3, :cond_1

    iget v3, p0, Lhjk;->y:I

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    monitor-exit v2

    .line 403
    :goto_0
    return v0

    :cond_3
    iget v3, p0, Lhjk;->y:I

    if-eq v3, v4, :cond_4

    iget v3, p0, Lhjk;->y:I

    if-ne v3, v5, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    monitor-exit v2

    goto :goto_0

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    .line 214
    invoke-static {}, Laal;->w()V

    .line 216
    iget-object v1, p0, Lhjk;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 217
    :try_start_0
    iget v0, p0, Lhjk;->x:I

    if-ne p1, v0, :cond_1

    .line 218
    monitor-exit v1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lhjk;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 222
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Tried to use front camera, but no front camera detected"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 225
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    :try_start_1
    invoke-virtual {p0}, Lhjk;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 226
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Tried to use rear camera, but no rear camera detected"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_3
    iput p1, p0, Lhjk;->x:I

    .line 230
    invoke-virtual {p0}, Lhjk;->m()V

    .line 232
    iget v0, p0, Lhjk;->x:I

    if-nez v0, :cond_4

    .line 233
    monitor-exit v1

    goto :goto_0

    .line 235
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    iget-boolean v0, p0, Lhjk;->r:Z

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lhjk;->d()V

    goto :goto_0
.end method

.method protected final a(II)V
    .locals 2

    .prologue
    .line 451
    iget-object v1, p0, Lhjk;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 452
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lhjk;->e:Z

    .line 453
    iput p1, p0, Lhjk;->d:I

    .line 454
    iput p2, p0, Lhjk;->c:I

    .line 455
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    iget-object v0, p0, Lhjk;->a:Lhjo;

    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    .line 457
    return-void

    .line 455
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lhjl;)V
    .locals 2

    .prologue
    .line 279
    invoke-static {}, Laal;->w()V

    .line 280
    iput-object p1, p0, Lhjk;->q:Lhjl;

    .line 281
    if-eqz p1, :cond_1

    .line 282
    iget-object v1, p0, Lhjk;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 283
    :try_start_0
    iget-object v0, p0, Lhjk;->u:Lhlp;

    iget v0, v0, Lhlp;->a:I

    if-lez v0, :cond_0

    .line 284
    invoke-interface {p1}, Lhjl;->p()V

    .line 286
    :cond_0
    monitor-exit v1

    .line 288
    :cond_1
    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lhks;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 156
    invoke-static {}, Laal;->w()V

    .line 157
    iget-object v1, p0, Lhjk;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lhjk;->p:Lhld;

    .line 159
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-object v0, p0, Lhjk;->b:Lhjm;

    invoke-virtual {v0}, Lhjm;->disable()V

    .line 161
    invoke-virtual {p0}, Lhjk;->m()V

    .line 162
    iget-object v0, p0, Lhjk;->n:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lhjk;->n:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 164
    iput-object v2, p0, Lhjk;->n:Landroid/os/HandlerThread;

    .line 165
    iput-object v2, p0, Lhjk;->o:Landroid/os/Handler;

    .line 167
    :cond_0
    return-void

    .line 159
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lhks;Lhld;)V
    .locals 2

    .prologue
    .line 142
    invoke-static {}, Laal;->w()V

    .line 143
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraOpenThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lhjk;->n:Landroid/os/HandlerThread;

    .line 144
    iget-object v0, p0, Lhjk;->n:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 145
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lhjk;->n:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lhjk;->o:Landroid/os/Handler;

    .line 146
    iget-object v0, p0, Lhjk;->b:Lhjm;

    invoke-virtual {v0}, Lhjm;->enable()V

    .line 147
    iget-object v1, p0, Lhjk;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 148
    :try_start_0
    invoke-interface {p2}, Lhld;->k()Lhlf;

    move-result-object v0

    iput-object v0, p0, Lhjk;->t:Lhlf;

    .line 149
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    iput-object p2, p0, Lhjk;->p:Lhld;

    .line 151
    return-void

    .line 149
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 172
    invoke-static {}, Laal;->w()V

    .line 173
    iput-boolean p1, p0, Lhjk;->r:Z

    .line 174
    iget-object v3, p0, Lhjk;->s:Ljava/lang/Object;

    monitor-enter v3

    .line 175
    :try_start_0
    iget v2, p0, Lhjk;->x:I

    if-nez v2, :cond_0

    .line 178
    invoke-virtual {p0}, Lhjk;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    iput v2, p0, Lhjk;->x:I

    .line 182
    :cond_0
    iget v2, p0, Lhjk;->x:I

    if-nez v2, :cond_3

    .line 183
    const-string v0, "vclib"

    const-string v1, "No camera supported on this device, can not enable"

    .line 1101
    const/4 v2, 0x6

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 184
    monitor-exit v3

    .line 200
    :goto_1
    return-void

    .line 178
    :cond_1
    invoke-virtual {p0}, Lhjk;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_0

    .line 187
    :cond_3
    iget-object v2, p0, Lhjk;->p:Lhld;

    if-nez v2, :cond_4

    .line 189
    monitor-exit v3

    goto :goto_1

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    iget-object v2, p0, Lhjk;->p:Lhld;

    if-nez p1, :cond_5

    :goto_2
    invoke-interface {v2, v0}, Lhld;->b(Z)V

    .line 195
    if-eqz p1, :cond_6

    .line 196
    invoke-virtual {p0}, Lhjk;->d()V

    goto :goto_1

    :cond_5
    move v0, v1

    .line 193
    goto :goto_2

    .line 198
    :cond_6
    invoke-virtual {p0}, Lhjk;->m()V

    goto :goto_1
.end method

.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method protected abstract c()Lhlp;
.end method

.method protected abstract d()V
.end method

.method protected abstract e()V
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lhjk;->r:Z

    return v0
.end method

.method public h()I
    .locals 2

    .prologue
    .line 249
    iget-object v1, p0, Lhjk;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    :try_start_0
    iget v0, p0, Lhjk;->x:I

    monitor-exit v1

    return v0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public i()I
    .locals 2

    .prologue
    .line 258
    iget-object v1, p0, Lhjk;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    :try_start_0
    iget-object v0, p0, Lhjk;->u:Lhlp;

    iget v0, v0, Lhlp;->a:I

    monitor-exit v1

    return v0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public j()I
    .locals 2

    .prologue
    .line 267
    iget-object v1, p0, Lhjk;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 268
    :try_start_0
    iget-object v0, p0, Lhjk;->u:Lhlp;

    iget v0, v0, Lhlp;->b:I

    monitor-exit v1

    return v0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public k()V
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhjk;->z:Z

    .line 333
    return-void
.end method

.method l()V
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x3

    .line 340
    invoke-static {}, Laal;->w()V

    .line 344
    iget-object v3, p0, Lhjk;->s:Ljava/lang/Object;

    monitor-enter v3

    .line 345
    :try_start_0
    iget-boolean v1, p0, Lhjk;->e:Z

    if-nez v1, :cond_0

    .line 346
    monitor-exit v3

    .line 388
    :goto_0
    return-void

    .line 349
    :cond_0
    iget v1, p0, Lhjk;->x:I

    if-ne v1, v0, :cond_3

    move v2, v0

    .line 350
    :goto_1
    if-eqz v2, :cond_4

    .line 351
    iget v0, p0, Lhjk;->c:I

    iget v1, p0, Lhjk;->y:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    .line 352
    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    move v1, v0

    .line 357
    :goto_2
    const-string v0, "vclib"

    iget-object v4, p0, Lhjk;->t:Lhlf;

    iget v4, v4, Lhlf;->a:I

    iget-object v5, p0, Lhjk;->t:Lhlf;

    iget v5, v5, Lhlf;->b:I

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x24

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Encoder caps="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2073
    const/4 v5, 0x3

    invoke-static {v5, v0, v4}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 358
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    invoke-virtual {p0}, Lhjk;->c()Lhlp;

    move-result-object v0

    iput-object v0, p0, Lhjk;->u:Lhlp;

    .line 363
    invoke-virtual {p0}, Lhjk;->c()Lhlp;

    move-result-object v0

    .line 364
    invoke-direct {p0}, Lhjk;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 366
    new-instance v3, Lhlp;

    iget-object v4, p0, Lhjk;->u:Lhlp;

    iget v4, v4, Lhlp;->b:I

    iget-object v5, p0, Lhjk;->u:Lhlp;

    iget v5, v5, Lhlp;->a:I

    invoke-direct {v3, v4, v5}, Lhlp;-><init>(II)V

    iput-object v3, p0, Lhjk;->u:Lhlp;

    .line 369
    instance-of v3, p0, Lhje;

    if-eqz v3, :cond_1

    .line 370
    iget-object v0, p0, Lhjk;->u:Lhlp;

    .line 374
    :cond_1
    iget-object v3, p0, Lhjk;->q:Lhjl;

    if-eqz v3, :cond_2

    .line 375
    iget-object v3, p0, Lhjk;->q:Lhjl;

    invoke-interface {v3}, Lhjl;->p()V

    .line 378
    :cond_2
    const-string v3, "vclib"

    iget-object v4, p0, Lhjk;->u:Lhlp;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1f

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "CaptureDimensions preview size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3073
    invoke-static {v8, v3, v4}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 380
    new-instance v3, Lhlc;

    invoke-direct {v3}, Lhlc;-><init>()V

    iget-object v4, p0, Lhjk;->u:Lhlp;

    iget v4, v4, Lhlp;->a:I

    iget-object v5, p0, Lhjk;->u:Lhlp;

    iget v5, v5, Lhlp;->b:I

    iget v6, v0, Lhlp;->a:I

    iget v0, v0, Lhlp;->b:I

    .line 381
    invoke-virtual {v3, v4, v5, v6, v0}, Lhlc;->a(IIII)Lhlc;

    move-result-object v0

    .line 382
    invoke-virtual {v0, v1}, Lhlc;->a(I)Lhlc;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lhjk;->p:Lhld;

    invoke-interface {v1, v0}, Lhld;->a(Lhlc;)V

    .line 386
    const-string v0, "vclib"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "CaptureDimensions mirrored="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4073
    invoke-static {v8, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lhjk;->p:Lhld;

    invoke-interface {v0, v2}, Lhld;->c(Z)V

    goto/16 :goto_0

    .line 349
    :cond_3
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_1

    .line 354
    :cond_4
    :try_start_1
    iget v0, p0, Lhjk;->c:I

    iget v1, p0, Lhjk;->y:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    move v1, v0

    goto/16 :goto_2

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final m()V
    .locals 2

    .prologue
    .line 433
    iget-object v1, p0, Lhjk;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 434
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lhjk;->e:Z

    .line 435
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    invoke-virtual {p0}, Lhjk;->e()V

    .line 437
    return-void

    .line 435
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final n()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 466
    iget-object v0, p0, Lhjk;->k:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 467
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 477
    const-string v0, "vclib"

    const-string v2, "Bad rotation"

    invoke-static {v0, v2}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 478
    :goto_0
    return v0

    :pswitch_0
    move v0, v1

    .line 469
    goto :goto_0

    .line 471
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 473
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 475
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 467
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
