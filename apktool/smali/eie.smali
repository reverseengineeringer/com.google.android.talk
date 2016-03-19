.class public final Leie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leir;


# static fields
.field static final a:Z

.field static b:Leie;

.field static final h:Ljava/lang/Object;

.field private static final k:Lezv;

.field private static x:Ljava/lang/Runnable;


# instance fields
.field c:Z

.field final d:Lfic;

.field public final e:Landroid/os/Handler;

.field final f:Ljava/lang/Object;

.field g:Ljava/lang/String;

.field public final i:Ljava/lang/Runnable;

.field j:Lglt;

.field private l:I

.field private m:Z

.field private final n:Landroid/os/ConditionVariable;

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La;",
            ">;"
        }
    .end annotation
.end field

.field private p:Leil;

.field private q:Lfkg;

.field private r:Lgpx;

.field private s:Lhq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhq",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private t:Lhq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhq",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private u:Z

.field private v:J

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    const-string v0, "BabelPeopleCache"

    invoke-static {v0}, Lezv;->a(Ljava/lang/String;)Lezv;

    move-result-object v0

    sput-object v0, Leie;->k:Lezv;

    .line 134
    sget-object v0, Lezi;->q:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Leie;->a:Z

    .line 266
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Leie;->h:Ljava/lang/Object;

    .line 272
    new-instance v0, Leih;

    invoke-direct {v0}, Leih;-><init>()V

    sput-object v0, Leie;->x:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Leie;->n:Landroid/os/ConditionVariable;

    .line 156
    new-instance v0, Lfid;

    .line 1036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 156
    invoke-direct {v0, v1}, Lfid;-><init>(Landroid/content/Context;)V

    .line 157
    sget-object v1, Lglu;->c:Lfhw;

    new-instance v2, Lglx;

    invoke-direct {v2}, Lglx;-><init>()V

    const/16 v3, 0x75

    .line 158
    invoke-virtual {v2, v3}, Lglx;->a(I)Lglx;

    move-result-object v2

    invoke-virtual {v2}, Lglx;->a()Lglw;

    move-result-object v2

    .line 157
    invoke-virtual {v0, v1, v2}, Lfid;->a(Lfhw;Lfhy;)Lfid;

    .line 160
    new-instance v1, Leif;

    invoke-direct {v1, p0}, Leif;-><init>(Leie;)V

    invoke-virtual {v0, v1}, Lfid;->a(Lfif;)Lfid;

    .line 184
    new-instance v1, Leig;

    invoke-direct {v1, p0}, Leig;-><init>(Leie;)V

    invoke-virtual {v0, v1}, Lfid;->a(Lfih;)Lfid;

    .line 193
    invoke-virtual {v0}, Lfid;->b()Lfic;

    move-result-object v0

    iput-object v0, p0, Leie;->d:Lfic;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leie;->o:Ljava/util/List;

    .line 210
    new-instance v0, Lhq;

    invoke-direct {v0}, Lhq;-><init>()V

    iput-object v0, p0, Leie;->s:Lhq;

    .line 243
    new-instance v0, Lhq;

    invoke-direct {v0}, Lhq;-><init>()V

    iput-object v0, p0, Leie;->t:Lhq;

    .line 246
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Leie;->e:Landroid/os/Handler;

    .line 249
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Leie;->f:Ljava/lang/Object;

    .line 253
    iput-boolean v4, p0, Leie;->u:Z

    .line 255
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Leie;->v:J

    .line 260
    iput-boolean v4, p0, Leie;->w:Z

    .line 263
    const-string v0, "N/A"

    iput-object v0, p0, Leie;->g:Ljava/lang/String;

    .line 349
    new-instance v0, Leii;

    invoke-direct {v0, p0}, Leii;-><init>(Leie;)V

    iput-object v0, p0, Leie;->i:Ljava/lang/Runnable;

    .line 939
    new-instance v0, Lglt;

    invoke-direct {v0, p0}, Lglt;-><init>(Leie;)V

    iput-object v0, p0, Leie;->j:Lglt;

    .line 309
    return-void
.end method

