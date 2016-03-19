.class public final Lacy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/android/ex/photo/views/PhotoView;

.field private b:F

.field private c:F

.field private d:J

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/android/ex/photo/views/PhotoView;)V
    .locals 2

    .prologue
    .line 1338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1339
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lacy;->d:J

    .line 1340
    iput-object p1, p0, Lacy;->a:Lcom/android/ex/photo/views/PhotoView;

    .line 1341
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lacy;->e:Z

    .line 1364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lacy;->f:Z

    .line 1365
    return-void
.end method

.method public a(FF)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1347
    iget-boolean v2, p0, Lacy;->e:Z

    if-eqz v2, :cond_0

    .line 1356
    :goto_0
    return v0

    .line 1350
    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lacy;->d:J

    .line 1351
    iput p1, p0, Lacy;->b:F

    .line 1352
    iput p2, p0, Lacy;->c:F

    .line 1353
    iput-boolean v0, p0, Lacy;->f:Z

    .line 1354
    iput-boolean v1, p0, Lacy;->e:Z

    .line 1355
    iget-object v0, p0, Lacy;->a:Lcom/android/ex/photo/views/PhotoView;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/ex/photo/views/PhotoView;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v1

    .line 1356
    goto :goto_0
.end method

.method public run()V
    .locals 11

    .prologue
    const-wide/16 v8, -0x1

    const/high16 v7, 0x41200000    # 10.0f

    const/high16 v6, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    .line 1370
    iget-boolean v0, p0, Lacy;->f:Z

    if-eqz v0, :cond_1

    .line 1411
    :cond_0
    :goto_0
    return-void

    .line 1375
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1376
    iget-wide v4, p0, Lacy;->d:J

    cmp-long v0, v4, v8

    if-eqz v0, :cond_5

    iget-wide v4, p0, Lacy;->d:J

    sub-long v4, v2, v4

    long-to-float v0, v4

    .line 1378
    :goto_1
    iget-wide v4, p0, Lacy;->d:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_2

    .line 1379
    iput-wide v2, p0, Lacy;->d:J

    .line 1384
    :cond_2
    cmpl-float v2, v0, v6

    if-ltz v2, :cond_6

    .line 1385
    iget v0, p0, Lacy;->b:F

    .line 1394
    :cond_3
    iget v2, p0, Lacy;->c:F

    move v10, v2

    move v2, v0

    move v0, v10

    .line 1398
    :goto_2
    iget-object v3, p0, Lacy;->a:Lcom/android/ex/photo/views/PhotoView;

    .line 2047
    invoke-virtual {v3, v2, v0}, Lcom/android/ex/photo/views/PhotoView;->a(FF)I

    .line 1399
    iget v3, p0, Lacy;->b:F

    sub-float v2, v3, v2

    iput v2, p0, Lacy;->b:F

    .line 1400
    iget v2, p0, Lacy;->c:F

    sub-float v0, v2, v0

    iput v0, p0, Lacy;->c:F

    .line 1402
    iget v0, p0, Lacy;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    iget v0, p0, Lacy;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    .line 1403
    invoke-virtual {p0}, Lacy;->a()V

    .line 1407
    :cond_4
    iget-boolean v0, p0, Lacy;->f:Z

    if-nez v0, :cond_0

    .line 1410
    iget-object v0, p0, Lacy;->a:Lcom/android/ex/photo/views/PhotoView;

    invoke-virtual {v0, p0}, Lcom/android/ex/photo/views/PhotoView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_5
    move v0, v1

    .line 1376
    goto :goto_1

    .line 1388
    :cond_6
    iget v2, p0, Lacy;->b:F

    sub-float v3, v6, v0

    div-float/2addr v2, v3

    mul-float/2addr v2, v7

    .line 1389
    iget v3, p0, Lacy;->c:F

    sub-float v0, v6, v0

    div-float v0, v3, v0

    mul-float v3, v0, v7

    .line 1390
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lacy;->b:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_7

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1391
    :cond_7
    iget v0, p0, Lacy;->b:F

    .line 1393
    :goto_3
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lacy;->c:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v0

    move v0, v3

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_3
.end method
