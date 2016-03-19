.class public final Leya;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lexw;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:[I

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/graphics/BitmapFactory$Options;

.field private final f:Ljava/lang/StringBuilder;

.field private final g:Landroid/graphics/Canvas;

.field private final h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lexw;Landroid/content/Context;[I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 337
    iput-object p1, p0, Leya;->a:Lexw;

    .line 338
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 339
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Leya;->h:Landroid/content/Context;

    .line 340
    iput-object p3, p0, Leya;->c:[I

    .line 341
    invoke-static {}, Lexw;->a()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Leya;->e:Landroid/graphics/BitmapFactory$Options;

    .line 342
    array-length v0, p3

    .line 343
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 344
    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Leya;->b:Ljava/util/Map;

    .line 345
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Leya;->d:Ljava/util/Map;

    .line 1043
    iget-boolean v0, p1, Lexw;->f:Z

    .line 346
    if-eqz v0, :cond_0

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Leya;->f:Ljava/lang/StringBuilder;

    .line 348
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Leya;->g:Landroid/graphics/Canvas;

    .line 353
    :goto_0
    return-void

    .line 350
    :cond_0
    iput-object v2, p0, Leya;->f:Ljava/lang/StringBuilder;

    .line 351
    iput-object v2, p0, Leya;->g:Landroid/graphics/Canvas;

    goto :goto_0
.end method

.method private varargs a([Ljava/lang/Integer;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 472
    aget-object v0, p1, v1

    .line 2043
    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 473
    iget-object v3, p0, Leya;->b:Ljava/util/Map;

    monitor-enter v3

    .line 474
    :try_start_0
    iget-object v0, p0, Leya;->b:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 475
    if-eqz v0, :cond_2

    .line 2361
    invoke-virtual {p0}, Leya;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 475
    :cond_1
    if-nez v1, :cond_2

    .line 476
    iget-object v1, p0, Leya;->d:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 477
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 478
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 3043
    invoke-static {v0}, Lexw;->a(Landroid/widget/ImageView;)Leya;

    move-result-object v2

    .line 481
    if-ne v2, p0, :cond_2

    .line 482
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 486
    :cond_2
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(ILandroid/widget/ImageView;)V
    .locals 3

    .prologue
    .line 356
    iget-object v0, p0, Leya;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Leya;->a([Ljava/lang/Integer;)V

    .line 358
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .prologue
    const/16 v13, 0x2d

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 5441
    iget-object v6, p0, Leya;->c:[I

    array-length v7, v6

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_7

    aget v8, v6, v4

    .line 5442
    invoke-virtual {p0}, Leya;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5447
    iget-object v0, p0, Leya;->a:Lexw;

    .line 6043
    iget-object v0, v0, Lexw;->e:Lhv;

    .line 5447
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 5451
    if-nez v0, :cond_0

    invoke-virtual {p0}, Leya;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5452
    iget-object v0, p0, Leya;->a:Lexw;

    .line 7043
    iget-boolean v0, v0, Lexw;->f:Z

    .line 5452
    if-eqz v0, :cond_2

    .line 8043
    sget-object v0, Lexw;->b:Lexd;

    .line 7397
    iget-object v1, p0, Leya;->a:Lexw;

    .line 9043
    iget v1, v1, Lexw;->c:I

    .line 7397
    iget-object v3, p0, Leya;->a:Lexw;

    .line 10043
    iget v3, v3, Lexw;->c:I

    .line 7397
    invoke-virtual {v0, v1, v3, v2}, Lexd;->a(IILexe;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7400
    invoke-virtual {v0, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 7401
    iget-object v1, p0, Leya;->g:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 7402
    iget-object v1, p0, Leya;->f:Ljava/lang/StringBuilder;

    iget-object v3, p0, Leya;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 7403
    iget-object v1, p0, Leya;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 7407
    iget-object v1, p0, Leya;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7408
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 7409
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    .line 7410
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 7411
    iget-object v11, p0, Leya;->a:Lexw;

    .line 11043
    iget-object v11, v11, Lexw;->d:Landroid/graphics/Paint;

    .line 7411
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v1, v5, v12, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 7412
    iget-object v11, p0, Leya;->g:Landroid/graphics/Canvas;

    .line 7414
    invoke-virtual {v10}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v12

    sub-float/2addr v3, v12

    .line 7415
    invoke-virtual {v10}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v10

    sub-float/2addr v9, v10

    iget-object v10, p0, Leya;->a:Lexw;

    .line 12043
    iget-object v10, v10, Lexw;->d:Landroid/graphics/Paint;

    .line 7412
    invoke-virtual {v11, v1, v3, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 7417
    iget-object v1, p0, Leya;->a:Lexw;

    .line 13043
    iget-object v1, v1, Lexw;->e:Lhv;

    .line 7417
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lhv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5461
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Leya;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5462
    iget-object v1, p0, Leya;->d:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5463
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0, v0}, Leya;->publishProgress([Ljava/lang/Object;)V

    .line 5441
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_0

    .line 13365
    :cond_2
    const-wide/16 v0, 0x0

    .line 14043
    sget-boolean v3, Lexw;->a:Z

    .line 13366
    if-eqz v3, :cond_3

    .line 13367
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 13370
    :cond_3
    iget-object v3, p0, Leya;->h:Landroid/content/Context;

    invoke-static {v3}, Lfbt;->a(Landroid/content/Context;)Lfbt;

    move-result-object v3

    invoke-virtual {v3, v8}, Lfbt;->a(I)I

    move-result v3

    .line 13371
    const/4 v9, -0x1

    if-ne v3, v9, :cond_4

    .line 13372
    const-string v0, "Babel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid resourceId for codePoint: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 13373
    goto :goto_1

    .line 15043
    :cond_4
    sget-object v9, Lexw;->b:Lexd;

    .line 13376
    iget-object v10, p0, Leya;->e:Landroid/graphics/BitmapFactory$Options;

    iget-object v11, p0, Leya;->e:Landroid/graphics/BitmapFactory$Options;

    iget v11, v11, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iget-object v12, p0, Leya;->e:Landroid/graphics/BitmapFactory$Options;

    iget v12, v12, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v9, v3, v10, v11, v12}, Lexd;->a(ILandroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 13382
    if-eqz v3, :cond_5

    .line 13383
    iget-object v9, p0, Leya;->a:Lexw;

    .line 16043
    iget-object v9, v9, Lexw;->e:Lhv;

    .line 13383
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v3}, Lhv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17043
    :cond_5
    sget-boolean v9, Lexw;->a:Z

    .line 13386
    if-eqz v9, :cond_6

    .line 13387
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v0, v10, v0

    .line 13388
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Emoji Bitmap decodingTim="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_6
    move-object v0, v3

    .line 13391
    goto/16 :goto_1

    .line 327
    :cond_7
    return-object v2
.end method

.method protected synthetic onCancelled(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 3423
    iget-object v2, p0, Leya;->c:[I

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget v0, v2, v1

    .line 3424
    iget-object v4, p0, Leya;->a:Lexw;

    .line 4043
    iget-object v4, v4, Lexw;->e:Lhv;

    .line 3424
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lhv;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3425
    iget-object v4, p0, Leya;->d:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 3426
    if-eqz v0, :cond_0

    .line 5043
    sget-object v4, Lexw;->b:Lexd;

    .line 3427
    invoke-virtual {v4, v0}, Lexd;->a(Landroid/graphics/Bitmap;)V

    .line 3423
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 327
    :cond_1
    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 327
    check-cast p1, [Ljava/lang/Integer;

    invoke-direct {p0, p1}, Leya;->a([Ljava/lang/Integer;)V

    return-void
.end method
