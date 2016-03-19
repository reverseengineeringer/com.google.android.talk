.class public final Lemv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field private static o:I


# instance fields
.field public g:J

.field public h:J

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:I

.field public l:I

.field public m:I

.field public n:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 462
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "mid"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "chset"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ct"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "text"

    aput-object v2, v0, v1

    sput-object v0, Lemv;->a:[Ljava/lang/String;

    .line 470
    sput v3, Lemv;->o:I

    sput v4, Lemv;->o:I

    sput v3, Lemv;->b:I

    .line 471
    sget v0, Lemv;->o:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lemv;->o:I

    sput v0, Lemv;->c:I

    .line 472
    sget v0, Lemv;->o:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lemv;->o:I

    sput v0, Lemv;->d:I

    .line 473
    sget v0, Lemv;->o:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lemv;->o:I

    sput v0, Lemv;->e:I

    .line 474
    sget v0, Lemv;->o:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lemv;->o:I

    sput v0, Lemv;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/database/Cursor;Z)Lemv;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 681
    new-instance v3, Lemv;

    invoke-direct {v3}, Lemv;-><init>()V

    .line 2489
    sget v4, Lemv;->b:I

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lemv;->g:J

    .line 2490
    sget v4, Lemv;->c:I

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lemv;->h:J

    .line 2491
    sget v4, Lemv;->e:I

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lemv;->i:Ljava/lang/String;

    .line 2492
    sget v4, Lemv;->f:I

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lemv;->j:Ljava/lang/String;

    .line 2493
    sget v4, Lemv;->d:I

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Lemv;->k:I

    .line 2494
    iput v2, v3, Lemv;->l:I

    .line 2495
    iput v2, v3, Lemv;->m:I

    .line 2496
    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lemv;->n:J

    .line 2497
    invoke-virtual {v3}, Lemv;->b()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2501
    if-eqz p1, :cond_3

    .line 2502
    iget-object v4, v3, Lemv;->i:Ljava/lang/String;

    .line 3084
    invoke-static {v4}, Laal;->b(Ljava/lang/String;)Z

    move-result v4

    .line 2502
    if-eqz v4, :cond_5

    .line 4036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 3584
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3585
    invoke-virtual {v3}, Lemv;->d()Landroid/net/Uri;

    move-result-object v2

    .line 3590
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 3591
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3592
    const/4 v4, 0x1

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3593
    const/4 v4, 0x0

    invoke-static {v1, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3594
    iget-object v4, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iput-object v4, v3, Lemv;->i:Ljava/lang/String;

    .line 3595
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v4, v3, Lemv;->l:I

    .line 3596
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, v3, Lemv;->m:I

    .line 3597
    iget-object v0, v3, Lemv;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4521
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 4522
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    .line 4523
    invoke-static {v2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4524
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4527
    const/16 v5, 0x2e

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 4528
    if-ltz v5, :cond_0

    .line 4529
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4532
    :cond_0
    invoke-virtual {v4, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3600
    iput-object v0, v3, Lemv;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3605
    :cond_1
    if-eqz v1, :cond_2

    .line 3607
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2509
    :cond_2
    :goto_0
    invoke-virtual {v3}, Lemv;->d()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lenn;->a(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, v3, Lemv;->n:J

    .line 683
    :cond_3
    :goto_1
    return-object v3

    .line 3608
    :catch_0
    move-exception v0

    .line 3609
    const-string v1, "Babel_SMS"

    const-string v2, "IOException caught while closing stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3602
    :catch_1
    move-exception v0

    .line 3603
    :try_start_2
    const-string v2, "Babel_SMS"

    const-string v4, "DatabaseMessages.MmsPart.loadImage: file not found"

    invoke-static {v2, v4, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3605
    if-eqz v1, :cond_2

    .line 3607
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 3608
    :catch_2
    move-exception v0

    .line 3609
    const-string v1, "Babel_SMS"

    const-string v2, "IOException caught while closing stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3605
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    .line 3607
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 3610
    :cond_4
    :goto_2
    throw v0

    .line 3608
    :catch_3
    move-exception v1

    .line 3609
    const-string v2, "Babel_SMS"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2504
    :cond_5
    iget-object v1, v3, Lemv;->i:Ljava/lang/String;

    .line 5092
    invoke-static {v1}, Laal;->d(Ljava/lang/String;)Z

    move-result v1

    .line 2504
    if-eqz v1, :cond_2

    .line 2505
    invoke-static {}, Lenn;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 5620
    invoke-virtual {v3}, Lemv;->d()Landroid/net/Uri;

    move-result-object v4

    .line 5621
    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 5624
    :try_start_5
    invoke-virtual {v5, v1, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_5

    .line 5630
    :goto_3
    if-eqz v0, :cond_2

    .line 5631
    const-wide/16 v0, -0x1

    invoke-virtual {v5, v0, v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5632
    const/16 v1, 0xc

    .line 5633
    invoke-virtual {v5, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lemv;->i:Ljava/lang/String;

    .line 5634
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v3, Lemv;->l:I

    .line 5635
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, v3, Lemv;->m:I

    .line 5636
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    .line 5626
    :catch_4
    move-exception v0

    .line 5628
    :goto_4
    const-string v1, "Babel_SMS"

    const-string v4, "DatabaseMessages.MmsPart.loadVideo: failed to load video"

    invoke-static {v1, v4, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    goto :goto_3

    .line 2513
    :cond_6
    invoke-direct {v3}, Lemv;->e()V

    goto :goto_1

    .line 5626
    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method private e()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1670
    const-string v2, "text/plain"

    iget-object v3, p0, Lemv;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "application/smil"

    iget-object v3, p0, Lemv;->i:Ljava/lang/String;

    .line 1671
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "text/html"

    iget-object v3, p0, Lemv;->i:Ljava/lang/String;

    .line 1672
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 540
    :cond_1
    if-eqz v0, :cond_4

    .line 542
    iget-object v0, p0, Lemv;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 543
    iget-object v0, p0, Lemv;->j:Ljava/lang/String;

    iget v1, p0, Lemv;->k:I

    invoke-static {v0, v1}, Laal;->b(Ljava/lang/String;I)[B

    move-result-object v1

    .line 573
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    array-length v0, v1

    if-lez v0, :cond_3

    .line 574
    array-length v0, v1

    int-to-long v2, v0

    iput-wide v2, p0, Lemv;->n:J

    .line 575
    iget v0, p0, Lemv;->k:I

    invoke-static {v1, v0}, Laal;->a([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lemv;->j:Ljava/lang/String;

    .line 577
    :cond_3
    return-void

    .line 2036
    :cond_4
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 547
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 548
    invoke-virtual {p0}, Lemv;->d()Landroid/net/Uri;

    move-result-object v2

    .line 550
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 552
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 553
    const/16 v0, 0x100

    new-array v2, v0, [B

    .line 554
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 555
    :goto_1
    if-ltz v0, :cond_5

    .line 556
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 557
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_1

    .line 563
    :cond_5
    if-eqz v1, :cond_6

    .line 565
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 571
    :cond_6
    :goto_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0

    .line 566
    :catch_0
    move-exception v0

    .line 567
    const-string v1, "Babel_SMS"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2d

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "DatabaseMessages.MmsPart: close file failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 559
    :catch_1
    move-exception v0

    .line 560
    :try_start_2
    const-string v2, "Babel_SMS"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x39

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "DatabaseMessages.MmsPart: loading text from file failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 563
    if-eqz v1, :cond_6

    .line 565
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 566
    :catch_2
    move-exception v0

    .line 567
    const-string v1, "Babel_SMS"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2d

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "DatabaseMessages.MmsPart: close file failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 563
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_7

    .line 565
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 568
    :cond_7
    :goto_3
    throw v0

    .line 566
    :catch_3
    move-exception v1

    .line 567
    const-string v2, "Babel_SMS"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2d

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "DatabaseMessages.MmsPart: close file failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 687
    const-string v0, "text/plain"

    iget-object v1, p0, Lemv;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/html"

    iget-object v1, p0, Lemv;->i:Ljava/lang/String;

    .line 688
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/vnd.wap.xhtml+xml"

    iget-object v1, p0, Lemv;->i:Ljava/lang/String;

    .line 689
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lemv;->i:Ljava/lang/String;

    .line 6084
    invoke-static {v0}, Laal;->b(Ljava/lang/String;)Z

    move-result v0

    .line 693
    if-nez v0, :cond_0

    iget-object v0, p0, Lemv;->i:Ljava/lang/String;

    .line 6092
    invoke-static {v0}, Laal;->d(Ljava/lang/String;)Z

    move-result v0

    .line 694
    if-nez v0, :cond_0

    iget-object v0, p0, Lemv;->i:Ljava/lang/String;

    .line 7088
    invoke-static {v0}, Laal;->c(Ljava/lang/String;)Z

    move-result v0

    .line 695
    if-nez v0, :cond_0

    iget-object v0, p0, Lemv;->i:Ljava/lang/String;

    .line 696
    invoke-static {v0}, Laen;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lemv;->i:Ljava/lang/String;

    .line 8084
    invoke-static {v0}, Laal;->b(Ljava/lang/String;)Z

    move-result v0

    .line 700
    return v0
.end method

.method public d()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 704
    iget-wide v0, p0, Lemv;->g:J

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "content://mms/part/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
