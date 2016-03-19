.class public Leit;
.super Leht;
.source "SourceFile"


# static fields
.field static final a:Z

.field static final b:Lezv;

.field private static d:Lhli;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhli",
            "<",
            "Lejd;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/lang/Object;


# instance fields
.field final c:Ljava/lang/Object;

.field private final g:Ljava/util/concurrent/ExecutorService;

.field private final h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lejc;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lejc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lezi;->q:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Leit;->a:Z

    .line 50
    const-string v0, "MediaLoader"

    invoke-static {v0}, Lezv;->a(Ljava/lang/String;)Lezv;

    move-result-object v0

    sput-object v0, Leit;->b:Lezv;

    .line 212
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Leit;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Leht;-><init>()V

    .line 218
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Leit;->g:Ljava/util/concurrent/ExecutorService;

    .line 233
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Leit;->h:Ljava/util/HashSet;

    .line 234
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Leit;->i:Ljava/util/LinkedList;

    .line 235
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Leit;->c:Ljava/lang/Object;

    return-void
.end method

.method private static a(JJ)I
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 794
    cmp-long v0, p0, v2

    if-lez v0, :cond_0

    cmp-long v0, p2, v2

    if-lez v0, :cond_0

    .line 795
    sub-long v0, p0, p2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic a(Leit;[BLjava/lang/String;Lejc;Z)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Leit;->a([BLjava/lang/String;Lejc;Z)V

    return-void
.end method

.method private static a(Lejc;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 37075
    iget-object v0, p0, Lejc;->h:Lejd;

    .line 750
    if-eqz v0, :cond_0

    .line 38075
    iget-object v0, p0, Lejc;->h:Lejd;

    .line 751
    iget-object v0, v0, Lejd;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 39075
    iget-object v0, p0, Lejc;->h:Lejd;

    .line 754
    :goto_0
    iput-object p1, v0, Lejd;->h:Ljava/lang/String;

    .line 757
    :cond_0
    return-void

    .line 40075
    :cond_1
    iget-object v0, p0, Lejc;->h:Lejd;

    .line 754
    iget-object v1, v0, Lejd;->h:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/io/PrintWriter;)V
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 799
    sget-object v2, Leit;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 800
    :try_start_0
    sget-object v1, Leit;->d:Lhli;

    if-nez v1, :cond_0

    .line 801
    monitor-exit v2

    .line 816
    :goto_0
    return-void

    .line 803
    :cond_0
    const-string v1, "loadTime              w-e   a-e   dec-a del-dec del-e key extras"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 804
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move v1, v0

    .line 805
    :goto_1
    sget-object v0, Leit;->d:Lhli;

    invoke-virtual {v0}, Lhli;->a()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 806
    sget-object v0, Leit;->d:Lhli;

    invoke-virtual {v0, v1}, Lhli;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejd;

    .line 807
    const-string v4, "%s %5d %5d %5d %5d %5d %s %s"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v8, v0, Lejd;->a:J

    .line 808
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-wide v8, v0, Lejd;->c:J

    iget-wide v10, v0, Lejd;->b:J

    .line 809
    invoke-static {v8, v9, v10, v11}, Leit;->a(JJ)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-wide v8, v0, Lejd;->d:J

    iget-wide v10, v0, Lejd;->b:J

    .line 810
    invoke-static {v8, v9, v10, v11}, Leit;->a(JJ)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-wide v8, v0, Lejd;->e:J

    iget-wide v10, v0, Lejd;->d:J

    .line 811
    invoke-static {v8, v9, v10, v11}, Leit;->a(JJ)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-wide v8, v0, Lejd;->f:J

    iget-wide v10, v0, Lejd;->e:J

    .line 812
    invoke-static {v8, v9, v10, v11}, Leit;->a(JJ)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-wide v8, v0, Lejd;->f:J

    iget-wide v10, v0, Lejd;->b:J

    .line 813
    invoke-static {v8, v9, v10, v11}, Leit;->a(JJ)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    iget-object v7, v0, Lejd;->g:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget-object v7, v0, Lejd;->h:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 814
    iget-object v0, v0, Lejd;->h:Ljava/lang/String;

    :goto_2
    aput-object v0, v5, v6

    .line 807
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 805
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 814
    :cond_1
    const-string v0, ""

    goto :goto_2

    .line 816
    :cond_2
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a([BLjava/lang/String;Lejc;Z)V
    .locals 5

    .prologue
    .line 391
    invoke-static {}, Lhbs;->b()V

    .line 392
    invoke-virtual {p3}, Lejc;->j()Ljava/io/File;

    move-result-object v0

    .line 393
    invoke-static {p2}, Leit;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9075
    iget-object p2, p3, Lejc;->g:Ljava/lang/String;

    .line 395
    invoke-static {p2}, Leit;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 396
    invoke-virtual {p0, p3}, Leit;->a(Lejc;)V

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    iget-object v1, p3, Lejc;->f:Leyg;

    .line 401
    invoke-virtual {v1}, Leyg;->r()Ljava/lang/String;

    move-result-object v1

    .line 400
    invoke-static {v0, p2, v1}, Leye;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 402
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 403
    invoke-virtual {p0, p3}, Leit;->a(Lejc;)V

    .line 404
    const-string v0, "Babel_medialoader"

    const-string v1, "could not create save name"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 405
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 406
    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 407
    const/4 v2, 0x0

    .line 409
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    .line 410
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 411
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 412
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 414
    :goto_1
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 415
    iget-object v2, p3, Lejc;->f:Leyg;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Leyg;->a(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lejc;->a(Ljava/lang/String;)V

    .line 417
    iget-object v2, p3, Lejc;->f:Leyg;

    invoke-virtual {v2}, Leyg;->r()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 418
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 10036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 419
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 421
    :cond_4
    sget-boolean v0, Leit;->a:Z

    if-eqz v0, :cond_5

    .line 422
    const-string v2, "Successful save "

    invoke-virtual {p3}, Lejc;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v0}, Leit;->e(Ljava/lang/String;)V

    .line 425
    :cond_5
    if-eqz p4, :cond_a

    .line 427
    invoke-direct {p0, p3}, Leit;->d(Lejc;)V

    .line 429
    invoke-virtual {p3}, Lejc;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Leit;->b(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 430
    if-nez v0, :cond_7

    .line 456
    if-eqz v1, :cond_0

    .line 457
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 459
    :catch_0
    move-exception v0

    .line 460
    const-string v1, "Babel_medialoader"

    const-string v2, "exception closing file while trying to save"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 422
    :cond_6
    :try_start_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 451
    :catch_1
    move-exception v0

    .line 452
    :goto_3
    :try_start_4
    invoke-virtual {p0, p3}, Leit;->a(Lejc;)V

    .line 453
    const-string v2, "Babel_medialoader"

    const-string v3, "exception writing bytes to file while trying to save"

    invoke-static {v2, v3, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 456
    if-eqz v1, :cond_0

    .line 457
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 459
    :catch_2
    move-exception v0

    .line 460
    const-string v1, "Babel_medialoader"

    const-string v2, "exception closing file while trying to save"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 436
    :cond_7
    :try_start_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lehx;

    .line 437
    instance-of v3, v0, Lejc;

    .line 10134
    const-string v4, "Expected condition to be true"

    invoke-static {v4, v3}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 438
    check-cast v0, Lejc;

    .line 11075
    iget-boolean v3, v0, Lejc;->e:Z

    .line 439
    if-eqz v3, :cond_9

    .line 440
    new-instance v3, Leix;

    invoke-direct {v3, p0, v0}, Leix;-><init>(Leit;Lejc;)V

    invoke-virtual {p0, v3}, Leit;->a(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 455
    :catchall_0
    move-exception v0

    .line 456
    :goto_5
    if-eqz v1, :cond_8

    .line 457
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 461
    :cond_8
    :goto_6
    throw v0

    .line 447
    :cond_9
    :try_start_8
    invoke-virtual {v0}, Lejc;->h()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    .line 456
    :cond_a
    if-eqz v1, :cond_0

    .line 457
    :try_start_9
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 459
    :catch_3
    move-exception v0

    .line 460
    const-string v1, "Babel_medialoader"

    const-string v2, "exception closing file while trying to save"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 459
    :catch_4
    move-exception v1

    .line 460
    const-string v2, "Babel_medialoader"

    const-string v3, "exception closing file while trying to save"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 464
    :cond_b
    const-string v0, "Babel_medialoader"

    const-string v1, "could not create save directory."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 455
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_5

    .line 451
    :catch_5
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :cond_c
    move-object v1, v2

    goto/16 :goto_1
.end method

.method private c(Lejc;)V
    .locals 4

    .prologue
    .line 288
    sget-boolean v0, Leit;->a:Z

    if-eqz v0, :cond_0

    .line 289
    const-string v1, "startGetBytes on "

    invoke-virtual {p1}, Lejc;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Leit;->e(Ljava/lang/String;)V

    .line 4075
    :cond_0
    iget-object v0, p1, Lejc;->h:Lejd;

    .line 3732
    if-eqz v0, :cond_1

    .line 5075
    iget-object v0, p1, Lejc;->h:Lejd;

    .line 5695
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 3733
    iput-wide v2, v0, Lejd;->d:J

    .line 292
    :cond_1
    invoke-virtual {p1}, Lejc;->k_()Leis;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Leis;->a()[B

    move-result-object v1

    if-eqz v1, :cond_2

    .line 294
    invoke-virtual {p0, p1, v0}, Leit;->a(Lejc;Leis;)V

    .line 297
    :cond_2
    return-void

    .line 289
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d(Lejc;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 12075
    iget-object v2, p1, Lejc;->h:Lejd;

    .line 11744
    if-eqz v2, :cond_0

    .line 13075
    iget-object v2, p1, Lejc;->h:Lejd;

    .line 13695
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 11745
    iput-wide v4, v2, Lejd;->f:J

    .line 475
    :cond_0
    iget-object v3, p0, Leit;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 478
    :try_start_0
    invoke-virtual {p1}, Lejc;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 480
    iget-object v0, p0, Leit;->h:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 481
    if-nez v0, :cond_1

    .line 482
    const-string v2, "Babel_medialoader"

    invoke-virtual {p0}, Leit;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " removeFromActive for a request that isn\'t in the active."

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    :cond_1
    sget-boolean v2, Leit;->a:Z

    if-eqz v2, :cond_2

    .line 485
    const-string v4, "removeFromActive: reference request ="

    invoke-virtual {p1}, Lejc;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p0, v2}, Leit;->e(Ljava/lang/String;)V

    .line 489
    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Leit;->h:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    const/16 v4, 0x8

    if-lt v2, v4, :cond_3

    .line 490
    const-string v2, "Babel_medialoader"

    iget-object v4, p0, Leit;->h:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x4d

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Number of active requests ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") greater than max active (8)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    :cond_3
    if-eqz v0, :cond_c

    iget-object v0, p0, Leit;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_c

    move-object v0, v1

    .line 497
    :goto_1
    if-nez v0, :cond_d

    iget-object v2, p0, Leit;->i:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 498
    iget-object v0, p0, Leit;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejc;

    .line 499
    sget-boolean v2, Leit;->a:Z

    if-eqz v2, :cond_4

    .line 500
    const-string v4, "transferrequest selected  on "

    .line 501
    invoke-virtual {v0}, Lejc;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 500
    :goto_2
    invoke-virtual {p0, v2}, Leit;->e(Ljava/lang/String;)V

    .line 506
    :cond_4
    invoke-virtual {v0}, Lejc;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Leit;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 507
    sget-boolean v2, Leit;->a:Z

    if-eqz v2, :cond_5

    .line 508
    const-string v4, "mediaDecoded waiting to active request ="

    invoke-virtual {v0}, Lejc;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {p0, v2}, Leit;->e(Ljava/lang/String;)V

    .line 510
    :cond_5
    iget-object v2, p0, Leit;->h:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 485
    :cond_6
    :try_start_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 501
    :cond_7
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 508
    :cond_8
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 512
    :cond_9
    sget-boolean v2, Leit;->a:Z

    if-eqz v2, :cond_a

    .line 513
    const-string v2, "mediaDecoded waiting to active skipped: request ="

    .line 514
    invoke-virtual {v0}, Lejc;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 513
    :goto_4
    invoke-virtual {p0, v0}, Leit;->e(Ljava/lang/String;)V

    :cond_a
    move-object v0, v1

    .line 516
    goto/16 :goto_1

    .line 514
    :cond_b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    move-object v0, v1

    .line 520
    :cond_d
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 521
    if-eqz v0, :cond_e

    .line 522
    invoke-direct {p0, v0}, Leit;->c(Lejc;)V

    .line 524
    :cond_e
    return-void
.end method

.method private static f(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 386
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8119
    if-eqz p0, :cond_0

    const-string v2, "*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    .line 386
    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 8119
    goto :goto_0

    :cond_1
    move v0, v1

    .line 386
    goto :goto_1
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    const-string v0, "MediaLoader"

    return-object v0
.end method

.method public a(Lejc;)V
    .locals 4

    .prologue
    .line 631
    invoke-static {}, Lhbs;->b()V

    .line 632
    const-string v0, "Babel"

    invoke-virtual {p1}, Lejc;->n()Leyg;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Media failed to load:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 633
    const-string v0, " Failed"

    invoke-static {p1, v0}, Leit;->a(Lejc;Ljava/lang/String;)V

    .line 634
    invoke-direct {p0, p1}, Leit;->d(Lejc;)V

    .line 635
    invoke-virtual {p1}, Lejc;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Leit;->b(Ljava/lang/String;)Ljava/util/List;

    .line 36075
    iget-boolean v0, p1, Lejc;->e:Z

    .line 636
    if-eqz v0, :cond_0

    .line 637
    new-instance v0, Leiz;

    invoke-direct {v0, p0, p1}, Leiz;-><init>(Leit;Lejc;)V

    invoke-virtual {p0, v0}, Leit;->a(Ljava/lang/Runnable;)V

    .line 646
    :goto_0
    return-void

    .line 644
    :cond_0
    invoke-virtual {p1}, Lejc;->g()V

    goto :goto_0
.end method

.method public a(Lejc;Leis;)V
    .locals 6

    .prologue
    .line 304
    invoke-virtual {p2}, Leis;->a()[B

    move-result-object v1

    .line 305
    sget-boolean v0, Leit;->a:Z

    if-eqz v0, :cond_0

    .line 306
    if-nez p2, :cond_3

    const-string v0, " null "

    .line 307
    :goto_0
    invoke-virtual {p1}, Lejc;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x10

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "mediaDownloaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-virtual {p0, v0}, Leit;->e(Ljava/lang/String;)V

    .line 6075
    :cond_0
    iget-object v0, p1, Lejc;->h:Lejd;

    .line 5738
    if-eqz v0, :cond_1

    .line 7075
    iget-object v0, p1, Lejc;->h:Lejd;

    .line 7695
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 5739
    iput-wide v2, v0, Lejd;->e:J

    .line 310
    :cond_1
    invoke-virtual {p2}, Leis;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 311
    const-string v0, " Volley Cache Hit"

    invoke-static {p1, v0}, Leit;->a(Lejc;Ljava/lang/String;)V

    .line 313
    :cond_2
    if-eqz v1, :cond_6

    array-length v0, v1

    if-lez v0, :cond_6

    .line 314
    invoke-virtual {p1}, Lejc;->n()Leyg;

    move-result-object v0

    invoke-virtual {v0}, Leyg;->r()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 315
    invoke-virtual {p1}, Lejc;->n()Leyg;

    move-result-object v0

    invoke-virtual {v0}, Leyg;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 317
    iget-object v0, p0, Leit;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Leiu;

    invoke-direct {v2, p0, p1, v1, p2}, Leiu;-><init>(Leit;Lejc;[BLeis;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 382
    :goto_1
    return-void

    .line 306
    :cond_3
    array-length v0, v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, " size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 341
    :cond_4
    invoke-virtual {p1}, Lejc;->n()Leyg;

    move-result-object v0

    invoke-virtual {v0}, Leyg;->p()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 342
    iget-object v0, p0, Leit;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Leiv;

    invoke-direct {v2, p0, p1, v1, p2}, Leiv;-><init>(Leit;Lejc;[BLeis;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 358
    :cond_5
    iget-object v0, p0, Leit;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Leiw;

    invoke-direct {v2, p0, p1, v1}, Leiw;-><init>(Leit;Lejc;[B)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 380
    :cond_6
    invoke-virtual {p0, p1}, Leit;->b(Lejc;)V

    goto :goto_1
.end method

.method public a(Lejc;Lejb;)V
    .locals 6

    .prologue
    .line 534
    invoke-static {}, Lhbs;->b()V

    .line 536
    sget-boolean v0, Leit;->a:Z

    if-eqz v0, :cond_0

    .line 537
    const-string v1, "mediaDecoded "

    invoke-virtual {p1}, Lejc;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Leit;->e(Ljava/lang/String;)V

    .line 542
    :cond_0
    invoke-direct {p0, p1}, Leit;->d(Lejc;)V

    .line 544
    invoke-virtual {p1}, Lejc;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Leit;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 545
    if-nez v0, :cond_3

    .line 549
    if-eqz p2, :cond_1

    .line 550
    invoke-interface {p2}, Lejb;->b()V

    .line 575
    :cond_1
    :goto_1
    return-void

    .line 537
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 554
    :cond_3
    if-eqz p2, :cond_1

    .line 555
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lehx;

    .line 556
    instance-of v2, v0, Lejc;

    .line 14134
    const-string v3, "Expected condition to be true"

    invoke-static {v3, v2}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 557
    invoke-interface {p2}, Lejb;->a()V

    .line 558
    check-cast v0, Lejc;

    .line 15075
    iget-object v2, v0, Lejc;->h:Lejd;

    .line 14780
    if-eqz v2, :cond_5

    .line 16075
    iget-object v2, p1, Lejc;->h:Lejd;

    .line 14780
    if-eqz v2, :cond_5

    .line 14781
    if-eq v0, p1, :cond_4

    .line 17075
    iget-object v2, v0, Lejc;->h:Lejd;

    .line 18075
    iget-object v3, p1, Lejc;->h:Lejd;

    .line 14782
    iget-wide v4, v3, Lejd;->c:J

    iput-wide v4, v2, Lejd;->c:J

    .line 19075
    iget-object v2, v0, Lejc;->h:Lejd;

    .line 20075
    iget-object v3, p1, Lejc;->h:Lejd;

    .line 14784
    iget-wide v4, v3, Lejd;->d:J

    iput-wide v4, v2, Lejd;->d:J

    .line 21075
    iget-object v2, v0, Lejc;->h:Lejd;

    .line 22075
    iget-object v3, p1, Lejc;->h:Lejd;

    .line 14786
    iget-wide v4, v3, Lejd;->e:J

    iput-wide v4, v2, Lejd;->e:J

    .line 14787
    const-string v2, " Secondary request"

    invoke-static {v0, v2}, Leit;->a(Lejc;Ljava/lang/String;)V

    .line 23075
    :cond_4
    iget-object v2, v0, Lejc;->h:Lejd;

    .line 23695
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 14789
    iput-wide v4, v2, Lejd;->f:J

    .line 24075
    :cond_5
    iget-boolean v2, v0, Lejc;->e:Z

    .line 560
    if-eqz v2, :cond_6

    .line 561
    new-instance v2, Leiy;

    invoke-direct {v2, p0, v0, p2}, Leiy;-><init>(Leit;Lejc;Lejb;)V

    invoke-virtual {p0, v2}, Leit;->a(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 569
    :cond_6
    invoke-virtual {v0, p2}, Lejc;->a(Lejb;)V

    .line 570
    invoke-interface {p2}, Lejb;->b()V

    goto :goto_2

    .line 573
    :cond_7
    invoke-interface {p2}, Lejb;->b()V

    goto :goto_1
.end method

.method protected a(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 240
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 244
    invoke-virtual {p0, v0}, Leit;->c(Ljava/lang/String;)Lehx;

    move-result-object v1

    .line 245
    if-nez v1, :cond_2

    .line 246
    sget-boolean v1, Leit;->a:Z

    if-eqz v1, :cond_0

    .line 247
    const-string v1, "No MediaRequests for key: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Leit;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 252
    :cond_2
    instance-of v0, v1, Lejc;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 253
    check-cast v0, Lejc;

    .line 2075
    iget-object v1, v0, Lejc;->h:Lejd;

    .line 1726
    if-eqz v1, :cond_3

    .line 3075
    iget-object v1, v0, Lejc;->h:Lejd;

    .line 3695
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1727
    iput-wide v4, v1, Lejd;->c:J

    .line 255
    :cond_3
    iget-object v3, p0, Leit;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 256
    :try_start_0
    invoke-virtual {v0}, Lejc;->a()Z

    move-result v1

    if-nez v1, :cond_6

    .line 257
    sget-boolean v1, Leit;->a:Z

    if-eqz v1, :cond_4

    .line 258
    const-string v4, "execute skip: reference request ="

    .line 259
    invoke-virtual {v0}, Lejc;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 258
    :goto_2
    invoke-virtual {p0, v1}, Leit;->e(Ljava/lang/String;)V

    .line 278
    :cond_4
    :goto_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    if-eqz v0, :cond_0

    .line 280
    invoke-direct {p0, v0}, Leit;->c(Lejc;)V

    goto :goto_0

    .line 259
    :cond_5
    :try_start_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 261
    :cond_6
    :try_start_2
    iget-object v1, p0, Leit;->h:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    const/16 v4, 0x8

    if-ge v1, v4, :cond_9

    .line 264
    sget-boolean v1, Leit;->a:Z

    if-eqz v1, :cond_7

    .line 265
    const-string v4, "execute add to active: reference request ="

    .line 266
    invoke-virtual {v0}, Lejc;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    :goto_4
    invoke-virtual {p0, v1}, Leit;->e(Ljava/lang/String;)V

    .line 268
    :cond_7
    iget-object v1, p0, Leit;->h:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 266
    :cond_8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 271
    :cond_9
    sget-boolean v1, Leit;->a:Z

    if-eqz v1, :cond_a

    .line 272
    const-string v4, "execute add to waiting: reference request ="

    .line 273
    invoke-virtual {v0}, Lejc;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    :goto_5
    invoke-virtual {p0, v1}, Leit;->e(Ljava/lang/String;)V

    .line 275
    :cond_a
    iget-object v1, p0, Leit;->i:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 276
    const/4 v0, 0x0

    goto :goto_3

    .line 273
    :cond_b
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 285
    :cond_c
    return-void
.end method

.method public a(Lehx;)Z
    .locals 1

    .prologue
    .line 583
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Leit;->a(Lehx;Z)Z

    move-result v0

    return v0
.end method

.method public a(Lehx;Z)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 594
    if-eqz p1, :cond_0

    instance-of v0, p1, Lejc;

    if-nez v0, :cond_1

    .line 595
    :cond_0
    const-string v0, "Babel_medialoader"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "MediaLoader.load: invalid request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 622
    :goto_0
    return v0

    :cond_1
    move-object v0, p1

    .line 598
    check-cast v0, Lejc;

    .line 599
    sget-boolean v2, Leit;->a:Z

    if-eqz v2, :cond_2

    .line 600
    invoke-virtual {v0}, Lejc;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "load req="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " loadOnlyCached="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Leit;->e(Ljava/lang/String;)V

    .line 25146
    :cond_2
    sget-boolean v2, Lezi;->A:Z

    .line 24703
    if-eqz v2, :cond_5

    .line 24704
    new-instance v2, Lejd;

    .line 25671
    invoke-direct {v2}, Lejd;-><init>()V

    .line 24705
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lejd;->a:J

    .line 25695
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 24706
    iput-wide v4, v2, Lejd;->b:J

    .line 24707
    invoke-virtual {v0}, Lejc;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lejd;->g:Ljava/lang/String;

    .line 24708
    sget-object v3, Leit;->f:Ljava/lang/Object;

    monitor-enter v3

    .line 24709
    :try_start_0
    sget-object v4, Leit;->d:Lhli;

    if-nez v4, :cond_3

    .line 24710
    new-instance v4, Lhli;

    const/16 v5, 0xc8

    invoke-direct {v4, v5}, Lhli;-><init>(I)V

    sput-object v4, Leit;->d:Lhli;

    .line 24712
    :cond_3
    sget-object v4, Leit;->d:Lhli;

    invoke-virtual {v4, v2}, Lhli;->a(Ljava/lang/Object;)V

    .line 26075
    iput-object v2, v0, Lejc;->h:Lejd;

    .line 24715
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lejc;->f()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lejc;->e()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v3, 0x1

    .line 608
    :goto_2
    if-nez v3, :cond_b

    if-nez p2, :cond_b

    .line 609
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_8

    .line 612
    invoke-super {p0, p1}, Leht;->c(Lehx;)V

    move v0, v1

    .line 613
    goto/16 :goto_0

    .line 24715
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 24716
    :cond_5
    sget-object v2, Leit;->d:Lhli;

    if-eqz v2, :cond_4

    .line 24717
    sget-object v2, Leit;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 24718
    :try_start_2
    sget-object v3, Leit;->d:Lhli;

    if-eqz v3, :cond_6

    .line 24719
    const/4 v3, 0x0

    sput-object v3, Leit;->d:Lhli;

    .line 24721
    :cond_6
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_7
    move v3, v1

    .line 604
    goto :goto_2

    .line 615
    :cond_8
    sget-boolean v1, Leit;->a:Z

    if-eqz v1, :cond_9

    .line 616
    const-string v1, "no cache found, load req="

    invoke-virtual {v0}, Lejc;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p0, v0}, Leit;->e(Ljava/lang/String;)V

    .line 618
    :cond_9
    invoke-super {p0, p1}, Leht;->a(Lehx;)Z

    move-result v0

    goto/16 :goto_0

    .line 616
    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 27075
    :cond_b
    iget-object v1, v0, Lejc;->h:Lejd;

    .line 26760
    if-eqz v1, :cond_c

    .line 27695
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 28075
    iget-object v1, v0, Lejc;->h:Lejd;

    .line 26762
    iput-wide v4, v1, Lejd;->c:J

    .line 29075
    iget-object v1, v0, Lejc;->h:Lejd;

    .line 26763
    iput-wide v4, v1, Lejd;->d:J

    .line 30075
    iget-object v1, v0, Lejc;->h:Lejd;

    .line 26764
    iput-wide v4, v1, Lejd;->e:J

    .line 31075
    iget-object v1, v0, Lejc;->h:Lejd;

    .line 26765
    iput-wide v4, v1, Lejd;->f:J

    .line 26766
    if-eqz v3, :cond_d

    const-string v1, " Bitmap Cache Hit"

    .line 32075
    :goto_4
    iget-object v2, v0, Lejc;->h:Lejd;

    .line 26767
    iget-object v2, v2, Lejd;->h:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 33075
    iget-object v2, v0, Lejc;->h:Lejd;

    .line 26770
    :goto_5
    iput-object v1, v2, Lejd;->h:Ljava/lang/String;

    .line 26772
    sget-boolean v1, Leit;->a:Z

    if-eqz v1, :cond_c

    .line 26773
    const-string v1, "request history="

    .line 35075
    iget-object v0, v0, Lejc;->h:Lejd;

    .line 26773
    invoke-virtual {v0}, Lejd;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p0, v0}, Leit;->e(Ljava/lang/String;)V

    :cond_c
    move v0, v3

    .line 622
    goto/16 :goto_0

    .line 26766
    :cond_d
    const-string v1, " Bitmap Cache Miss"

    goto :goto_4

    .line 34075
    :cond_e
    iget-object v2, v0, Lejc;->h:Lejd;

    .line 26770
    iget-object v4, v2, Lejd;->h:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_f
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 26773
    :cond_10
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public b(Lejc;)V
    .locals 2

    .prologue
    .line 654
    iget-object v0, p0, Leit;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Leja;

    invoke-direct {v1, p0, p1}, Leja;-><init>(Leit;Lejc;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 660
    return-void
.end method

.method e(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 668
    invoke-virtual {p0}, Leit;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 664
    iget-object v0, p0, Leit;->h:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iget-object v1, p0, Leit;->i:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x33

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "MediaLoader: active/waiting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