.method public static a()Leie;
    .locals 3

    .prologue
    .line 289
    sget-object v1, Leie;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 292
    :try_start_0
    sget-object v0, Leie;->b:Leie;

    if-eqz v0, :cond_0

    sget-object v0, Leie;->b:Leie;

    iget-object v0, v0, Leie;->f:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid lock ordering"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 296
    :cond_0
    :try_start_1
    sget-object v0, Leie;->b:Leie;

    if-nez v0, :cond_1

    .line 297
    new-instance v0, Leie;

    invoke-direct {v0}, Leie;-><init>()V

    sput-object v0, Leie;->b:Leie;

    .line 300
    :cond_1
    sget-object v0, Leie;->b:Leie;

    invoke-direct {v0}, Leie;->h()V

    .line 301
    sget-object v0, Leie;->b:Leie;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 341
    invoke-static {}, Leie;->a()Leie;

    move-result-object v0

    .line 343
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Leie;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    invoke-virtual {v0}, Leie;->c()V

    .line 346
    return-void

    .line 345
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Leie;->c()V

    throw v1
.end method

.method private d(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lgpr;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 817
    if-nez p1, :cond_0

    move-object v0, v2

    .line 861
    :goto_0
    return-object v0

    .line 4804
    :cond_0
    invoke-static {p1}, Lezm;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 822
    iget-object v0, p0, Leie;->t:Lhq;

    invoke-virtual {v0, v4}, Lhq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 823
    if-eqz v0, :cond_4

    .line 824
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 832
    iget-object v1, p0, Leie;->q:Lfkg;

    .line 5043
    const/4 v6, 0x0

    invoke-static {v0, v6}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 832
    invoke-virtual {v1, v0}, Lfkg;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgpr;

    .line 834
    invoke-interface {v0}, Lgpr;->d()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgpy;

    .line 835
    invoke-interface {v1}, Lgpy;->b()Ljava/lang/String;

    move-result-object v7

    .line 5804
    invoke-static {v7}, Lezm;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 835
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 845
    invoke-interface {v1}, Lgpy;->b()Ljava/lang/String;

    move-result-object v1

    .line 844
    invoke-static {p1, v1}, Lezm;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 847
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 856
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    move-object v0, v3

    .line 857
    goto :goto_0

    :cond_4
    move-object v0, v2

    .line 861
    goto :goto_0
.end method

.method public static g()J
    .locals 4

    .prologue
    .line 6036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 927
    const-string v1, "babel_gms_people_cache_notification_lag"

    const-wide/16 v2, 0x61a8

    invoke-static {v0, v1, v2, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private h()V
    .locals 7

    .prologue
    .line 370
    iget-object v1, p0, Leie;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 371
    :try_start_0
    iget v0, p0, Leie;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Leie;->l:I

    .line 372
    sget-boolean v0, Leie;->a:Z

    if-eqz v0, :cond_0

    .line 373
    const-string v0, "GmsPeopleCache: addRef  ref:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Leie;->l:I

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 379
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xc

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    :cond_0
    iget v0, p0, Leie;->l:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 383
    iget-object v0, p0, Leie;->e:Landroid/os/Handler;

    sget-object v2, Leie;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 386
    :cond_1
    iget-object v0, p0, Leie;->d:Lfic;

    invoke-interface {v0}, Lfic;->e()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Leie;->d:Lfic;

    invoke-interface {v0}, Lfic;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 387
    iget-object v0, p0, Leie;->d:Lfic;

    invoke-interface {v0}, Lfic;->b()V

    .line 389
    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 907
    sget-object v0, Leie;->k:Lezv;

    const-string v1, "waitForReady"

    invoke-virtual {v0, v1}, Lezv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 910
    iget-object v1, p0, Leie;->f:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 911
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid lock ordering"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 915
    :cond_0
    iget-object v1, p0, Leie;->n:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 916
    sget-object v1, Leie;->k:Lezv;

    invoke-virtual {v1, v0}, Lezv;->c(Ljava/lang/String;)V

    .line 917
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lbzq;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 788
    invoke-direct {p0}, Leie;->i()V

    .line 789
    iget-object v3, p0, Leie;->f:Ljava/lang/Object;

    monitor-enter v3

    .line 3773
    :try_start_0
    iget-object v0, p0, Leie;->s:Lhq;

    invoke-virtual {v0, p1}, Lhq;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3774
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3775
    iget-object v0, p0, Leie;->s:Lhq;

    invoke-virtual {v0, p1}, Lhq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3776
    iget-object v5, p0, Leie;->q:Lfkg;

    .line 4043
    const/4 v6, 0x0

    invoke-static {v0, v6}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 3776
    invoke-virtual {v5, v0}, Lfkg;->a(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 796
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    move-object v0, v2

    .line 791
    :goto_1
    if-nez v0, :cond_2

    .line 792
    :try_start_1
    monitor-exit v3

    move-object v0, v1

    .line 795
    :goto_2
    return-object v0

    :cond_1
    move-object v0, v1

    .line 3781
    goto :goto_1

    .line 795
    :cond_2
    invoke-static {v0}, Lbzq;->a(Ljava/util/List;)Lbzq;

    move-result-object v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public a(Leim;Lfkg;Lgpx;)V
    .locals 6

    .prologue
    .line 498
    iget-object v1, p0, Leie;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 502
    :try_start_0
    sget-boolean v0, Leie;->a:Z

    if-eqz v0, :cond_0

    .line 505
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Leie;->v:J

    sub-long/2addr v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x35

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "GmsPeopleCache: onPeopleReady "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    :cond_0
    new-instance v0, Leij;

    invoke-direct {v0, p0, p2, p3}, Leij;-><init>(Leie;Lfkg;Lgpx;)V

    invoke-static {v0}, Lhbw;->a(Ljava/lang/Runnable;)V

    .line 524
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Lfkg;Lgpx;)V
    .locals 18

    .prologue
    .line 530
    sget-object v2, Leie;->k:Lezv;

    const-string v3, "buildCache"

    invoke-virtual {v2, v3}, Lezv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 537
    new-instance v9, Lhq;

    invoke-direct {v9}, Lhq;-><init>()V

    .line 538
    new-instance v10, Lhq;

    invoke-direct {v10}, Lhq;-><init>()V

    .line 540
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 549
    :try_start_0
    const-string v2, "md5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 556
    if-eqz p1, :cond_1

    .line 2036
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 1934
    const-string v3, "babel_gms_people_cache_maximum_contacts_size"

    const/16 v4, 0x7d0

    .line 1933
    invoke-static {v2, v3, v4}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12

    .line 558
    const/4 v2, 0x0

    move v5, v2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lfkg;->a()I

    move-result v2

    if-ge v5, v2, :cond_0

    .line 559
    if-lt v5, v12, :cond_5

    .line 563
    invoke-virtual/range {p1 .. p1}, Lfkg;->a()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x3f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Maximum contacts reached. Total "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; max is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 624
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 625
    sget-boolean v4, Leie;->a:Z

    if-eqz v4, :cond_1

    .line 626
    const-string v4, "GmsPeopleCache: End building cache. Total: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sub-long/2addr v2, v6

    .line 628
    invoke-virtual/range {p1 .. p1}, Lfkg;->a()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x2d

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contacts."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Leie;->f:Ljava/lang/Object;

    monitor-enter v12

    .line 633
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Leie;->q:Lfkg;

    .line 634
    move-object/from16 v0, p0

    iget-object v7, v0, Leie;->r:Lgpx;

    .line 635
    new-instance v2, Leil;

    move-object/from16 v0, p0

    iget-object v3, v0, Leie;->o:Ljava/util/List;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Leil;-><init>(Ljava/util/List;Lfkg;Lgpx;Lfkg;Lgpx;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Leie;->p:Leil;

    .line 639
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Leie;->q:Lfkg;

    .line 640
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Leie;->r:Lgpx;

    .line 641
    move-object/from16 v0, p0

    iput-object v10, v0, Leie;->t:Lhq;

    .line 642
    move-object/from16 v0, p0

    iput-object v9, v0, Leie;->s:Lhq;

    .line 3036
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 647
    invoke-static {v2}, Lbfz;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 648
    invoke-virtual {v11}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Laal;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Leie;->g:Ljava/lang/String;

    .line 651
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Leie;->u:Z

    .line 654
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Leie;->m:Z

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Leie;->n:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->open()V

    .line 660
    new-instance v2, Leik;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Leik;-><init>(Leie;)V

    invoke-static {v2}, Lhbw;->a(Ljava/lang/Runnable;)V

    .line 668
    move-object/from16 v0, p0

    iget-boolean v2, v0, Leie;->w:Z

    if-eqz v2, :cond_2

    .line 669
    const-string v2, "BabelPeopleCache"

    const-string v3, "GmsPeopleCache: Triggering queued refresh."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 671
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Leie;->w:Z

    .line 672
    invoke-virtual/range {p0 .. p0}, Leie;->e()V

    .line 3737
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Leie;->f:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3738
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3739
    move-object/from16 v0, p0

    iget-object v2, v0, Leie;->q:Lfkg;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Leie;->q:Lfkg;

    invoke-virtual {v2}, Lfkg;->a()I

    move-result v2

    if-lez v2, :cond_3

    .line 3740
    move-object/from16 v0, p0

    iget-object v2, v0, Leie;->q:Lfkg;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lfkg;->a(I)Ljava/lang/Object;

    .line 3742
    :cond_3
    sget-boolean v2, Leie;->a:Z

    if-eqz v2, :cond_4

    .line 3745
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v6, 0x3b

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "GmsPeopleCache: prefetchFirstPerson "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3748
    :cond_4
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 678
    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 682
    move-object/from16 v0, p0

    iget-object v2, v0, Leie;->e:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Leie;->p:Leil;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 683
    sget-object v2, Leie;->k:Lezv;

    invoke-virtual {v2, v8}, Lezv;->c(Ljava/lang/String;)V

    .line 684
    return-void

    .line 551
    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "md5 not available"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 568
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lfkg;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgpr;

    .line 570
    invoke-interface {v2}, Lgpr;->e()Ljava/lang/String;

    move-result-object v4

    .line 571
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 572
    sget-boolean v3, Leie;->a:Z

    if-eqz v3, :cond_6

    .line 574
    invoke-interface {v2}, Lgpr;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x32

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v14, "GmsPeopleCache: adding entry from gaia:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " to person:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    :cond_6
    invoke-virtual {v9, v4}, Lhq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 578
    if-nez v3, :cond_c

    .line 579
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 580
    invoke-virtual {v9, v4, v3}, Lhq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    :cond_7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    :cond_8
    invoke-interface {v2}, Lgpr;->d()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgpy;

    .line 599
    invoke-interface {v3}, Lgpy;->b()Ljava/lang/String;

    move-result-object v13

    .line 2804
    invoke-static {v13}, Lezm;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 601
    sget-boolean v14, Leie;->a:Z

    if-eqz v14, :cond_a

    .line 603
    invoke-interface {v3}, Lgpy;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 604
    invoke-interface {v2}, Lgpr;->a()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, 0x39

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v16, v16, v17

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v16, v16, v17

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v16, "GmsPeopleCache: adding entry from phone:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, " to person:"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, " key: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    :cond_a
    invoke-virtual {v10, v13}, Lhq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 609
    if-nez v3, :cond_b

    .line 610
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 611
    invoke-virtual {v10, v13, v3}, Lhq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    :cond_b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 615
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 582
    :cond_c
    sget-boolean v13, Leie;->a:Z

    if-eqz v13, :cond_7

    .line 583
    const-string v13, "BabelPeopleCache"

    const/4 v14, 0x3

    invoke-static {v13, v14}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 584
    const-string v13, "BabelPeopleCache"

    .line 585
    invoke-interface {v2}, Lgpr;->a()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, 0x35

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v16, v16, v17

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v16, "GmsPeopleCache_Error: duplicate entry for gaia:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, " name:"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    .line 584
    invoke-static {v13, v4, v14}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 586
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 2043
    const/4 v14, 0x0

    invoke-static {v4, v14}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v4

    .line 587
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lfkg;->a(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgpr;

    .line 589
    const-string v14, "BabelPeopleCache"

    const-string v15, "GmsPeopleCache_Error: dup person name:"

    .line 590
    invoke-interface {v4}, Lgpr;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_d

    invoke-virtual {v15, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_3
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    .line 589
    invoke-static {v14, v4, v15}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 590
    :cond_d
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 620
    :cond_e
    check-cast v2, Leji;

    .line 621
    invoke-virtual {v2, v11}, Leji;->a(Ljava/security/MessageDigest;)V

    .line 558
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_0

    .line 3748
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2

    .line 678
    :catchall_1
    move-exception v2

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2
.end method

.method a(Z)V
    .locals 5

    .prologue
    .line 316
    sget-object v0, Leie;->k:Lezv;

    const-string v1, "refreshInternal"

    invoke-virtual {v0, v1}, Lezv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    iget-object v1, p0, Leie;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 318
    :try_start_0
    iget-boolean v2, p0, Leie;->u:Z

    if-eqz v2, :cond_0

    .line 320
    const-string v2, "BabelPeopleCache"

    const-string v3, "GmsPeopleCache: Load in progress. Queueing up refresh"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    const/4 v2, 0x1

    iput-boolean v2, p0, Leie;->w:Z

    .line 329
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    sget-object v1, Leie;->k:Lezv;

    invoke-virtual {v1, v0}, Lezv;->c(Ljava/lang/String;)V

    .line 331
    return-void

    .line 326
    :cond_0
    :try_start_1
    const-string v2, "BabelPeopleCache"

    const-string v3, "GmsPeopleCache: Refresh requested. Performing now"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    invoke-virtual {p0}, Leie;->e()V

    goto :goto_0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lgpr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 868
    invoke-direct {p0}, Leie;->i()V

    .line 869
    iget-object v1, p0, Leie;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 870
    :try_start_0
    invoke-direct {p0, p1}, Leie;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 871
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Ljava/lang/String;)Lgpr;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 878
    invoke-direct {p0}, Leie;->i()V

    .line 879
    iget-object v3, p0, Leie;->f:Ljava/lang/Object;

    monitor-enter v3

    .line 880
    :try_start_0
    invoke-direct {p0, p1}, Leie;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 882
    if-eqz v0, :cond_4

    .line 884
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 885
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgpr;

    monitor-exit v3

    .line 902
    :goto_0
    return-object v0

    .line 890
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgpr;

    .line 891
    invoke-interface {v0}, Lgpr;->e()Ljava/lang/String;

    move-result-object v5

    .line 892
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 893
    if-eqz v1, :cond_2

    .line 895
    monitor-exit v3

    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    move-object v1, v0

    .line 899
    goto :goto_1

    .line 900
    :cond_3
    monitor-exit v3

    move-object v0, v1

    goto :goto_0

    .line 902
    :cond_4
    monitor-exit v3

    move-object v0, v2

    goto :goto_0

    .line 903
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 6

    .prologue
    .line 397
    iget-object v1, p0, Leie;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 398
    :try_start_0
    iget v0, p0, Leie;->l:I

    if-gtz v0, :cond_0

    .line 401
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "number of clients should be bigger than 0"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 404
    :cond_0
    :try_start_1
    iget v0, p0, Leie;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Leie;->l:I

    .line 406
    sget-boolean v0, Leie;->a:Z

    if-eqz v0, :cond_1

    .line 407
    const-string v0, "GmsPeopleCache: releaseRef  ref:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Leie;->l:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xb

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 411
    :cond_1
    iget v0, p0, Leie;->l:I

    if-nez v0, :cond_2

    .line 417
    iget-object v0, p0, Leie;->e:Landroid/os/Handler;

    sget-object v2, Leie;->x:Ljava/lang/Runnable;

    const-wide/32 v4, 0xea60

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 419
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method d()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 426
    iget-object v1, p0, Leie;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 427
    :try_start_0
    iget v2, p0, Leie;->l:I

    if-eqz v2, :cond_0

    .line 431
    const/4 v0, 0x0

    monitor-exit v1

    .line 462
    :goto_0
    return v0

    .line 433
    :cond_0
    iget-object v2, p0, Leie;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    .line 1134
    const-string v3, "Expected condition to be true"

    invoke-static {v3, v2}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 436
    iget-object v2, p0, Leie;->d:Lfic;

    invoke-interface {v2}, Lfic;->e()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Leie;->d:Lfic;

    invoke-interface {v2}, Lfic;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 437
    :cond_1
    iget-object v2, p0, Leie;->d:Lfic;

    invoke-interface {v2}, Lfic;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 438
    sget-object v2, Lglu;->m:Lgls;

    iget-object v3, p0, Leie;->d:Lfic;

    iget-object v4, p0, Leie;->j:Lglt;

    invoke-virtual {v2, v3, v4}, Lgls;->a(Lfic;Lglt;)Lfij;

    .line 440
    :cond_2
    iget-object v2, p0, Leie;->d:Lfic;

    invoke-interface {v2}, Lfic;->d()V

    .line 443
    :cond_3
    iget-object v2, p0, Leie;->q:Lfkg;

    if-eqz v2, :cond_4

    .line 444
    iget-object v2, p0, Leie;->q:Lfkg;

    invoke-virtual {v2}, Lfkg;->b()V

    .line 445
    const/4 v2, 0x0

    iput-object v2, p0, Leie;->q:Lfkg;

    .line 448
    :cond_4
    iget-object v2, p0, Leie;->r:Lgpx;

    if-eqz v2, :cond_5

    .line 449
    iget-object v2, p0, Leie;->r:Lgpx;

    invoke-virtual {v2}, Lfkg;->b()V

    .line 450
    const/4 v2, 0x0

    iput-object v2, p0, Leie;->r:Lgpx;

    .line 455
    :cond_5
    iget-object v2, p0, Leie;->e:Landroid/os/Handler;

    iget-object v3, p0, Leie;->i:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 457
    iget-object v2, p0, Leie;->t:Lhq;

    invoke-virtual {v2}, Lhq;->clear()V

    .line 458
    iget-object v2, p0, Leie;->s:Lhq;

    invoke-virtual {v2}, Lhq;->clear()V

    .line 460
    const/4 v2, 0x1

    iput-boolean v2, p0, Leie;->c:Z

    .line 462
    monitor-exit v1

    goto :goto_0

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method e()V
    .locals 5

    .prologue
    .line 467
    sget-object v0, Leie;->k:Lezv;

    const-string v1, "load"

    invoke-virtual {v0, v1}, Lezv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    iget-object v1, p0, Leie;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 470
    :try_start_0
    invoke-direct {p0}, Leie;->h()V

    .line 473
    iget-object v2, p0, Leie;->d:Lfic;

    invoke-interface {v2}, Lfic;->e()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Leie;->d:Lfic;

    invoke-interface {v2}, Lfic;->f()Z

    move-result v2

    if-nez v2, :cond_0

    .line 475
    const-string v0, "BabelPeopleCache"

    const-string v2, "GmsPeopleCache: disconnected in load(). Reconnecting"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    iget-object v0, p0, Leie;->d:Lfic;

    invoke-interface {v0}, Lfic;->b()V

    .line 477
    monitor-exit v1

    .line 488
    :goto_0
    return-void

    .line 480
    :cond_0
    const-string v2, "BabelPeopleCache"

    const-string v3, "GmsPeopleCache: PeopleLoader load() begins"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    const/4 v2, 0x1

    iput-boolean v2, p0, Leie;->u:Z

    .line 482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Leie;->v:J

    .line 484
    new-instance v2, Leim;

    iget-object v3, p0, Leie;->d:Lfic;

    invoke-direct {v2, v3, p0}, Leim;-><init>(Lfic;Leir;)V

    .line 485
    invoke-virtual {v2}, Leim;->b()V

    .line 486
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    sget-object v1, Leie;->k:Lezv;

    invoke-virtual {v1, v0}, Lezv;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 486
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 755
    iget-object v1, p0, Leie;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 756
    :try_start_0
    iget-boolean v0, p0, Leie;->m:Z

    monitor-exit v1

    return v0

    .line 757
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
