.class public final Lacz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Z

.field private final b:Lcom/android/ex/photo/views/PhotoView;

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:J

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/android/ex/photo/views/PhotoView;)V
    .locals 2

    .prologue
    .line 1239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1240
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lacz;->g:J

    .line 1241
    iput-object p1, p0, Lacz;->b:Lcom/android/ex/photo/views/PhotoView;

    .line 1242
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lacz;->a:Z

    .line 1270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lacz;->h:Z

    .line 1271
    return-void
.end method

.method public a(FF)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 1248
    iget-boolean v2, p0, Lacz;->a:Z

    if-eqz v2, :cond_0

    .line 1262
    :goto_0
    return v0

    .line 1251
    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lacz;->g:J

    .line 1252
    iput p1, p0, Lacz;->c:F

    .line 1253
    iput p2, p0, Lacz;->d:F

    .line 1255
    iget v2, p0, Lacz;->d:F

    float-to-double v2, v2

    iget v4, p0, Lacz;->c:F

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 1256
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-float v3, v4

    iput v3, p0, Lacz;->e:F

    .line 1257
    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-float v2, v2

    iput v2, p0, Lacz;->f:F

    .line 1259
    iput-boolean v0, p0, Lacz;->h:Z

    .line 1260
    iput-boolean v1, p0, Lacz;->a:Z

    .line 1261
    iget-object v0, p0, Lacz;->b:Lcom/android/ex/photo/views/PhotoView;

    invoke-virtual {v0, p0}, Lcom/android/ex/photo/views/PhotoView;->post(Ljava/lang/Runnable;)Z

    move v0, v1

    .line 1262
    goto :goto_0
.end method

.method public run()V
    .locals 10

    .prologue
    const/high16 v3, -0x3b860000    # -1000.0f

    const/high16 v2, 0x447a0000    # 1000.0f

    const/4 v1, 0x0

    .line 1276
    iget-boolean v0, p0, Lacz;->h:Z

    if-eqz v0, :cond_1

    .line 1319
    :cond_0
    :goto_0
    return-void

    .line 1281
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1282
    iget-wide v6, p0, Lacz;->g:J

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_5

    iget-wide v6, p0, Lacz;->g:J

    sub-long v6, v4, v6

    long-to-float v0, v6

    div-float/2addr v0, v2

    .line 1283
    :goto_1
    iget-object v6, p0, Lacz;->b:Lcom/android/ex/photo/views/PhotoView;

    iget v7, p0, Lacz;->c:F

    mul-float/2addr v7, v0

    iget v8, p0, Lacz;->d:F

    mul-float/2addr v8, v0

    .line 2047
    invoke-virtual {v6, v7, v8}, Lcom/android/ex/photo/views/PhotoView;->a(FF)I

    move-result v6

    .line 1284
    iput-wide v4, p0, Lacz;->g:J

    .line 1286
    iget v4, p0, Lacz;->e:F

    mul-float/2addr v4, v0

    .line 1287
    iget v5, p0, Lacz;->c:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_6

    .line 1288
    iget v5, p0, Lacz;->c:F

    sub-float v4, v5, v4

    iput v4, p0, Lacz;->c:F

    .line 1292
    :goto_2
    iget v4, p0, Lacz;->f:F

    mul-float/2addr v0, v4

    .line 1293
    iget v4, p0, Lacz;->d:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    .line 1294
    iget v4, p0, Lacz;->d:F

    sub-float v0, v4, v0

    iput v0, p0, Lacz;->d:F

    .line 1300
    :goto_3
    iget v0, p0, Lacz;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lacz;->d:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    :cond_2
    if-nez v6, :cond_8

    .line 1302
    :cond_3
    invoke-virtual {p0}, Lacz;->a()V

    .line 1303
    iget-object v0, p0, Lacz;->b:Lcom/android/ex/photo/views/PhotoView;

    .line 3047
    invoke-virtual {v0}, Lcom/android/ex/photo/views/PhotoView;->h()V

    .line 1315
    :cond_4
    :goto_4
    iget-boolean v0, p0, Lacz;->h:Z

    if-nez v0, :cond_0

    .line 1318
    iget-object v0, p0, Lacz;->b:Lcom/android/ex/photo/views/PhotoView;

    invoke-virtual {v0, p0}, Lcom/android/ex/photo/views/PhotoView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_5
    move v0, v1

    .line 1282
    goto :goto_1

    .line 1290
    :cond_6
    iput v1, p0, Lacz;->c:F

    goto :goto_2

    .line 1296
    :cond_7
    iput v1, p0, Lacz;->d:F

    goto :goto_3

    .line 1304
    :cond_8
    const/4 v0, 0x1

    if-ne v6, v0, :cond_a

    .line 1305
    iget v0, p0, Lacz;->c:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    move v0, v2

    :goto_5
    iput v0, p0, Lacz;->e:F

    .line 1306
    iput v1, p0, Lacz;->f:F

    .line 1307
    iput v1, p0, Lacz;->d:F

    goto :goto_4

    :cond_9
    move v0, v3

    .line 1305
    goto :goto_5

    .line 1308
    :cond_a
    const/4 v0, 0x2

    if-ne v6, v0, :cond_4

    .line 1309
    iput v1, p0, Lacz;->e:F

    .line 1310
    iget v0, p0, Lacz;->d:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    :goto_6
    iput v2, p0, Lacz;->f:F

    .line 1311
    iput v1, p0, Lacz;->c:F

    goto :goto_4

    :cond_b
    move v2, v3

    .line 1310
    goto :goto_6
.end method
