.class public final Leny;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final B:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final C:[Ljava/lang/String;

.field private static D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final a:Z

.field static final b:Ljava/lang/String;

.field static final c:Ljava/lang/String;

.field static final d:Ljava/lang/String;

.field static volatile e:J

.field static final f:Landroid/net/Uri;

.field static final g:Landroid/net/Uri;

.field private static volatile i:I

.field private static volatile j:I

.field private static volatile k:I

.field private static volatile l:J

.field private static volatile m:J

.field private static volatile n:I

.field private static volatile o:I

.field private static p:[Leyf;

.field private static final q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Leoj;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final A:Z

.field volatile h:Z

.field private final r:Landroid/content/Context;

.field private final s:Lbfd;

.field private final t:Lbfz;

.field private final u:Lhu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhu",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Lhu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhu",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final w:Lhq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhq",
            "<",
            "Ljava/lang/String;",
            "Leoc;",
            ">;"
        }
    .end annotation
.end field

.field private final x:J

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 70
    sget-object v0, Lezi;->r:Limx;

    sput-boolean v6, Leny;->a:Z

    .line 72
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "(%s IN (%d, %d))"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "type"

    aput-object v3, v2, v6

    .line 76
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 77
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    .line 72
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leny;->b:Ljava/lang/String;

    .line 78
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "((%s IN (%d, %d)) AND (%s IN (%d, %d)))"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "msg_box"

    aput-object v3, v2, v6

    .line 82
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 83
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "m_type"

    aput-object v3, v2, v8

    const/16 v3, 0x80

    .line 85
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const/16 v4, 0x84

    .line 86
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 78
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leny;->c:Ljava/lang/String;

    .line 92
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "((%s=%d) AND (%s=%d OR %s=%d) AND (%s=%d))"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "transport_type"

    aput-object v3, v2, v6

    .line 96
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "sms_type"

    aput-object v3, v2, v7

    .line 98
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "sms_type"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 100
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "status"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lemc;->e:Lemc;

    .line 102
    invoke-virtual {v4}, Lemc;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 92
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leny;->d:Ljava/lang/String;

    .line 625
    new-instance v0, Lenz;

    invoke-direct {v0}, Lenz;-><init>()V

    invoke-static {v0}, Laal;->a(Ldju;)V

    .line 645
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 17653
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 646
    :goto_0
    sput-object v0, Leny;->f:Landroid/net/Uri;

    .line 648
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 17662
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 649
    :goto_1
    sput-object v0, Leny;->g:Landroid/net/Uri;

    .line 682
    new-array v0, v7, [Leyf;

    new-instance v1, Leyf;

    invoke-direct {v1}, Leyf;-><init>()V

    aput-object v1, v0, v6

    new-instance v1, Leyf;

    invoke-direct {v1}, Leyf;-><init>()V

    aput-object v1, v0, v5

    sput-object v0, Leny;->p:[Leyf;

    .line 718
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Leny;->q:Ljava/util/Map;

    .line 795
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Leny;->B:Ljava/util/concurrent/ScheduledExecutorService;

    .line 885
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "count()"

    aput-object v1, v0, v6

    sput-object v0, Leny;->C:[Ljava/lang/String;

    .line 1733
    const/4 v0, 0x0

    sput-object v0, Leny;->D:Ljava/util/List;

    return-void

    .line 17657
    :cond_0
    const-string v0, "content://mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 17666
    :cond_1
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method

.method constructor <init>(Lbfz;JZ)V
    .locals 2

    .prologue
    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 799
    iput-object v0, p0, Leny;->r:Landroid/content/Context;

    .line 800
    iput-object p1, p0, Leny;->t:Lbfz;

    .line 801
    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v0

    iput-object v0, p0, Leny;->s:Lbfd;

    .line 802
    iput-wide p2, p0, Leny;->x:J

    .line 803
    const/4 v0, 0x0

    iput-boolean v0, p0, Leny;->h:Z

    .line 804
    iput-boolean p4, p0, Leny;->A:Z

    .line 805
    new-instance v0, Lhu;

    invoke-direct {v0}, Lhu;-><init>()V

    iput-object v0, p0, Leny;->u:Lhu;

    .line 806
    new-instance v0, Lhu;

    invoke-direct {v0}, Lhu;-><init>()V

    iput-object v0, p0, Leny;->v:Lhu;

    .line 807
    new-instance v0, Lhq;

    invoke-direct {v0}, Lhq;-><init>()V

    iput-object v0, p0, Leny;->w:Lhq;

    .line 808
    return-void
.end method

.method private static a(Landroid/database/Cursor;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 889
    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 890
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 893
    if-eqz p0, :cond_0

    .line 894
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 897
    :cond_0
    :goto_0
    return v0

    .line 893
    :cond_1
    if-eqz p0, :cond_0

    .line 894
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 893
    :catchall_0
    move-exception v0

    if-eqz p0, :cond_2

    .line 894
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 1831
    array-length v4, p3

    move v1, v2

    move v3, v2

    .line 1832
    :goto_0
    if-ge v1, v4, :cond_0

    .line 1833
    add-int/lit16 v0, v1, 0x80

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1834
    sub-int v5, v0, v1

    .line 1835
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s IN %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v2

    const/4 v9, 0x1

    .line 1839
    invoke-static {v5}, Lenn;->a(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v9

    .line 1835
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1840
    invoke-static {p3, v1, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1841
    iget-object v6, p0, Leny;->t:Lbfz;

    invoke-virtual {v6}, Lbfz;->e()Lbha;

    move-result-object v6

    invoke-virtual {v6, p1, v5, v0}, Lbha;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1845
    add-int/2addr v3, v0

    .line 1832
    add-int/lit16 v0, v1, 0x80

    move v1, v0

    goto :goto_0

    .line 1847
    :cond_0
    return v3
.end method

.method static a(Landroid/net/Uri;)J
    .locals 2

    .prologue
    .line 1311
    if-eqz p0, :cond_0

    .line 1312
    :try_start_0
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 1317
    :goto_0
    return-wide v0

    .line 1316
    :catch_0
    move-exception v0

    .line 1317
    :cond_0
    :goto_1
    const-wide/16 v0, -0x1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Lemu;)J
    .locals 18

    .prologue
    .line 1479
    move-object/from16 v0, p1

    iget-object v2, v0, Lemu;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 1480
    const-string v2, "Babel_SMS"

    move-object/from16 v0, p0

    iget-object v3, v0, Leny;->s:Lbfd;

    invoke-virtual {v3}, Lbfd;->g()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x35

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "SmsSyncManager A#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": MMS message has no part"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1483
    :cond_0
    move-object/from16 v0, p1

    iget-wide v2, v0, Lemu;->r:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Leny;->a(J)Ljava/util/List;

    move-result-object v8

    .line 1484
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 1486
    :cond_1
    const-string v2, "Babel_SMS"

    move-object/from16 v0, p0

    iget-object v3, v0, Leny;->s:Lbfd;

    invoke-virtual {v3}, Lbfd;->g()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x3a

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "SmsSyncManager A#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": MMS message has no recipient"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1488
    const-wide/16 v10, -0x1

    .line 1630
    :goto_0
    return-wide v10

    .line 1490
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget-wide v4, v0, Lemu;->m:J

    invoke-static {v2, v4, v5}, Leny;->c(IJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1493
    const-wide/16 v10, -0x1

    goto :goto_0

    .line 1495
    :cond_3
    move-object/from16 v0, p1

    iget v2, v0, Lemu;->n:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v2, 0x1

    move v7, v2

    .line 1496
    :goto_1
    const/4 v2, 0x0

    .line 1497
    if-nez v7, :cond_15

    .line 15820
    move-object/from16 v0, p1

    iget-wide v2, v0, Lemu;->r:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Leny;->a(J)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p1

    iget-wide v4, v0, Lemu;->m:J

    invoke-static {v2, v4, v5}, Lenn;->a(Ljava/util/List;J)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 1501
    :goto_2
    const/4 v5, 0x0

    .line 1502
    if-eqz v7, :cond_7

    .line 1503
    move-object/from16 v0, p0

    iget-object v2, v0, Leny;->s:Lbfd;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Leny;->s:Lbfd;

    invoke-virtual {v2}, Lbfd;->b()Lczb;

    move-result-object v2

    :goto_3
    move-object v5, v2

    .line 1507
    :cond_4
    :goto_4
    if-nez v5, :cond_8

    .line 1509
    const-string v2, "Babel_SMS"

    move-object/from16 v0, p0

    iget-object v3, v0, Leny;->s:Lbfd;

    invoke-virtual {v3}, Lbfd;->g()I

    move-result v3

    move-object/from16 v0, p1

    iget-wide v4, v0, Lemu;->m:J

    move-object/from16 v0, p1

    iget v6, v0, Lemu;->n:I

    move-object/from16 v0, p1

    iget-wide v8, v0, Lemu;->r:J

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v10, 0x7c

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "SmsSyncManager A#"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ": found MMS has no From: id="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " thread_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1513
    const-wide/16 v10, -0x1

    goto/16 :goto_0

    .line 1495
    :cond_5
    const/4 v2, 0x0

    move v7, v2

    goto :goto_1

    .line 1503
    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    .line 1504
    :cond_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1505
    invoke-static {v3}, Laal;->l(Ljava/lang/String;)Lczb;

    move-result-object v5

    goto :goto_4

    .line 1516
    :cond_8
    invoke-static {v5}, Lbft;->a(Lczb;)Z

    move-result v2

    .line 1521
    move-object/from16 v0, p1

    iget-wide v10, v0, Lemu;->r:J

    if-eqz v2, :cond_9

    move-object v2, v5

    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v2}, Leny;->a(JLczb;)Ljava/lang/String;

    move-result-object v4

    .line 1523
    if-nez v4, :cond_a

    .line 1525
    const-string v2, "Babel_SMS"

    move-object/from16 v0, p0

    iget-object v3, v0, Leny;->s:Lbfd;

    invoke-virtual {v3}, Lbfd;->g()I

    move-result v3

    move-object/from16 v0, p1

    iget-wide v4, v0, Lemu;->r:J

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x5f

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "SmsSyncManager A#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ": failed to create conversation for mms thread "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1527
    const-wide/16 v10, -0x1

    goto/16 :goto_0

    .line 1522
    :cond_9
    const/4 v2, 0x0

    goto :goto_5

    .line 1530
    :cond_a
    invoke-static {}, Lbfz;->i()Ljava/lang/String;

    move-result-object v9

    .line 1533
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1534
    const-string v2, "message_id"

    invoke-virtual {v10, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    const-string v2, "conversation_id"

    invoke-virtual {v10, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    const-string v2, "transport_type"

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1537
    const-string v6, "type"

    if-eqz v7, :cond_d

    sget-object v2, Lemd;->b:Lemd;

    invoke-virtual {v2}, Lemd;->ordinal()I

    move-result v2

    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1539
    const-string v2, "author_chat_id"

    iget-object v6, v5, Lczb;->b:Ljava/lang/String;

    invoke-virtual {v10, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    const-string v2, "author_gaia_id"

    iget-object v6, v5, Lczb;->a:Ljava/lang/String;

    invoke-virtual {v10, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    invoke-virtual/range {p1 .. p1}, Lemu;->e()Ljava/lang/String;

    move-result-object v6

    .line 1542
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    sget v11, Leny;->o:I

    if-le v2, v11, :cond_b

    .line 1546
    const/4 v2, 0x0

    sget v11, Leny;->o:I

    invoke-virtual {v6, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1548
    :cond_b
    const-string v2, "text"

    invoke-virtual {v10, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    const-string v2, "local_url"

    invoke-virtual/range {p1 .. p1}, Lemu;->f()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    const-string v2, "attachment_content_type"

    invoke-virtual/range {p1 .. p1}, Lemu;->g()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    const-string v2, "width_pixels"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1553
    const-string v2, "height_pixels"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1554
    const-string v2, "status"

    sget-object v11, Lemc;->e:Lemc;

    invoke-virtual {v11}, Lemc;->ordinal()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1555
    const-string v2, "timestamp"

    move-object/from16 v0, p1

    iget-wide v12, v0, Lemu;->q:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1556
    const-string v2, "notification_level"

    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1557
    const-string v2, "expiration_timestamp"

    const-wide v12, 0x7fffffffffffffffL

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1558
    const-string v2, "external_ids"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    sget-object v13, Leny;->f:Landroid/net/Uri;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    iget-wide v14, v0, Lemu;->m:J

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, 0x15

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1559
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 1558
    invoke-static {v11}, Laal;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    if-eqz v7, :cond_e

    .line 1561
    const-string v2, "sms_raw_recipients"

    const-string v3, ","

    .line 1562
    invoke-static {v3, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 1561
    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    :cond_c
    :goto_7
    const-string v2, "sms_priority"

    move-object/from16 v0, p1

    iget v3, v0, Lemu;->s:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1572
    const-string v2, "mms_subject"

    move-object/from16 v0, p1

    iget-object v3, v0, Lemu;->o:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    const-string v2, "sms_message_status"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1574
    const-string v2, "sms_type"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1575
    const-string v2, "sms_message_size"

    invoke-virtual/range {p1 .. p1}, Lemu;->h()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1576
    const-string v2, "persisted"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1577
    move-object/from16 v0, p0

    iget-object v2, v0, Leny;->t:Lbfz;

    invoke-virtual {v2}, Lbfz;->e()Lbha;

    move-result-object v2

    const-string v3, "messages"

    invoke-virtual {v2, v3, v10}, Lbha;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    .line 1579
    const-wide/16 v2, -0x1

    cmp-long v2, v10, v2

    if-nez v2, :cond_f

    .line 1580
    const-string v2, "Babel_SMS"

    move-object/from16 v0, p0

    iget-object v3, v0, Leny;->s:Lbfd;

    invoke-virtual {v3}, Lbfd;->g()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x41

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "SmsSyncManager A#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": failed to insert message into table"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1582
    const-wide/16 v10, -0x1

    goto/16 :goto_0

    .line 1538
    :cond_d
    sget-object v2, Lemd;->c:Lemd;

    invoke-virtual {v2}, Lemd;->ordinal()I

    move-result v2

    goto/16 :goto_6

    .line 1564
    :cond_e
    const-string v2, "sms_raw_sender"

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    const/4 v7, 0x1

    if-le v2, v7, :cond_c

    .line 1567
    const-string v2, "sms_raw_recipients"

    .line 1568
    invoke-static {v8, v3}, Lenn;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1567
    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1588
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lemu;->k()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_11

    .line 1589
    invoke-virtual/range {p1 .. p1}, Lemu;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lemv;

    .line 1590
    invoke-virtual {v2}, Lemv;->b()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1594
    new-instance v7, Lbgp;

    invoke-direct {v7}, Lbgp;-><init>()V

    .line 1596
    iput-object v4, v7, Lbgp;->a:Ljava/lang/String;

    .line 1597
    iput-object v9, v7, Lbgp;->b:Ljava/lang/String;

    .line 1598
    invoke-virtual {v2}, Lemv;->d()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lbgp;->c:Ljava/lang/String;

    .line 1599
    iget-object v2, v2, Lemv;->i:Ljava/lang/String;

    iput-object v2, v7, Lbgp;->d:Ljava/lang/String;

    .line 1600
    const/4 v2, 0x0

    iput v2, v7, Lbgp;->e:I

    .line 1601
    const/4 v2, 0x0

    iput v2, v7, Lbgp;->f:I

    .line 1603
    move-object/from16 v0, p0

    iget-object v2, v0, Leny;->t:Lbfz;

    invoke-virtual {v2, v7}, Lbfz;->a(Lbgp;)J

    goto :goto_8

    .line 1608
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Leny;->z:Z

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lemu;->v:Z

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput-boolean v2, v0, Leny;->z:Z

    .line 1610
    const/4 v12, 0x2

    .line 1611
    invoke-virtual/range {p1 .. p1}, Lemu;->j()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_13

    invoke-virtual/range {p1 .. p1}, Lemu;->k()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    .line 1612
    invoke-virtual/range {p1 .. p1}, Lemu;->g()Ljava/lang/String;

    move-result-object v2

    .line 16084
    invoke-static {v2}, Laal;->b(Ljava/lang/String;)Z

    move-result v2

    .line 1612
    if-eqz v2, :cond_13

    .line 1613
    const/4 v12, 0x3

    .line 1622
    :cond_12
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lemu;->f()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget-wide v8, v0, Lemu;->q:J

    .line 1626
    invoke-virtual/range {p1 .. p1}, Lemu;->g()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p1

    iget-boolean v15, v0, Lemu;->u:Z

    move-object/from16 v0, p1

    iget-wide v0, v0, Lemu;->r:J

    move-wide/from16 v16, v0

    move-object/from16 v3, p0

    .line 1618
    invoke-direct/range {v3 .. v17}, Leny;->a(Ljava/lang/String;Lczb;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;IZJ)V

    goto/16 :goto_0

    .line 1614
    :cond_13
    move-object/from16 v0, p1

    iget-object v2, v0, Lemu;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_14

    invoke-virtual/range {p1 .. p1}, Lemu;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laen;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1615
    :cond_14
    const/16 v12, 0x9

    goto :goto_9

    :cond_15
    move-object v3, v2

    goto/16 :goto_2
.end method

.method static a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 1299
    invoke-static {p0}, Laal;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1300
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1301
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1303
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(JLczb;)Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x1

    const/4 v4, 0x0

    .line 1688
    iget-object v2, p0, Leny;->u:Lhu;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Lhu;->a(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1689
    if-eqz v2, :cond_1

    move-object v4, v2

    .line 1730
    :cond_0
    :goto_0
    return-object v4

    .line 1692
    :cond_1
    invoke-direct/range {p0 .. p2}, Leny;->a(J)Ljava/util/List;

    move-result-object v6

    .line 1693
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 1694
    :cond_2
    const-string v2, "Babel_SMS"

    iget-object v5, p0, Leny;->s:Lbfd;

    invoke-virtual {v5}, Lbfd;->g()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x59

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "SmsSyncManager A#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": could not find recipients for threadId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v5, v3}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1698
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1699
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 17036
    sget-object v8, Laal;->oJ:Landroid/content/Context;

    .line 1703
    invoke-static {v8, v2, v4, v4}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcyx;

    move-result-object v2

    .line 1704
    if-eqz p3, :cond_4

    iget-object v8, v2, Lcyx;->b:Lczb;

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lczb;->a(Lczb;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1705
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v8, v2, Lcyx;->i:Ljava/lang/Boolean;

    .line 1707
    :cond_4
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1709
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v11, :cond_7

    .line 1710
    const/4 v9, 0x2

    .line 1712
    :goto_2
    iget-object v2, p0, Leny;->t:Lbfz;

    if-eqz p3, :cond_6

    move v3, v11

    :cond_6
    sget-object v8, Lbfw;->b:Lbfw;

    const/4 v10, 0x3

    move-object v6, v4

    move-object v7, v4

    move-object v12, v4

    move-object v13, v4

    .line 1713
    invoke-static/range {v2 .. v13}, Lbft;->b(Lbfz;ZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lbfw;IIZLdyy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1726
    if-eqz v2, :cond_0

    .line 1727
    iget-object v3, p0, Leny;->u:Lhu;

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1, v2}, Lhu;->a(JLjava/lang/Object;)V

    move-object v4, v2

    .line 1728
    goto/16 :goto_0

    :cond_7
    move v9, v11

    .line 1711
    goto :goto_2
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    invoke-static/range {p0 .. p5}, Leny;->b(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1740
    iget-object v0, p0, Leny;->v:Lhu;

    invoke-virtual {v0, p1, p2}, Lhu;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1741
    if-nez v0, :cond_0

    .line 1742
    invoke-static {p1, p2}, Lenn;->a(J)Ljava/util/List;

    move-result-object v0

    .line 1743
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1744
    iget-object v1, p0, Leny;->v:Lhu;

    invoke-virtual {v1, p1, p2, v0}, Lhu;->a(JLjava/lang/Object;)V

    .line 1747
    :cond_0
    if-nez v0, :cond_2

    .line 1750
    sget-object v0, Leny;->D:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1751
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1752
    sput-object v0, Leny;->D:Ljava/util/List;

    invoke-static {}, Lenn;->g()Lcyx;

    move-result-object v1

    iget-object v1, v1, Lcyx;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1754
    :cond_1
    sget-object v0, Leny;->D:Ljava/util/List;

    .line 1756
    :cond_2
    return-object v0
.end method

.method static a()V
    .locals 5

    .prologue
    const/16 v4, 0x7d0

    const/16 v2, 0x64

    .line 2036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 598
    const-string v1, "babel_sms_sync_first_batch_size"

    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Leny;->i:I

    .line 3036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 601
    const-string v1, "babel_sms_sync_subsequent_batch_size_min"

    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Leny;->j:I

    .line 4036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 604
    const-string v1, "babel_sms_sync_subsequent_batch_size_max"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Leny;->k:I

    .line 5036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 607
    const-string v1, "babel_sms_sync_subsequent_batch_time_limit"

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v1, v2, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Leny;->l:J

    .line 6036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 610
    const-string v1, "babel_sms_incremental_sync_batch_interval_in_millis"

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Leny;->m:J

    .line 7036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 613
    const-string v1, "babel_sms_sync_batch_max_messages_to_scan"

    invoke-static {v0, v1, v4}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Leny;->n:I

    .line 8036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 616
    const-string v1, "babel_sms_full_sync_backoff_time_millis"

    const-wide/32 v2, 0x36ee80

    invoke-static {v0, v1, v2, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Leny;->e:J

    .line 9036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 619
    const-string v1, "babel_mms_text_limit"

    invoke-static {v0, v1, v4}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Leny;->o:I

    .line 621
    return-void
.end method

.method public static a(IJ)V
    .locals 5

    .prologue
    .line 688
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lhbs;->a(III)V

    .line 689
    sget-object v1, Leny;->p:[Leyf;

    monitor-enter v1

    .line 690
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    .line 691
    :try_start_0
    sget-object v0, Leny;->p:[Leyf;

    aget-object v0, v0, p0

    invoke-virtual {v0, p1, p2}, Leyf;->b(J)V

    .line 693
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Lbfd;)V
    .locals 3

    .prologue
    .line 10198
    const-string v0, "Expected non-null"

    invoke-static {v0, p0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    invoke-virtual {p0}, Lbfd;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 838
    :goto_0
    return-void

    .line 822
    :cond_0
    sget-boolean v0, Leny;->a:Z

    if-eqz v0, :cond_1

    .line 823
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "SmsSyncManager A#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": scheduled cleanse"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    :cond_1
    sget-object v0, Leny;->B:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Leob;

    invoke-direct {v1, p0}, Leob;-><init>(Lbfd;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Lbfd;ZJ)V
    .locals 6

    .prologue
    .line 11198
    const-string v0, "Expected non-null"

    invoke-static {v0, p0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    invoke-virtual {p0}, Lbfd;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 883
    :cond_0
    :goto_0
    return-void

    .line 871
    :cond_1
    invoke-virtual {p0}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    .line 11757
    sget-object v1, Leny;->q:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 11758
    if-eqz v0, :cond_5

    .line 11762
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leoj;

    .line 12478
    iget-boolean v0, v0, Leoj;->a:Z

    .line 11763
    if-eqz v0, :cond_2

    .line 11764
    const/4 v0, 0x1

    .line 871
    :goto_1
    if-nez v0, :cond_0

    .line 872
    sget-boolean v0, Leny;->a:Z

    if-eqz v0, :cond_3

    .line 873
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v1

    if-eqz p1, :cond_6

    .line 874
    const-string v0, " full"

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x51

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "SmsSyncManager A#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": scheduled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sync in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    :cond_3
    new-instance v1, Leoj;

    invoke-direct {v1, p0, p1}, Leoj;-><init>(Lbfd;Z)V

    .line 878
    invoke-virtual {p0}, Lbfd;->a()Ljava/lang/String;

    move-result-object v2

    .line 12722
    sget-object v3, Leny;->q:Ljava/util/Map;

    monitor-enter v3

    .line 12723
    :try_start_0
    sget-object v0, Leny;->q:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 12724
    if-nez v0, :cond_4

    .line 12725
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12726
    sget-object v4, Leny;->q:Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12728
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12729
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
    invoke-virtual {p0}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leny;->b(Ljava/lang/String;)V

    .line 881
    sget-object v0, Leny;->B:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p2, p3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto/16 :goto_0

    .line 11767
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 874
    :cond_6
    const-string v0, ""

    goto :goto_2

    .line 12729
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lhu;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhu",
            "<",
            "Lemu;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1637
    invoke-virtual {p1}, Lhu;->a()I

    move-result v8

    move v7, v6

    .line 1638
    :goto_0
    if-ge v7, v8, :cond_4

    .line 1639
    add-int/lit16 v0, v7, 0x80

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1640
    sub-int v2, v0, v7

    .line 1641
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s != \'%s\' AND %s IN %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ct"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    const-string v5, "application/smil"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "mid"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 1647
    invoke-static {v2}, Lenn;->a(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1641
    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1648
    new-array v4, v2, [Ljava/lang/String;

    move v1, v6

    .line 1649
    :goto_1
    if-ge v1, v2, :cond_0

    .line 1650
    add-int v0, v7, v1

    invoke-virtual {p1, v0}, Lhu;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lemu;

    iget-wide v10, v0, Lemu;->m:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 1649
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1652
    :cond_0
    iget-object v0, p0, Leny;->r:Landroid/content/Context;

    .line 1654
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lenn;->c:Landroid/net/Uri;

    sget-object v2, Lemv;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    .line 1652
    invoke-static/range {v0 .. v5}, Laal;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1660
    if-eqz v1, :cond_3

    .line 1662
    :cond_1
    :goto_2
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1666
    const/4 v0, 0x0

    .line 1667
    invoke-static {v1, v0}, Lemv;->a(Landroid/database/Cursor;Z)Lemv;

    move-result-object v2

    .line 1668
    iget-wide v4, v2, Lemv;->h:J

    invoke-virtual {p1, v4, v5}, Lhu;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lemu;

    .line 1669
    if-eqz v0, :cond_1

    .line 1670
    invoke-virtual {v0, v2}, Lemu;->a(Lemv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1674
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1638
    :cond_3
    add-int/lit16 v0, v7, 0x80

    move v7, v0

    goto :goto_0

    .line 1678
    :cond_4
    return-void
.end method

.method private a(Ljava/lang/String;Lczb;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;IZJ)V
    .locals 15

    .prologue
    .line 1765
    iget-object v2, p0, Leny;->w:Lhq;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lhq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leoc;

    .line 1766
    if-nez v2, :cond_0

    .line 1767
    new-instance v2, Leoc;

    invoke-direct {v2}, Leoc;-><init>()V

    .line 1768
    iget-object v3, p0, Leny;->w:Lhq;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Lhq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    :cond_0
    iget-wide v4, v2, Leoc;->c:J

    cmp-long v3, p5, v4

    if-ltz v3, :cond_1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v13, p13

    .line 1772
    invoke-virtual/range {v2 .. v14}, Leoc;->a(Lczb;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;IJ)V

    .line 1777
    :cond_1
    if-eqz p12, :cond_2

    iget-wide v4, v2, Leoc;->i:J

    cmp-long v3, p5, v4

    if-ltz v3, :cond_2

    .line 1778
    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Leoc;->a(J)V

    .line 1780
    :cond_2
    return-void
.end method

.method static a(Ljava/lang/String;Leoj;)V
    .locals 2

    .prologue
    .line 733
    sget-object v1, Leny;->q:Ljava/util/Map;

    monitor-enter v1

    .line 734
    :try_start_0
    sget-object v0, Leny;->q:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 735
    if-eqz v0, :cond_0

    .line 736
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 738
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Ljava/util/List;Lhu;Lems;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lemw;",
            ">;",
            "Lhu",
            "<",
            "Lemu;",
            ">;",
            "Lems;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1368
    invoke-virtual {p2}, Lems;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1369
    invoke-virtual {p2}, Lems;->b()J

    move-result-wide v0

    check-cast p2, Lemu;

    invoke-virtual {p1, v0, v1, p2}, Lhu;->b(JLjava/lang/Object;)V

    .line 1373
    :goto_0
    return-void

    .line 1371
    :cond_0
    check-cast p2, Lemw;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(IJLeoi;)Z
    .locals 34

    .prologue
    .line 15198
    const-string v4, "Expected non-null"

    move-object/from16 v0, p4

    invoke-static {v4, v0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    invoke-virtual/range {p4 .. p4}, Leoi;->a()V

    .line 1049
    sget-boolean v4, Leny;->a:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Leny;->A:Z

    if-eqz v4, :cond_1

    .line 1050
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Leny;->s:Lbfd;

    invoke-virtual {v4}, Lbfd;->g()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x63

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "SmsSyncManager A#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": batch started with size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", last ts = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1054
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    .line 1056
    const/16 v23, 0x1

    .line 1058
    const/4 v13, 0x0

    .line 1059
    const/4 v12, 0x0

    .line 1061
    const/16 v21, 0x0

    .line 1063
    const/16 v22, 0x0

    .line 1065
    const/16 v20, 0x0

    .line 1069
    const/4 v11, 0x0

    .line 1070
    const/4 v10, 0x0

    .line 1072
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1074
    new-instance v28, Lhu;

    invoke-direct/range {v28 .. v28}, Lhu;-><init>()V

    .line 1076
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 1078
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 1080
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 1085
    :try_start_0
    new-instance v4, Leoe;

    move-object/from16 v0, p0

    iget-object v5, v0, Leny;->t:Lbfz;

    move-object/from16 v0, p0

    iget-wide v6, v0, Leny;->x:J

    move-wide/from16 v8, p2

    invoke-direct/range {v4 .. v9}, Leoe;-><init>(Lbfz;JJ)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1088
    :try_start_1
    new-instance v8, Leoh;

    move-object/from16 v0, p0

    iget-wide v6, v0, Leny;->x:J

    move-wide/from16 v0, p2

    invoke-direct {v8, v6, v7, v0, v1}, Leoh;-><init>(JJ)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1091
    :try_start_2
    invoke-interface {v8}, Leod;->a()Lems;

    move-result-object v11

    .line 1092
    invoke-interface {v4}, Leod;->a()Lems;

    move-result-object v6

    move/from16 v24, v12

    move/from16 v25, v13

    .line 1095
    :goto_0
    add-int v5, v25, v24

    sget v7, Leny;->n:I

    if-ge v5, v7, :cond_2

    add-int v5, v21, v20

    move/from16 v0, p1

    if-ge v5, v0, :cond_2

    .line 1097
    if-nez v11, :cond_5

    if-nez v6, :cond_5

    .line 1099
    const/16 v23, 0x0

    .line 1202
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Leny;->a(Lhu;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1209
    invoke-interface {v4}, Leod;->b()V

    .line 1212
    invoke-interface {v8}, Leod;->b()V

    .line 1216
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v30

    .line 1217
    move-object/from16 v0, p0

    iget-object v4, v0, Leny;->t:Lbfz;

    invoke-virtual {v4}, Lbfz;->a()V

    .line 1220
    :try_start_3
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :goto_1
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lemw;

    .line 15381
    iget-object v5, v4, Lemw;->n:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 15382
    const-string v5, "Babel_SMS"

    move-object/from16 v0, p0

    iget-object v6, v0, Leny;->s:Lbfd;

    invoke-virtual {v6}, Lbfd;->g()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x2d

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "SmsSyncManager A#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": empty sms body."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15384
    const-string v5, ""

    iput-object v5, v4, Lemw;->n:Ljava/lang/String;

    .line 15386
    :cond_3
    iget-object v5, v4, Lemw;->m:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 15387
    const-string v5, "Babel_SMS"

    move-object/from16 v0, p0

    iget-object v6, v0, Leny;->s:Lbfd;

    invoke-virtual {v6}, Lbfd;->g()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x30

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "SmsSyncManager A#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": empty sms address."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15389
    invoke-static {}, Lenn;->g()Lcyx;

    move-result-object v5

    iget-object v5, v5, Lcyx;->c:Ljava/lang/String;

    iput-object v5, v4, Lemw;->m:Ljava/lang/String;

    .line 15391
    :cond_4
    const/4 v5, 0x0

    iget-wide v6, v4, Lemw;->o:J

    invoke-static {v5, v6, v7}, Leny;->c(IJ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v5

    if-eqz v5, :cond_17

    .line 15394
    const-wide/16 v12, -0x1

    .line 1221
    :goto_2
    const-wide/16 v4, 0x0

    cmp-long v4, v12, v4

    if-lez v4, :cond_27

    .line 1222
    add-int/lit8 v4, v22, 0x1

    :goto_3
    move/from16 v22, v4

    .line 1224
    goto/16 :goto_1

    .line 1101
    :cond_5
    if-nez v11, :cond_6

    if-nez v6, :cond_7

    :cond_6
    if-eqz v6, :cond_8

    if-eqz v11, :cond_8

    .line 1103
    :try_start_4
    invoke-virtual {v6}, Lems;->c()J

    move-result-wide v12

    .line 1104
    invoke-virtual {v11}, Lems;->c()J

    move-result-wide v18

    cmp-long v5, v12, v18

    if-lez v5, :cond_8

    .line 1107
    :cond_7
    move-object v0, v6

    check-cast v0, Leof;

    move-object v5, v0

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1108
    invoke-virtual {v6}, Lems;->c()J

    move-result-wide v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v7}, Leoi;->a(J)V

    .line 1110
    invoke-interface {v4}, Leod;->a()Lems;

    move-result-object v6

    .line 1111
    add-int/lit8 v10, v25, 0x1

    .line 1112
    add-int/lit8 v20, v20, 0x1

    move/from16 v25, v10

    goto/16 :goto_0

    .line 1113
    :cond_8
    if-nez v6, :cond_9

    if-nez v11, :cond_a

    :cond_9
    if-eqz v6, :cond_b

    if-eqz v11, :cond_b

    .line 1115
    invoke-virtual {v6}, Lems;->c()J

    move-result-wide v12

    .line 1116
    invoke-virtual {v11}, Lems;->c()J

    move-result-wide v18

    cmp-long v5, v12, v18

    if-gez v5, :cond_b

    .line 1119
    :cond_a
    move-object/from16 v0, v28

    invoke-static {v14, v0, v11}, Leny;->a(Ljava/util/List;Lhu;Lems;)V

    .line 1120
    invoke-virtual {v11}, Lems;->c()J

    move-result-wide v10

    move-object/from16 v0, p4

    invoke-virtual {v0, v10, v11}, Leoi;->a(J)V

    .line 1122
    invoke-interface {v8}, Leod;->a()Lems;

    move-result-object v11

    .line 1123
    add-int/lit8 v12, v24, 0x1

    .line 1124
    add-int/lit8 v21, v21, 0x1

    move/from16 v24, v12

    goto/16 :goto_0

    .line 1127
    :cond_b
    invoke-virtual {v6}, Lems;->c()J

    move-result-wide v18

    .line 1128
    move-object/from16 v0, p4

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Leoi;->a(J)V

    .line 1130
    invoke-interface {v8}, Leod;->a()Lems;

    move-result-object v9

    .line 1131
    invoke-interface {v4}, Leod;->a()Lems;

    move-result-object v7

    .line 1139
    if-eqz v9, :cond_c

    .line 1140
    invoke-virtual {v9}, Lems;->c()J

    move-result-wide v12

    cmp-long v5, v12, v18

    if-eqz v5, :cond_e

    :cond_c
    if-eqz v7, :cond_d

    .line 1142
    invoke-virtual {v7}, Lems;->c()J

    move-result-wide v12

    cmp-long v5, v12, v18

    if-eqz v5, :cond_e

    .line 1145
    :cond_d
    invoke-virtual {v11, v6}, Lems;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 1148
    check-cast v6, Leof;

    move-object/from16 v0, v29

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1149
    add-int/lit8 v5, v20, 0x1

    .line 1151
    move-object/from16 v0, v28

    invoke-static {v14, v0, v11}, Leny;->a(Ljava/util/List;Lhu;Lems;)V

    .line 1152
    add-int/lit8 v6, v21, 0x1

    .line 1157
    :goto_4
    add-int/lit8 v10, v25, 0x1

    .line 1158
    add-int/lit8 v12, v24, 0x1

    move-object v11, v9

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v24, v12

    move/from16 v25, v10

    move-object v6, v7

    goto/16 :goto_0

    .line 1163
    :cond_e
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->clear()V

    .line 1164
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1165
    add-int/lit8 v5, v24, 0x1

    move-object v11, v9

    move v12, v5

    .line 1167
    :goto_5
    if-eqz v11, :cond_f

    .line 1168
    invoke-virtual {v11}, Lems;->c()J

    move-result-wide v30

    cmp-long v5, v30, v18

    if-nez v5, :cond_f

    .line 1169
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1170
    add-int/lit8 v9, v12, 0x1

    .line 1171
    invoke-interface {v8}, Leod;->a()Lems;

    move-result-object v5

    move-object v11, v5

    move v12, v9

    goto :goto_5

    .line 1174
    :cond_f
    invoke-interface {v15}, Ljava/util/Set;->clear()V

    .line 1175
    invoke-interface {v15, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1176
    add-int/lit8 v5, v25, 0x1

    move-object v9, v7

    move v10, v5

    .line 1178
    :goto_6
    if-eqz v9, :cond_10

    .line 1179
    invoke-virtual {v9}, Lems;->c()J

    move-result-wide v6

    cmp-long v5, v6, v18

    if-nez v5, :cond_10

    .line 1180
    invoke-interface {v15, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1181
    add-int/lit8 v6, v10, 0x1

    .line 1182
    invoke-interface {v4}, Leod;->a()Lems;

    move-result-object v5

    move-object v9, v5

    move v10, v6

    goto :goto_6

    .line 1185
    :cond_10
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move/from16 v6, v20

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lems;

    .line 1186
    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_29

    .line 1187
    check-cast v5, Leof;

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1188
    add-int/lit8 v5, v6, 0x1

    :goto_8
    move v6, v5

    .line 1190
    goto :goto_7

    .line 1192
    :cond_11
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move/from16 v7, v21

    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lems;

    .line 1193
    invoke-interface {v15, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_28

    .line 1194
    move-object/from16 v0, v28

    invoke-static {v14, v0, v5}, Leny;->a(Ljava/util/List;Lhu;Lems;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1195
    add-int/lit8 v5, v7, 0x1

    :goto_a
    move v7, v5

    .line 1197
    goto :goto_9

    :cond_12
    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v24, v12

    move/from16 v25, v10

    move-object v6, v9

    .line 1199
    goto/16 :goto_0

    .line 1203
    :catch_0
    move-exception v4

    move-object v5, v10

    move-object v6, v11

    .line 1204
    :goto_b
    :try_start_5
    const-string v7, "Babel_SMS"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x2f

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "SmsSyncManager: Something\'s seriously wrong -- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1208
    if-eqz v6, :cond_13

    .line 1209
    invoke-interface {v6}, Leod;->b()V

    .line 1211
    :cond_13
    if-eqz v5, :cond_14

    .line 1212
    invoke-interface {v5}, Leod;->b()V

    :cond_14
    const/4 v4, 0x0

    .line 1259
    :goto_c
    return v4

    .line 1208
    :catchall_0
    move-exception v4

    move-object v8, v10

    move-object v6, v11

    :goto_d
    if-eqz v6, :cond_15

    .line 1209
    invoke-interface {v6}, Leod;->b()V

    .line 1211
    :cond_15
    if-eqz v8, :cond_16

    .line 1212
    invoke-interface {v8}, Leod;->b()V

    :cond_16
    throw v4

    .line 15396
    :cond_17
    :try_start_6
    iget v5, v4, Lemw;->r:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_19

    const/4 v5, 0x1

    move v9, v5

    .line 15397
    :goto_e
    const/4 v7, 0x0

    .line 15398
    if-eqz v9, :cond_1b

    .line 15399
    move-object/from16 v0, p0

    iget-object v5, v0, Leny;->s:Lbfd;

    if-eqz v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Leny;->s:Lbfd;

    invoke-virtual {v5}, Lbfd;->b()Lczb;

    move-result-object v5

    :goto_f
    move-object v7, v5

    .line 15403
    :cond_18
    :goto_10
    if-nez v7, :cond_1c

    .line 15405
    const-string v5, "Babel_SMS"

    move-object/from16 v0, p0

    iget-object v6, v0, Leny;->s:Lbfd;

    invoke-virtual {v6}, Lbfd;->g()I

    move-result v6

    iget-wide v8, v4, Lemw;->o:J

    iget v7, v4, Lemw;->r:I

    iget-wide v10, v4, Lemw;->s:J

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v12, 0x7f

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "SmsSyncManager A#"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": found SMS has no address: id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " type="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " thread_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v4, v6}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15409
    const-wide/16 v12, -0x1

    goto/16 :goto_2

    .line 15396
    :cond_19
    const/4 v5, 0x0

    move v9, v5

    goto :goto_e

    .line 15399
    :cond_1a
    const/4 v5, 0x0

    goto :goto_f

    .line 15400
    :cond_1b
    iget-object v5, v4, Lemw;->m:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 15401
    iget-object v5, v4, Lemw;->m:Ljava/lang/String;

    invoke-static {v5}, Laal;->l(Ljava/lang/String;)Lczb;

    move-result-object v7

    goto :goto_10

    .line 15411
    :cond_1c
    invoke-static {v7}, Lbft;->a(Lczb;)Z

    move-result v5

    .line 15413
    iget-wide v10, v4, Lemw;->s:J

    if-eqz v5, :cond_1d

    move-object v5, v7

    :goto_11
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v5}, Leny;->a(JLczb;)Ljava/lang/String;

    move-result-object v6

    .line 15415
    if-nez v6, :cond_1e

    .line 15417
    const-string v5, "Babel_SMS"

    move-object/from16 v0, p0

    iget-object v6, v0, Leny;->s:Lbfd;

    invoke-virtual {v6}, Lbfd;->g()I

    move-result v6

    iget-wide v8, v4, Lemw;->s:J

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v7, 0x5f

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "SmsSyncManager A#"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": failed to create conversation for sms thread "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v4, v6}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15419
    const-wide/16 v12, -0x1

    goto/16 :goto_2

    .line 15414
    :cond_1d
    const/4 v5, 0x0

    goto :goto_11

    .line 15422
    :cond_1e
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 15423
    const-string v5, "message_id"

    invoke-static {}, Lbfz;->i()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15424
    const-string v5, "conversation_id"

    invoke-virtual {v10, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15425
    const-string v5, "transport_type"

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v10, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 15426
    const-string v8, "type"

    if-eqz v9, :cond_1f

    sget-object v5, Lemd;->b:Lemd;

    invoke-virtual {v5}, Lemd;->ordinal()I

    move-result v5

    :goto_12
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 15428
    const-string v5, "author_chat_id"

    iget-object v8, v7, Lczb;->b:Ljava/lang/String;

    invoke-virtual {v10, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15429
    const-string v5, "author_gaia_id"

    iget-object v8, v7, Lczb;->a:Ljava/lang/String;

    invoke-virtual {v10, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15430
    iget-object v8, v4, Lemw;->n:Ljava/lang/String;

    .line 15431
    const-string v5, "text"

    invoke-virtual {v10, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15432
    const-string v5, "status"

    sget-object v11, Lemc;->e:Lemc;

    invoke-virtual {v11}, Lemc;->ordinal()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 15433
    const-string v5, "timestamp"

    iget-wide v12, v4, Lemw;->p:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 15434
    const-string v5, "notification_level"

    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 15435
    const-string v5, "expiration_timestamp"

    const-wide v12, 0x7fffffffffffffffL

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 15436
    const-string v5, "external_ids"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    sget-object v13, Leny;->g:Landroid/net/Uri;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iget-wide v14, v4, Lemw;->o:J

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, 0x15

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 15437
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 15436
    invoke-static {v11}, Laal;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15438
    const-string v5, "sms_timestamp_sent"

    iget-wide v12, v4, Lemw;->q:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 15439
    if-eqz v9, :cond_20

    .line 15440
    const-string v5, "sms_raw_recipients"

    iget-object v9, v4, Lemw;->m:Ljava/lang/String;

    invoke-virtual {v10, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15444
    :goto_13
    const-string v5, "sms_message_status"

    iget v9, v4, Lemw;->t:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 15445
    const-string v5, "sms_type"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 15446
    const-string v5, "persisted"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v10, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 15447
    move-object/from16 v0, p0

    iget-object v5, v0, Leny;->t:Lbfz;

    invoke-virtual {v5}, Lbfz;->e()Lbha;

    move-result-object v5

    const-string v9, "messages"

    invoke-virtual {v5, v9, v10}, Lbha;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v12

    .line 15449
    const-wide/16 v10, -0x1

    cmp-long v5, v12, v10

    if-nez v5, :cond_21

    .line 15450
    const-string v4, "Babel_SMS"

    move-object/from16 v0, p0

    iget-object v5, v0, Leny;->s:Lbfd;

    invoke-virtual {v5}, Lbfd;->g()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x3d

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "SmsSyncManager A#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to insert sms into table"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15452
    const-wide/16 v12, -0x1

    goto/16 :goto_2

    .line 15427
    :cond_1f
    sget-object v5, Lemd;->c:Lemd;

    invoke-virtual {v5}, Lemd;->ordinal()I

    move-result v5

    goto/16 :goto_12

    .line 15442
    :cond_20
    const-string v5, "sms_raw_sender"

    iget-object v9, v4, Lemw;->m:Ljava/lang/String;

    invoke-virtual {v10, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_13

    .line 1242
    :catchall_1
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Leny;->t:Lbfz;

    invoke-virtual {v5}, Lbfz;->c()V

    throw v4

    .line 15455
    :cond_21
    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v5, v0, Leny;->y:Z

    iget-boolean v9, v4, Lemw;->v:Z

    or-int/2addr v5, v9

    move-object/from16 v0, p0

    iput-boolean v5, v0, Leny;->y:Z

    .line 15458
    const/4 v9, 0x0

    iget-wide v10, v4, Lemw;->p:J

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-boolean v0, v4, Lemw;->u:Z

    move/from16 v17, v0

    iget-wide v0, v4, Lemw;->s:J

    move-wide/from16 v18, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v19}, Leny;->a(Ljava/lang/String;Lczb;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;IZJ)V

    goto/16 :goto_2

    .line 1226
    :cond_22
    const/4 v4, 0x0

    move v6, v4

    move/from16 v5, v22

    :goto_14
    invoke-virtual/range {v28 .. v28}, Lhu;->a()I

    move-result v4

    if-ge v6, v4, :cond_23

    .line 1227
    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Lhu;->b(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lemu;

    .line 1228
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Leny;->a(Lemu;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-lez v4, :cond_26

    .line 1229
    add-int/lit8 v4, v5, 0x1

    .line 1226
    :goto_15
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v4

    goto :goto_14

    .line 1233
    :cond_23
    const-string v4, "messages"

    const-string v6, "_id"

    .line 1236
    invoke-static/range {v29 .. v29}, Leny;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v7

    .line 1233
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7}, Leny;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1239
    invoke-direct/range {p0 .. p0}, Leny;->c()V

    .line 1240
    move-object/from16 v0, p0

    iget-object v6, v0, Leny;->t:Lbfz;

    invoke-virtual {v6}, Lbfz;->b()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1242
    move-object/from16 v0, p0

    iget-object v6, v0, Leny;->t:Lbfz;

    invoke-virtual {v6}, Lbfz;->c()V

    .line 1245
    move-object/from16 v0, p0

    iget-object v6, v0, Leny;->t:Lbfz;

    invoke-static {v6}, Lbft;->d(Lbfz;)V

    .line 1246
    move/from16 v0, v25

    move-object/from16 v1, p4

    iput v0, v1, Leoi;->c:I

    .line 1247
    move/from16 v0, v24

    move-object/from16 v1, p4

    iput v0, v1, Leoi;->d:I

    .line 1248
    move/from16 v0, v21

    move-object/from16 v1, p4

    iput v0, v1, Leoi;->e:I

    .line 1249
    move-object/from16 v0, p4

    iput v5, v0, Leoi;->f:I

    .line 1250
    move/from16 v0, v20

    move-object/from16 v1, p4

    iput v0, v1, Leoi;->g:I

    .line 1251
    move-object/from16 v0, p4

    iput v4, v0, Leoi;->h:I

    .line 1252
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1253
    sub-long v6, v4, v26

    move-object/from16 v0, p4

    iput-wide v6, v0, Leoi;->a:J

    .line 1254
    sub-long v4, v4, v30

    move-object/from16 v0, p4

    iput-wide v4, v0, Leoi;->b:J

    .line 1255
    sget-boolean v4, Leny;->a:Z

    if-nez v4, :cond_24

    move-object/from16 v0, p0

    iget-boolean v4, v0, Leny;->A:Z

    if-eqz v4, :cond_25

    .line 1256
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Leny;->s:Lbfd;

    invoke-virtual {v4}, Lbfd;->g()I

    move-result v4

    .line 1257
    invoke-virtual/range {p4 .. p4}, Leoi;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x2a

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "SmsSyncManager A#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": batch done. "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    move/from16 v4, v23

    .line 1259
    goto/16 :goto_c

    .line 1208
    :catchall_2
    move-exception v5

    move-object v8, v10

    move-object v6, v4

    move-object v4, v5

    goto/16 :goto_d

    :catchall_3
    move-exception v5

    move-object v6, v4

    move-object v4, v5

    goto/16 :goto_d

    :catchall_4
    move-exception v4

    move-object v8, v5

    goto/16 :goto_d

    .line 1203
    :catch_1
    move-exception v5

    move-object v6, v4

    move-object v4, v5

    move-object v5, v10

    goto/16 :goto_b

    :catch_2
    move-exception v5

    move-object v6, v4

    move-object v4, v5

    move-object v5, v8

    goto/16 :goto_b

    :cond_26
    move v4, v5

    goto/16 :goto_15

    :cond_27
    move/from16 v4, v22

    goto/16 :goto_3

    :cond_28
    move v5, v7

    goto/16 :goto_a

    :cond_29
    move v5, v6

    goto/16 :goto_8

    :cond_2a
    move/from16 v5, v20

    move/from16 v6, v21

    goto/16 :goto_4
.end method

.method static a(Lbfz;)Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    .line 13036
    sget-object v7, Laal;->oJ:Landroid/content/Context;

    .line 914
    :try_start_0
    invoke-virtual {p0}, Lbfz;->e()Lbha;

    move-result-object v0

    const-string v1, "messages"

    sget-object v2, Leny;->C:[Ljava/lang/String;

    sget-object v3, Leny;->d:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lbha;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Leny;->a(Landroid/database/Cursor;)I

    move-result v8

    .line 924
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Leny;->g:Landroid/net/Uri;

    sget-object v2, Leny;->C:[Ljava/lang/String;

    .line 13326
    sget-object v3, Leny;->b:Ljava/lang/String;

    .line 927
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 922
    invoke-static/range {v0 .. v5}, Laal;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Leny;->a(Landroid/database/Cursor;)I

    move-result v9

    .line 932
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Leny;->f:Landroid/net/Uri;

    sget-object v2, Leny;->C:[Ljava/lang/String;

    .line 13341
    sget-object v3, Leny;->c:Ljava/lang/String;

    .line 935
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 930
    invoke-static/range {v0 .. v5}, Laal;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Leny;->a(Landroid/database/Cursor;)I

    move-result v0

    .line 938
    add-int v2, v9, v0

    .line 939
    if-ne v8, v2, :cond_2

    move v0, v6

    .line 940
    :goto_0
    sget-boolean v1, Leny;->a:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 941
    :cond_0
    invoke-virtual {p0}, Lbfz;->g()Lbfd;

    move-result-object v1

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v3

    if-eqz v0, :cond_3

    .line 942
    const-string v1, ": "

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x45

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "SmsSyncManager A#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "local = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", remote = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 952
    :cond_1
    :goto_2
    return v0

    .line 939
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 942
    :cond_3
    const-string v1, ": NOT IN SYNC, "
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 946
    :catch_0
    move-exception v0

    .line 947
    const-string v1, "Babel_SMS"

    invoke-virtual {p0}, Lbfz;->g()Lbfd;

    move-result-object v2

    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x35

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "SmsSyncManager A#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": failed to query counts "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v6

    .line 952
    goto :goto_2
.end method

.method private static a(Ljava/util/List;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Leof;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1263
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 1264
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 1265
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leof;

    invoke-virtual {v0}, Leof;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 1264
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1267
    :cond_0
    return-object v2
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1356
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    cmp-long v1, p2, v4

    if-lez v1, :cond_0

    .line 1358
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1360
    :cond_0
    cmp-long v1, p4, v4

    if-lez v1, :cond_1

    .line 1361
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1363
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(IJ)V
    .locals 5

    .prologue
    .line 697
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lhbs;->a(III)V

    .line 698
    sget-object v1, Leny;->p:[Leyf;

    monitor-enter v1

    .line 699
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    .line 700
    :try_start_0
    sget-object v0, Leny;->p:[Leyf;

    aget-object v0, v0, p0

    invoke-virtual {v0, p1, p2}, Leyf;->c(J)V

    .line 702
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b(Lbfd;)V
    .locals 4

    .prologue
    .line 844
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Leny;->a(Lbfd;ZJ)V

    .line 845
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 742
    sget-object v1, Leny;->q:Ljava/util/Map;

    monitor-enter v1

    .line 743
    :try_start_0
    sget-object v0, Leny;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 744
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 745
    sget-object v3, Leny;->q:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 746
    if-eqz v0, :cond_0

    .line 747
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leoj;

    .line 748
    invoke-virtual {v0}, Leoj;->a()V

    goto :goto_0

    .line 753
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private c()V
    .locals 19

    .prologue
    .line 1787
    move-object/from16 v0, p0

    iget-object v2, v0, Leny;->w:Lhq;

    invoke-virtual {v2}, Lhq;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1788
    move-object/from16 v0, p0

    iget-object v2, v0, Leny;->w:Lhq;

    invoke-virtual {v2, v3}, Lhq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Leoc;

    .line 1789
    move-object/from16 v0, v17

    iget-boolean v2, v0, Leoc;->k:Z

    if-nez v2, :cond_0

    .line 1793
    move-object/from16 v0, p0

    iget-object v2, v0, Leny;->t:Lbfz;

    move-object/from16 v0, v17

    iget-wide v4, v0, Leoc;->c:J

    const-wide/16 v6, -0x1

    move-object/from16 v0, v17

    iget v8, v0, Leoc;->f:I

    move-object/from16 v0, v17

    iget-object v9, v0, Leoc;->g:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v10, v0, Leoc;->a:Lczb;

    move-object/from16 v0, v17

    iget-object v11, v0, Leoc;->b:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v12, v0, Leoc;->e:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-wide v13, v0, Leoc;->d:J

    move-object/from16 v0, v17

    iget v15, v0, Leoc;->h:I

    const/16 v16, 0x0

    invoke-virtual/range {v2 .. v16}, Lbfz;->a(Ljava/lang/String;JJILjava/lang/String;Lczb;Ljava/lang/String;Ljava/lang/String;JII)Z

    .line 1804
    move-object/from16 v0, p0

    iget-object v2, v0, Leny;->t:Lbfz;

    move-object/from16 v0, v17

    iget-wide v4, v0, Leoc;->c:J

    invoke-virtual {v2, v3, v4, v5}, Lbfz;->j(Ljava/lang/String;J)V

    .line 1806
    move-object/from16 v0, p0

    iget-object v2, v0, Leny;->t:Lbfz;

    move-object/from16 v0, v17

    iget-wide v4, v0, Leoc;->i:J

    const/4 v6, 0x0

    const-string v7, "smssync"

    invoke-virtual/range {v2 .. v7}, Lbfz;->a(Ljava/lang/String;JZLjava/lang/String;)V

    .line 1808
    move-object/from16 v0, p0

    iget-object v2, v0, Leny;->t:Lbfz;

    move-object/from16 v0, v17

    iget-wide v4, v0, Leoc;->j:J

    invoke-virtual {v2, v3, v4, v5}, Lbfz;->n(Ljava/lang/String;J)V

    .line 1809
    const/4 v2, 0x1

    move-object/from16 v0, v17

    iput-boolean v2, v0, Leoc;->k:Z

    goto :goto_0

    .line 1812
    :cond_1
    return-void
.end method

.method public static c(Lbfd;)V
    .locals 4

    .prologue
    .line 853
    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Leny;->a(Lbfd;ZJ)V

    .line 854
    return-void
.end method

.method private static c(IJ)Z
    .locals 3

    .prologue
    .line 706
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lhbs;->a(III)V

    .line 707
    sget-object v1, Leny;->p:[Leyf;

    monitor-enter v1

    .line 708
    :try_start_0
    sget-object v0, Leny;->p:[Leyf;

    aget-object v0, v0, p0

    invoke-virtual {v0, p1, p2}, Leyf;->a(J)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 709
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method b()I
    .locals 20

    .prologue
    .line 962
    sget-boolean v2, Leny;->a:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Leny;->A:Z

    if-eqz v2, :cond_1

    .line 963
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Leny;->s:Lbfd;

    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Leny;->x:J

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v6, 0x3c

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "SmsSyncManager A#"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": sync from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 966
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 967
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 968
    new-instance v14, Leoi;

    invoke-direct {v14}, Leoi;-><init>()V

    .line 969
    sget v9, Leny;->i:I

    .line 971
    const/4 v8, 0x0

    .line 972
    const/4 v7, 0x0

    .line 973
    const/4 v6, 0x0

    .line 974
    const/4 v3, 0x0

    .line 975
    const-wide/16 v4, -0x1

    .line 976
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Leny;->y:Z

    .line 977
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Leny;->z:Z

    .line 978
    const/4 v2, 0x1

    .line 979
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Leny;->h:Z

    if-nez v15, :cond_6

    .line 980
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v4, v5, v14}, Leny;->a(IJLeoi;)Z

    move-result v2

    .line 981
    iget v4, v14, Leoi;->c:I

    add-int/2addr v8, v4

    .line 982
    iget v4, v14, Leoi;->d:I

    add-int/2addr v7, v4

    .line 983
    iget v4, v14, Leoi;->f:I

    add-int/2addr v6, v4

    .line 984
    iget v4, v14, Leoi;->h:I

    add-int/2addr v3, v4

    .line 985
    if-eqz v2, :cond_6

    .line 14276
    iget-wide v4, v14, Leoi;->b:J

    const-wide/16 v16, 0x0

    cmp-long v4, v4, v16

    if-gtz v4, :cond_4

    .line 14277
    sget v9, Leny;->i:I

    .line 990
    :cond_3
    :goto_1
    iget-wide v4, v14, Leoi;->i:J

    const-wide/16 v16, 0x3e8

    div-long v4, v4, v16

    .line 993
    sget-wide v16, Leny;->m:J

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-lez v15, :cond_2

    .line 995
    :try_start_0
    sget-wide v16, Leny;->m:J

    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 998
    :catch_0
    move-exception v15

    goto :goto_0

    .line 14282
    :cond_4
    iget v4, v14, Leoi;->h:I

    iget v5, v14, Leoi;->f:I

    add-int/2addr v4, v5

    int-to-double v4, v4

    iget-wide v0, v14, Leoi;->b:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v4, v4, v16

    sget-wide v16, Leny;->l:J

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v4, v4, v16

    double-to-int v9, v4

    .line 14286
    sget v4, Leny;->j:I

    if-ge v9, v4, :cond_5

    .line 14287
    sget v9, Leny;->j:I

    goto :goto_1

    .line 14289
    :cond_5
    sget v4, Leny;->k:I

    if-le v9, v4, :cond_3

    .line 14290
    sget v9, Leny;->k:I

    goto :goto_1

    .line 1001
    :cond_6
    if-nez v2, :cond_b

    .line 1003
    move-object/from16 v0, p0

    iget-boolean v2, v0, Leny;->y:Z

    if-eqz v2, :cond_7

    .line 1004
    sget-object v2, Leny;->g:Landroid/net/Uri;

    invoke-static {v2}, Lenn;->d(Landroid/net/Uri;)V

    .line 1006
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Leny;->z:Z

    if-eqz v2, :cond_8

    .line 1007
    sget-object v2, Leny;->f:Landroid/net/Uri;

    invoke-static {v2}, Lenn;->d(Landroid/net/Uri;)V

    .line 1009
    :cond_8
    sget-boolean v2, Leny;->a:Z

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Leny;->A:Z

    if-eqz v2, :cond_a

    .line 1010
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Leny;->s:Lbfd;

    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    .line 1011
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v12

    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v12, 0xa8

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "SmsSyncManager A#"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ": sync done in "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " millis, scanned "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " local msgs, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " remote msgs, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " added, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " deleted."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15036
    :cond_a
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 1018
    const-class v4, Lhpz;

    invoke-static {v2, v4}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhpz;

    move-object/from16 v0, p0

    iget-object v4, v0, Leny;->s:Lbfd;

    .line 1019
    invoke-virtual {v4}, Lbfd;->g()I

    move-result v4

    invoke-interface {v2, v4}, Lhpz;->b(I)Lhqc;

    move-result-object v2

    const-string v4, "sms_last_sync_time_millis"

    .line 1020
    invoke-virtual {v2, v4, v10, v11}, Lhqc;->b(Ljava/lang/String;J)Lhqc;

    move-result-object v2

    .line 1021
    invoke-virtual {v2}, Lhqc;->d()I

    .line 1022
    add-int v2, v6, v3

    .line 1027
    :goto_2
    return v2

    .line 1024
    :cond_b
    sget-boolean v2, Leny;->a:Z

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Leny;->A:Z

    if-eqz v2, :cond_d

    .line 1025
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Leny;->s:Lbfd;

    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2a

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "SmsSyncManager A#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": sync aborted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    :cond_d
    const/4 v2, -0x1

    goto :goto_2
.end method
