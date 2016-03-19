.class public final Lacw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/android/ex/photo/views/PhotoView;

.field private b:F

.field private c:F

.field private d:F

.field private e:J

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/android/ex/photo/views/PhotoView;)V
    .locals 0

    .prologue
    .line 1431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1432
    iput-object p1, p0, Lacw;->a:Lcom/android/ex/photo/views/PhotoView;

    .line 1433
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lacw;->f:Z

    .line 1457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lacw;->g:Z

    .line 1458
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 1462
    iget-boolean v0, p0, Lacw;->g:Z

    if-eqz v0, :cond_1

    .line 1488
    :cond_0
    :goto_0
    return-void

    .line 1466
    :cond_1
    iget v0, p0, Lacw;->c:F

    iget v1, p0, Lacw;->b:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    .line 1467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1468
    iget-wide v0, p0, Lacw;->e:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lacw;->e:J

    sub-long v0, v2, v0

    .line 1469
    :goto_1
    iget v4, p0, Lacw;->d:F

    long-to-float v0, v0

    mul-float/2addr v0, v4

    .line 1470
    iget v1, p0, Lacw;->c:F

    iget v4, p0, Lacw;->b:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_2

    iget v1, p0, Lacw;->c:F

    add-float/2addr v1, v0

    iget v4, p0, Lacw;->b:F

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_3

    :cond_2
    iget v1, p0, Lacw;->c:F

    iget v4, p0, Lacw;->b:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_4

    iget v1, p0, Lacw;->c:F

    add-float/2addr v1, v0

    iget v4, p0, Lacw;->b:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_4

    .line 1474
    :cond_3
    iget v0, p0, Lacw;->b:F

    iget v1, p0, Lacw;->c:F

    sub-float/2addr v0, v1

    .line 1476
    :cond_4
    iget-object v1, p0, Lacw;->a:Lcom/android/ex/photo/views/PhotoView;

    .line 2096
    iget v4, v1, Lcom/android/ex/photo/views/PhotoView;->c:F

    add-float/2addr v4, v0

    iput v4, v1, Lcom/android/ex/photo/views/PhotoView;->c:F

    .line 2097
    iget-object v4, v1, Lcom/android/ex/photo/views/PhotoView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Lcom/android/ex/photo/views/PhotoView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v1}, Lcom/android/ex/photo/views/PhotoView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v0, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 2098
    invoke-virtual {v1}, Lcom/android/ex/photo/views/PhotoView;->invalidate()V

    .line 1477
    iget v1, p0, Lacw;->c:F

    add-float/2addr v0, v1

    iput v0, p0, Lacw;->c:F

    .line 1478
    iget v0, p0, Lacw;->c:F

    iget v1, p0, Lacw;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    .line 1479
    invoke-virtual {p0}, Lacw;->a()V

    .line 1481
    :cond_5
    iput-wide v2, p0, Lacw;->e:J

    .line 1484
    :cond_6
    iget-boolean v0, p0, Lacw;->g:Z

    if-nez v0, :cond_0

    .line 1487
    iget-object v0, p0, Lacw;->a:Lcom/android/ex/photo/views/PhotoView;

    invoke-virtual {v0, p0}, Lcom/android/ex/photo/views/PhotoView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1468
    :cond_7
    const-wide/16 v0, 0x0

    goto :goto_1
.end method
