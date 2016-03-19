.class public final Lehd;
.super Leht;
.source "SourceFile"


# static fields
.field public static final a:Z

.field public static final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lehd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final b:Lbfd;

.field private d:Lbfz;

.field private final f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lezi;->q:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lehd;->a:Z

    .line 104
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lehd;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Lbfd;)V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Leht;-><init>()V

    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lehd;->f:Ljava/lang/Object;

    .line 149
    iput-object p1, p0, Lehd;->b:Lbfd;

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lehd;->d:Lbfz;

    .line 151
    return-void
.end method

.method public static a(Lczb;Lbfd;Lehg;)Lbet;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 444
    invoke-static {p0}, Laal;->a(Lczb;)Ldtt;

    move-result-object v2

    .line 445
    invoke-virtual {v2}, Ldtt;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 446
    const-string v1, "Babel"

    const-string v2, "lookup spec for participantId invalid"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 453
    :cond_0
    :goto_0
    return-object v0

    .line 449
    :cond_1
    new-instance v1, Lbet;

    invoke-direct {v1, v2, p2}, Lbet;-><init>(Ldtt;Lehg;)V

    .line 450
    invoke-static {p1}, Lehd;->a(Lbfd;)Lehd;

    move-result-object v2

    invoke-virtual {v2, v1}, Lehd;->a(Lehx;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 453
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ZLbfd;Lehh;)Lbet;
    .locals 2

    .prologue
    .line 2198
    const-string v0, "Expected non-null"

    invoke-static {v0, p3}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    new-instance v0, Lbip;

    invoke-direct {v0, p0, p1, p3}, Lbip;-><init>(Ljava/lang/String;ZLehh;)V

    .line 468
    invoke-static {p2}, Lehd;->a(Lbfd;)Lehd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lehd;->a(Lehx;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    const/4 v0, 0x0

    .line 471
    :cond_0
    return-object v0
.end method

.method public static a(Lbfd;)Lehd;
    .locals 4

    .prologue
    .line 112
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v1

    .line 113
    const-string v2, "Invalid account ID specified"

    const/4 v0, -0x1

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lhbs;->b(Ljava/lang/String;Z)V

    .line 114
    sget-object v0, Lehd;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lehd;

    .line 116
    if-nez v0, :cond_1

    .line 117
    sget-boolean v0, Lehd;->a:Z

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Adding contact loader for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    :cond_0
    new-instance v0, Lehd;

    invoke-direct {v0, p0}, Lehd;-><init>(Lbfd;)V

    .line 126
    sget-object v2, Lehd;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lehd;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lehd;

    .line 130
    :cond_1
    return-object v0

    .line 113
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lbfd;Ldrb;)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 222
    invoke-static {p0}, Lehd;->a(Lbfd;)Lehd;

    move-result-object v4

    .line 1227
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1228
    invoke-virtual {p1}, Ldrb;->l()Ljava/lang/String;

    move-result-object v3

    .line 1229
    if-eqz v3, :cond_0

    .line 1231
    invoke-virtual {v4, v3}, Lehd;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1232
    sget-boolean v6, Lehd;->a:Z

    if-eqz v6, :cond_0

    .line 1233
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Clearing %d request from queue: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    if-nez v0, :cond_3

    move v0, v1

    .line 1234
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v1

    aput-object v3, v8, v2

    .line 1233
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1239
    :cond_0
    if-nez v3, :cond_4

    invoke-virtual {p1}, Ldrb;->n()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1240
    :goto_1
    invoke-direct {v4}, Lehd;->d()V

    .line 1241
    iget-object v0, v4, Lehd;->d:Lbfz;

    invoke-virtual {v0}, Lbfz;->a()V

    .line 1244
    :try_start_0
    invoke-virtual {p1}, Ldrb;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyu;

    .line 1246
    const/4 v3, 0x0

    .line 1247
    iget-object v1, v0, Leyu;->b:Ljava/io/Serializable;

    if-eqz v1, :cond_8

    iget-object v1, v0, Leyu;->b:Ljava/io/Serializable;

    check-cast v1, [Lcyx;

    array-length v1, v1

    if-lez v1, :cond_8

    .line 1248
    iget-object v1, v0, Leyu;->b:Ljava/io/Serializable;

    check-cast v1, [Lcyx;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    .line 1250
    :goto_3
    if-eqz v1, :cond_5

    .line 1251
    iget-object v3, v4, Lehd;->d:Lbfz;

    const/4 v7, 0x1

    invoke-virtual {v3, v1, v7}, Lbfz;->a(Lcyx;Z)Z

    move-result v3

    .line 1252
    if-eqz v3, :cond_2

    .line 1253
    iget-object v3, v1, Lcyx;->b:Lczb;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1255
    :cond_2
    if-eqz v2, :cond_1

    .line 1256
    iget-object v0, v0, Leyu;->a:Ljava/io/Serializable;

    check-cast v0, Ldtt;

    invoke-direct {v4, v0, v1}, Lehd;->a(Ldtt;Lcyx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1265
    :catchall_0
    move-exception v0

    iget-object v1, v4, Lehd;->d:Lbfz;

    invoke-virtual {v1}, Lbfz;->c()V

    throw v0

    .line 1234
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_4
    move v2, v1

    .line 1239
    goto :goto_1

    .line 1258
    :cond_5
    if-eqz v2, :cond_1

    .line 1260
    :try_start_1
    iget-object v0, v0, Leyu;->a:Ljava/io/Serializable;

    check-cast v0, Ldtt;

    invoke-virtual {v4, v0}, Lehd;->a(Ldtt;)V

    goto :goto_2

    .line 1263
    :cond_6
    iget-object v0, v4, Lehd;->d:Lbfz;

    invoke-virtual {v0}, Lbfz;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1265
    iget-object v0, v4, Lehd;->d:Lbfz;

    invoke-virtual {v0}, Lbfz;->c()V

    .line 1269
    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1270
    iget-object v0, v4, Lehd;->d:Lbfz;

    invoke-virtual {v0, v5}, Lbfz;->a(Ljava/util/HashSet;)V

    .line 1271
    iget-object v0, v4, Lehd;->d:Lbfz;

    invoke-static {v0}, Lbft;->b(Lbfz;)V

    .line 1272
    iget-object v0, v4, Lehd;->d:Lbfz;

    invoke-static {v0}, Lbft;->d(Lbfz;)V

    .line 223
    :cond_7
    return-void

    :cond_8
    move-object v1, v3

    goto :goto_3
.end method

.method public static a(Lczb;Lbfd;)V
    .locals 4

    .prologue
    .line 481
    invoke-static {p0}, Laal;->a(Lczb;)Ldtt;

    move-result-object v0

    .line 482
    invoke-virtual {v0}, Ldtt;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 483
    const-string v0, "Babel"

    const-string v1, "participantId not valid for DB lookup"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 492
    :goto_0
    return-void

    .line 486
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 487
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    invoke-virtual {v0}, Ldtt;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    new-instance v2, Lbep;

    invoke-direct {v2, v1, v0}, Lbep;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 491
    invoke-static {p1}, Lehd;->a(Lbfd;)Lehd;

    move-result-object v0

    invoke-virtual {v0, v2}, Lehd;->c(Lehx;)V

    goto :goto_0
.end method

.method private a(Ldtt;Lcyx;)V
    .locals 3

    .prologue
    .line 282
    sget-boolean v0, Lehd;->a:Z

    if-eqz v0, :cond_0

    .line 283
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Contact info ready: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_0
    invoke-virtual {p1}, Ldtt;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lehd;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 296
    :goto_0
    return-void

    .line 290
    :cond_1
    new-instance v0, Lehe;

    invoke-direct {v0, p0, p1, p2}, Lehe;-><init>(Lehd;Ldtt;Lcyx;)V

    invoke-virtual {p0, v0}, Lehd;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lbfd;)V
    .locals 2

    .prologue
    .line 501
    new-instance v0, Lbfa;

    invoke-direct {v0, p0, p1}, Lbfa;-><init>(Ljava/lang/String;Lbfd;)V

    .line 503
    invoke-static {p1}, Lehd;->a(Lbfd;)Lehd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lehd;->c(Lehx;)V

    .line 504
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 161
    iget-object v1, p0, Lehd;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    :try_start_0
    iget-object v0, p0, Lehd;->d:Lbfz;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lbfz;

    .line 1036
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 163
    iget-object v3, p0, Lehd;->b:Lbfd;

    invoke-virtual {v3}, Lbfd;->g()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lbfz;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lehd;->d:Lbfz;

    .line 165
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


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string v0, "ContactLoader"

    return-object v0
.end method

.method public a(Ldtt;)V
    .locals 4

    .prologue
    .line 303
    const-string v0, "Babel"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    const-string v0, "Babel"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Contact info failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    :cond_0
    invoke-virtual {p1}, Ldtt;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lehd;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 317
    :goto_0
    return-void

    .line 311
    :cond_1
    new-instance v0, Lehf;

    invoke-direct {v0, p0, p1}, Lehf;-><init>(Lehd;Ldtt;)V

    invoke-virtual {p0, v0}, Lehd;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected a(Ljava/util/ArrayList;)V
    .locals 10
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
    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 1329
    invoke-direct {p0}, Lehd;->d()V

    .line 1330
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1331
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1334
    invoke-virtual {p0, v0}, Lehd;->c(Ljava/lang/String;)Lehx;

    move-result-object v1

    .line 1335
    if-nez v1, :cond_2

    .line 1336
    sget-boolean v1, Lehd;->a:Z

    if-eqz v1, :cond_0

    .line 1337
    const-string v1, "No Contact Requests for key: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1342
    :cond_2
    instance-of v0, v1, Lbip;

    if-eqz v0, :cond_5

    .line 1344
    invoke-static {}, Lhbs;->b()V

    move-object v0, v1

    .line 1345
    check-cast v0, Lbip;

    .line 1421
    invoke-static {}, Lhbs;->b()V

    .line 1422
    invoke-static {}, Leie;->a()Leie;

    move-result-object v5

    .line 1425
    :try_start_0
    invoke-virtual {v0}, Lbip;->e()Ljava/lang/String;

    move-result-object v1

    .line 1424
    invoke-static {v1, v5}, Lbfz;->a(Ljava/lang/String;Leie;)Lbzq;

    move-result-object v6

    .line 2036
    sget-object v7, Laal;->oJ:Landroid/content/Context;

    .line 1428
    invoke-virtual {v0}, Lbip;->e()Ljava/lang/String;

    move-result-object v8

    if-nez v6, :cond_3

    .line 1429
    const-string v1, ""

    move-object v3, v1

    :goto_1
    if-nez v6, :cond_4

    move-object v1, v2

    .line 1427
    :goto_2
    invoke-static {v7, v8, v3, v1}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcyx;

    move-result-object v1

    .line 1431
    invoke-virtual {v0}, Lbip;->d()Ldtt;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lehd;->a(Ldtt;Lcyx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1433
    invoke-virtual {v5}, Leie;->c()V

    goto :goto_0

    .line 1429
    :cond_3
    :try_start_1
    invoke-virtual {v6}, Lbzq;->c()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_1

    .line 1430
    :cond_4
    invoke-virtual {v6}, Lbzq;->d()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_2

    .line 1433
    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Leie;->c()V

    throw v0

    .line 1346
    :cond_5
    instance-of v0, v1, Lbfa;

    if-eqz v0, :cond_6

    .line 1347
    check-cast v1, Lbfa;

    .line 1348
    iget-object v0, p0, Lehd;->d:Lbfz;

    invoke-virtual {v1}, Lbfa;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbfz;->F(Ljava/lang/String;)Lcyx;

    goto/16 :goto_0

    .line 1350
    :cond_6
    instance-of v0, v1, Lbep;

    if-eqz v0, :cond_b

    .line 1351
    check-cast v1, Lbep;

    .line 1354
    iget-object v0, p0, Lehd;->d:Lbfz;

    invoke-virtual {v0}, Lbfz;->a()V

    .line 1356
    :try_start_2
    invoke-virtual {v1}, Lbep;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldtt;

    .line 1357
    iget-object v6, p0, Lehd;->d:Lbfz;

    invoke-virtual {v6, v0}, Lbfz;->a(Ldtt;)Lcyx;

    move-result-object v6

    .line 1358
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcyx;->j()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    .line 1361
    invoke-direct {p0, v0, v6}, Lehd;->a(Ldtt;Lcyx;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 1373
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lehd;->d:Lbfz;

    invoke-virtual {v1}, Lbfz;->c()V

    throw v0

    .line 1362
    :cond_7
    :try_start_3
    invoke-virtual {v0}, Ldtt;->a()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1365
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1368
    :cond_8
    invoke-virtual {p0, v0}, Lehd;->a(Ldtt;)V

    goto :goto_3

    .line 1371
    :cond_9
    iget-object v0, p0, Lehd;->d:Lbfz;

    invoke-virtual {v0}, Lbfz;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1373
    iget-object v0, p0, Lehd;->d:Lbfz;

    invoke-virtual {v0}, Lbfz;->c()V

    .line 1375
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1376
    sget-boolean v0, Lehd;->a:Z

    if-eqz v0, :cond_a

    .line 1377
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x21

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Sending batch request to server: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1380
    :cond_a
    iget-object v0, p0, Lehd;->b:Lbfd;

    .line 1381
    invoke-virtual {v1}, Lbep;->c()Ljava/lang/String;

    move-result-object v1

    .line 1380
    invoke-static {v0, v3, v1, v9}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Ljava/util/ArrayList;Ljava/lang/String;Z)I

    goto/16 :goto_0

    .line 1383
    :cond_b
    instance-of v0, v1, Lbet;

    if-eqz v0, :cond_0

    .line 1384
    check-cast v1, Lbet;

    .line 1386
    invoke-virtual {v1}, Lbet;->d()Ldtt;

    move-result-object v0

    .line 1388
    iget-object v1, p0, Lehd;->d:Lbfz;

    invoke-virtual {v1, v0}, Lbfz;->a(Ldtt;)Lcyx;

    move-result-object v1

    .line 1394
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcyx;->j()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 1395
    :cond_c
    sget-boolean v5, Lehd;->a:Z

    if-eqz v5, :cond_d

    .line 1396
    if-nez v1, :cond_e

    .line 1397
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x2a

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Contact info not in database, try server: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1405
    :cond_d
    :goto_4
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1406
    iget-object v0, p0, Lehd;->b:Lbfd;

    invoke-static {v0, v3, v2, v9}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Ljava/util/ArrayList;Ljava/lang/String;Z)I

    goto/16 :goto_0

    .line 1400
    :cond_e
    const-string v5, "Contact info is not in database: but we have already requested it: "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1401
    invoke-virtual {v1}, Lcyx;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    :cond_f
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 1409
    :cond_10
    sget-boolean v3, Lehd;->a:Z

    if-eqz v3, :cond_11

    .line 1411
    invoke-virtual {v0}, Ldtt;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcyx;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x2a

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Contact info is in the database: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " entity: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1413
    :cond_11
    invoke-direct {p0, v0, v1}, Lehd;->a(Ldtt;Lcyx;)V

    goto/16 :goto_0

    .line 322
    :cond_12
    return-void
.end method
