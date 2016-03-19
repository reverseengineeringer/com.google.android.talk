.class public final Lbpz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:Z


# instance fields
.field public final a:Lbfd;

.field final b:Lbqi;

.field c:Ljava/lang/String;

.field d:Lbqf;

.field e:Lezj;

.field private final g:Landroid/content/Context;

.field private final h:I

.field private final i:Ljava/lang/String;

.field private final j:Z

.field private final k:Landroid/os/Handler;

.field private final l:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lbjb;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Z

.field private final n:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lbjb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lezi;->e:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lbpz;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbqi;Lbfd;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lbpz;->k:Landroid/os/Handler;

    .line 110
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbpz;->l:Ljava/util/Collection;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lbpz;->c:Ljava/lang/String;

    .line 1310
    new-instance v0, Lbqd;

    invoke-direct {v0, p0}, Lbqd;-><init>(Lbpz;)V

    iput-object v0, p0, Lbpz;->n:Ljava/util/Comparator;

    .line 136
    iput-object p1, p0, Lbpz;->g:Landroid/content/Context;

    .line 2198
    const-string v0, "Expected non-null"

    invoke-static {v0, p2}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 137
    check-cast v0, Lbqi;

    iput-object v0, p0, Lbpz;->b:Lbqi;

    .line 3198
    const-string v0, "Expected non-null"

    invoke-static {v0, p3}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 138
    check-cast v0, Lbfd;

    iput-object v0, p0, Lbpz;->a:Lbfd;

    .line 139
    invoke-virtual {p3}, Lbfd;->g()I

    move-result v0

    iput v0, p0, Lbpz;->h:I

    .line 140
    iput-object p4, p0, Lbpz;->i:Ljava/lang/String;

    .line 141
    iput-boolean p5, p0, Lbpz;->j:Z

    .line 142
    const-class v0, Leot;

    .line 143
    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    invoke-interface {v0}, Leot;->d()Z

    move-result v0

    iput-boolean v0, p0, Lbpz;->m:Z

    .line 144
    sget-boolean v0, Lbpz;->f:Z

    if-nez v0, :cond_0

    const-string v0, "babel_cve_logging"

    const/4 v1, 0x0

    .line 145
    invoke-static {p1, v0, v1}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    new-instance v0, Lezj;

    const-string v1, "cve"

    invoke-direct {v0, v1}, Lezj;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbpz;->e:Lezj;

    .line 150
    iget-object v0, p0, Lbpz;->e:Lezj;

    const-string v1, "created"

    invoke-virtual {v0, v1}, Lezj;->a(Ljava/lang/String;)V

    .line 152
    :cond_1
    return-void
.end method

.method private a(Ljava/util/Collection;Lbjb;I)Lbjb;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lbjb;",
            ">;",
            "Lbjb;",
            "I)",
            "Lbjb;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1238
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1239
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjb;

    .line 1291
    :cond_0
    :goto_0
    return-object v0

    .line 1244
    :cond_1
    iget-boolean v0, p0, Lbpz;->j:Z

    if-nez v0, :cond_2

    iget v0, p2, Lbjb;->b:I

    if-ne v0, v1, :cond_3

    :cond_2
    move-object v0, p2

    .line 1245
    goto :goto_0

    .line 1252
    :cond_3
    iget-object v0, p2, Lbjb;->c:Ljava/lang/String;

    invoke-static {v0}, Lezm;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1253
    iget-object v0, p0, Lbpz;->e:Lezj;

    if-eqz v0, :cond_4

    .line 1254
    iget-object v0, p0, Lbpz;->e:Lezj;

    const-string v1, "getSelected:toLegacy"

    invoke-virtual {v0, v1}, Lezj;->a(Ljava/lang/String;)V

    .line 1260
    :cond_4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjb;

    .line 1261
    iget-object v5, v0, Lbjb;->c:Ljava/lang/String;

    invoke-static {v5}, Lezm;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1262
    iget-object v6, p0, Lbpz;->e:Lezj;

    if-eqz v6, :cond_5

    .line 1263
    iget-object v6, p0, Lbpz;->e:Lezj;

    const-string v7, "getSelected:toLegacyLoop"

    invoke-virtual {v6, v7}, Lezj;->a(Ljava/lang/String;)V

    .line 1265
    :cond_5
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1266
    iget v1, v0, Lbjb;->b:I

    if-eq v1, p3, :cond_0

    :goto_2
    move-object v1, v0

    .line 1274
    goto :goto_1

    .line 1276
    :cond_6
    if-eqz v1, :cond_7

    move-object v0, v1

    .line 1281
    goto :goto_0

    .line 1289
    :cond_7
    const-string v0, "Babel"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x37

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not find valid transport, preferred = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 1291
    goto :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_2
.end method

.method private static a(Ljava/util/Collection;Ljava/lang/String;)Lbjb;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lbjb;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lbjb;"
        }
    .end annotation

    .prologue
    .line 1296
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjb;

    .line 1297
    iget-object v2, v0, Lbjb;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1301
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/util/Collection;)Lbqg;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lbpa;",
            ">;)",
            "Lbqg;"
        }
    .end annotation

    .prologue
    .line 1015
    const/4 v2, 0x0

    .line 1016
    const-wide/16 v0, 0x0

    .line 1019
    const/4 v5, 0x0

    .line 1020
    const-wide/16 v6, 0x0

    .line 1022
    const/4 v4, 0x2

    .line 1023
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-wide v8, v0

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpa;

    .line 1024
    iget v1, v0, Lbpa;->b:I

    invoke-static {v1}, Laal;->f(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1025
    const/4 v10, 0x1

    .line 1026
    iget-wide v2, v0, Lbpa;->g:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_0

    .line 1027
    iget v4, v0, Lbpa;->b:I

    .line 1028
    iget-wide v8, v0, Lbpa;->g:J

    .line 1034
    :cond_0
    :goto_1
    iget-wide v2, v0, Lbpa;->g:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_4

    .line 1035
    iget-object v1, v0, Lbpa;->a:Ljava/lang/String;

    iput-object v1, p0, Lbpz;->c:Ljava/lang/String;

    .line 1036
    iget-wide v2, v0, Lbpa;->g:J

    .line 1037
    iget v0, v0, Lbpa;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-wide v0, v2

    :goto_2
    move-wide v6, v0

    move v2, v10

    .line 1039
    goto :goto_0

    .line 1041
    :cond_1
    iget-object v0, p0, Lbpz;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1044
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpa;

    iget-object v0, v0, Lbpa;->a:Ljava/lang/String;

    iput-object v0, p0, Lbpz;->c:Ljava/lang/String;

    .line 1047
    :cond_2
    new-instance v0, Lbqg;

    const-wide/16 v6, 0x0

    cmp-long v1, v8, v6

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    :goto_3
    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lbqg;-><init>(Lbpz;ZZILjava/lang/Integer;)V

    return-object v0

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    move-wide v0, v6

    goto :goto_2

    :cond_5
    move v10, v2

    goto :goto_1
.end method

.method private static a(Lcyx;Lbgd;Z)Lcyx;
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 892
    const/4 v3, 0x0

    .line 894
    iget-object v0, p1, Lbgd;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 895
    const/4 v0, 0x0

    .line 896
    iget-object v1, p1, Lbgd;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyx;

    .line 897
    if-nez v1, :cond_2

    .line 898
    invoke-virtual {v0, p0}, Lcyx;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 900
    goto :goto_0

    .line 901
    :cond_0
    if-eqz p2, :cond_2

    iget-object v1, v0, Lcyx;->c:Ljava/lang/String;

    .line 902
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcyx;->c:Ljava/lang/String;

    iget-object v5, p0, Lcyx;->c:Ljava/lang/String;

    .line 903
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 905
    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 912
    :cond_2
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/util/Collection;Leie;)Ljava/util/Collection;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lbpa;",
            ">;",
            "Leie;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lbjb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 579
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lbpz;->e:Lezj;

    if-eqz v4, :cond_0

    .line 580
    move-object/from16 v0, p0

    iget-object v4, v0, Lbpz;->e:Lezj;

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x1c

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "computeInternal: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lezj;->a(Ljava/lang/String;)V

    .line 586
    :cond_0
    new-instance v15, Lhq;

    invoke-direct {v15}, Lhq;-><init>()V

    .line 588
    move-object/from16 v0, p0

    iget-object v4, v0, Lbpz;->a:Lbfd;

    .line 590
    invoke-virtual {v4}, Lbfd;->b()Lczb;

    move-result-object v4

    .line 591
    invoke-static {}, Lezm;->f()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 597
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 589
    invoke-static/range {v4 .. v11}, Laal;->a(Lczb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcyx;

    move-result-object v16

    .line 599
    new-instance v17, Lbfz;

    move-object/from16 v0, p0

    iget-object v4, v0, Lbpz;->g:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lbpz;->a:Lbfd;

    invoke-virtual {v5}, Lbfd;->g()I

    move-result v5

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 600
    new-instance v18, Lbqe;

    move-object/from16 v0, p0

    iget-object v4, v0, Lbpz;->e:Lezj;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lbqe;-><init>(Lezj;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v4, v0, Lbpz;->e:Lezj;

    if-eqz v4, :cond_1

    .line 603
    move-object/from16 v0, p0

    iget-object v4, v0, Lbpz;->e:Lezj;

    const-string v5, "cI:preloop"

    invoke-virtual {v4, v5}, Lezj;->a(Ljava/lang/String;)V

    .line 608
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_2
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lbpa;

    move-object v6, v0

    .line 610
    move-object/from16 v0, p0

    iget-object v4, v0, Lbpz;->e:Lezj;

    if-eqz v4, :cond_3

    .line 611
    move-object/from16 v0, p0

    iget-object v4, v0, Lbpz;->e:Lezj;

    const-string v5, "cI:loopStart"

    invoke-virtual {v4, v5}, Lezj;->a(Ljava/lang/String;)V

    .line 614
    :cond_3
    iget-object v4, v6, Lbpa;->a:Ljava/lang/String;

    .line 5949
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lbfz;->f(Ljava/lang/String;)Lbgd;

    move-result-object v12

    .line 5950
    move-object/from16 v0, p0

    iget-object v5, v0, Lbpz;->e:Lezj;

    if-eqz v5, :cond_4

    .line 5951
    move-object/from16 v0, p0

    iget-object v5, v0, Lbpz;->e:Lezj;

    const-string v7, "getCI:getConvInfo"

    invoke-virtual {v5, v7}, Lezj;->a(Ljava/lang/String;)V

    .line 5953
    :cond_4
    if-nez v12, :cond_5

    .line 5954
    invoke-static {v4}, Lbfz;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5955
    invoke-static {v4}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5956
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 5957
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lbfz;->f(Ljava/lang/String;)Lbgd;

    move-result-object v12

    .line 5958
    move-object/from16 v0, p0

    iget-object v4, v0, Lbpz;->e:Lezj;

    if-eqz v4, :cond_5

    .line 5959
    move-object/from16 v0, p0

    iget-object v4, v0, Lbpz;->e:Lezj;

    const-string v5, "getCI:getConvInfoServer"

    invoke-virtual {v4, v5}, Lezj;->a(Ljava/lang/String;)V

    .line 616
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lbpz;->e:Lezj;

    if-eqz v4, :cond_6

    .line 617
    move-object/from16 v0, p0

    iget-object v4, v0, Lbpz;->e:Lezj;

    const-string v5, "cI:convInfo"

    invoke-virtual {v4, v5}, Lezj;->a(Ljava/lang/String;)V

    .line 619
    :cond_6
    if-nez v12, :cond_7

    .line 621
    const-string v4, "Babel"

    iget-object v5, v6, Lbpa;->a:Ljava/lang/String;

    iget-object v6, v6, Lbpa;->f:Ljava/lang/String;

    .line 628
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x42

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Null conversationInfo for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "; merge key = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; total count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    .line 621
    invoke-static {v4, v5, v6}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 629
    const/4 v4, 0x0

    .line 692
    :goto_1
    return-object v4

    .line 633
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lbpz;->g:Landroid/content/Context;

    const-class v5, Leot;

    invoke-static {v4, v5}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leot;

    .line 634
    move-object/from16 v0, p0

    iget v5, v0, Lbpz;->h:I

    .line 636
    invoke-interface {v4, v5}, Leot;->a(I)Z

    move-result v4

    .line 635
    move-object/from16 v0, v16

    invoke-static {v0, v12, v4}, Lbpz;->a(Lcyx;Lbgd;Z)Lcyx;

    move-result-object v7

    .line 637
    move-object/from16 v0, p0

    iget-object v4, v0, Lbpz;->e:Lezj;

    if-eqz v4, :cond_8

    .line 638
    move-object/from16 v0, p0

    iget-object v4, v0, Lbpz;->e:Lezj;

    const-string v5, "cI:getParticipant"

    invoke-virtual {v4, v5}, Lezj;->a(Ljava/lang/String;)V

    .line 641
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lbpz;->m:Z

    if-eqz v4, :cond_b

    .line 6926
    if-nez v7, :cond_e

    .line 6927
    const/4 v4, 0x0

    .line 645
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lbpz;->e:Lezj;

    if-eqz v5, :cond_a

    .line 646
    move-object/from16 v0, p0

    iget-object v5, v0, Lbpz;->e:Lezj;

    const-string v8, "cI:getContactDetails"

    invoke-virtual {v5, v8}, Lezj;->a(Ljava/lang/String;)V

    .line 651
    :cond_a
    if-eqz v4, :cond_b

    .line 652
    invoke-static {v4, v15}, Lbpz;->a(Lbzq;Lhq;)V

    .line 653
    move-object/from16 v0, p0

    iget-object v4, v0, Lbpz;->e:Lezj;

    if-eqz v4, :cond_b

    .line 654
    move-object/from16 v0, p0

    iget-object v4, v0, Lbpz;->e:Lezj;

    const-string v5, "cI:maintain"

    invoke-virtual {v4, v5}, Lezj;->a(Ljava/lang/String;)V

    .line 659
    :cond_b
    if-eqz v7, :cond_2

    .line 7821
    iget v4, v6, Lbpa;->b:I

    .line 7822
    invoke-static {v4}, Laal;->f(I)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 7823
    const/4 v4, 0x0

    .line 7824
    const/4 v14, 0x0

    .line 7826
    move-object/from16 v0, p0

    iget-object v5, v0, Lbpz;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Lcom/google/android/apps/hangouts/hangout/StressMode;->gp:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 7830
    iget-object v8, v7, Lcyx;->c:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, v7, Lcyx;->c:Ljava/lang/String;

    .line 7831
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 7832
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lbpz;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Lcom/google/android/apps/hangouts/hangout/StressMode;->si:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 7833
    const/4 v14, 0x1

    move-object v13, v4

    .line 7838
    :goto_3
    new-instance v4, Lbjb;

    iget-object v5, v6, Lbpa;->a:Ljava/lang/String;

    iget v6, v6, Lbpa;->b:I

    const/4 v9, 0x0

    iget-object v10, v7, Lcyx;->c:Ljava/lang/String;

    if-eqz v13, :cond_11

    iget-object v11, v13, Lbqh;->b:Lbzv;

    if-eqz v11, :cond_11

    .line 7847
    iget-object v11, v13, Lbqh;->b:Lbzv;

    invoke-virtual {v11}, Lbzv;->b()Ljava/lang/String;

    move-result-object v11

    .line 7848
    :goto_4
    if-eqz v13, :cond_12

    .line 7850
    iget-object v13, v13, Lbqh;->a:Lbzq;

    :goto_5
    invoke-direct/range {v4 .. v14}, Lbjb;-><init>(Ljava/lang/String;ILcyx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbgd;Lbzq;Z)V

    .line 7838
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lbqe;->a(Lbjb;)V

    .line 7852
    move-object/from16 v0, p0

    iget-object v4, v0, Lbpz;->e:Lezj;

    if-eqz v4, :cond_d

    .line 7853
    move-object/from16 v0, p0

    iget-object v4, v0, Lbpz;->e:Lezj;

    const-string v5, "addVariantFromPandCI:smsMerge"

    invoke-virtual {v4, v5}, Lezj;->a(Ljava/lang/String;)V

    .line 666
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lbpz;->e:Lezj;

    if-eqz v4, :cond_2

    .line 667
    move-object/from16 v0, p0

    iget-object v4, v0, Lbpz;->e:Lezj;

    const-string v5, "cI:addFromPAndCI"

    invoke-virtual {v4, v5}, Lezj;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 690
    :catch_0
    move-exception v4

    .line 691
    const-string v5, "Babel"

    const-string v6, ">>>>>>>>>> got exception computing variants"

    invoke-static {v5, v6, v4}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 692
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 6929
    :cond_e
    const/4 v4, 0x0

    .line 6930
    :try_start_1
    iget-object v5, v7, Lcyx;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 6931
    iget-object v4, v7, Lcyx;->c:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Lbfz;->b(Ljava/lang/String;Leie;)Lbzq;

    move-result-object v4

    .line 6932
    move-object/from16 v0, p0

    iget-object v5, v0, Lbpz;->e:Lezj;

    if-eqz v5, :cond_9

    .line 6933
    move-object/from16 v0, p0

    iget-object v5, v0, Lbpz;->e:Lezj;

    const-string v8, "getDetails:phone"

    invoke-virtual {v5, v8}, Lezj;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 6935
    :cond_f
    invoke-virtual {v7}, Lcyx;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 6936
    invoke-virtual {v7}, Lcyx;->b()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Leie;->a(Ljava/lang/String;)Lbzq;

    move-result-object v4

    .line 6937
    move-object/from16 v0, p0

    iget-object v5, v0, Lbpz;->e:Lezj;

    if-eqz v5, :cond_9

    .line 6938
    move-object/from16 v0, p0

    iget-object v5, v0, Lbpz;->e:Lezj;

    const-string v8, "getDetails:gaia"

    invoke-virtual {v5, v8}, Lezj;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 7835
    :cond_10
    iget-object v4, v7, Lcyx;->c:Ljava/lang/String;

    invoke-static {v4}, Lezm;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 7836
    iget-object v4, v7, Lcyx;->c:Ljava/lang/String;

    invoke-static {v4}, Lezm;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lhq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbqh;

    move-object v13, v4

    goto/16 :goto_3

    .line 7848
    :cond_11
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 7850
    :cond_12
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 7856
    :cond_13
    invoke-virtual {v7}, Lcyx;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 7859
    new-instance v4, Lbjb;

    iget-object v5, v6, Lbpa;->a:Ljava/lang/String;

    iget v6, v6, Lbpa;->b:I

    const/4 v8, 0x0

    iget-object v9, v7, Lcyx;->g:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v4 .. v14}, Lbjb;-><init>(Ljava/lang/String;ILcyx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbgd;Lbzq;Z)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lbqe;->a(Lbjb;)V

    .line 7871
    move-object/from16 v0, p0

    iget-object v4, v0, Lbpz;->e:Lezj;

    if-eqz v4, :cond_d

    .line 7872
    move-object/from16 v0, p0

    iget-object v4, v0, Lbpz;->e:Lezj;

    const-string v5, "addVariantFromPandCI:gaiaMerge"

    invoke-virtual {v4, v5}, Lezj;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 7875
    :cond_14
    const-string v5, "Babel"

    const-string v7, "empty gaia id for non-SMS transport type, conversation id = "

    iget-object v4, v6, Lbpa;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_7
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v4, v6}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_15
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 671
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lbpz;->e:Lezj;

    if-eqz v4, :cond_17

    .line 672
    move-object/from16 v0, p0

    iget-object v4, v0, Lbpz;->e:Lezj;

    const-string v5, "cI:postLoop"

    invoke-virtual {v4, v5}, Lezj;->a(Ljava/lang/String;)V

    .line 682
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lbpz;->m:Z

    if-eqz v4, :cond_18

    .line 683
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v15, v2, v3}, Lbpz;->a(Lbqe;Lhq;Lbfz;Ljava/lang/String;)V

    .line 684
    move-object/from16 v0, p0

    iget-object v4, v0, Lbpz;->e:Lezj;

    if-eqz v4, :cond_18

    .line 685
    move-object/from16 v0, p0

    iget-object v4, v0, Lbpz;->e:Lezj;

    const-string v5, "cI:addMising"

    invoke-virtual {v4, v5}, Lezj;->a(Ljava/lang/String;)V

    .line 689
    :cond_18
    invoke-virtual/range {v18 .. v18}, Lbqe;->a()Ljava/util/Collection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto/16 :goto_1
.end method

.method private a(Ljava/util/Collection;I)Ljava/util/Collection;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lbjb;",
            ">;I)",
            "Ljava/util/Collection",
            "<",
            "Lbjb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1069
    iget-boolean v0, p0, Lbpz;->m:Z

    if-nez v0, :cond_1

    .line 1172
    :cond_0
    :goto_0
    return-object p1

    .line 1075
    :cond_1
    iget-object v0, p0, Lbpz;->a:Lbfd;

    invoke-virtual {v0}, Lbfd;->x()Z

    move-result v8

    .line 1076
    iget-object v0, p0, Lbpz;->a:Lbfd;

    invoke-virtual {v0}, Lbfd;->K()Z

    move-result v9

    .line 1081
    iget-object v0, p0, Lbpz;->a:Lbfd;

    invoke-virtual {v0}, Lbfd;->J()Z

    move-result v1

    .line 1082
    if-nez v1, :cond_4

    if-eqz v8, :cond_4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    const/4 v0, 0x1

    move v7, v0

    .line 1086
    :goto_1
    if-nez v1, :cond_5

    if-eqz v9, :cond_5

    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    const/4 v0, 0x1

    move v1, v0

    .line 1093
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1094
    const/4 v0, 0x0

    .line 1096
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v2, v0

    .line 1097
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1098
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjb;

    .line 1102
    iget-object v3, v0, Lbjb;->h:Lcyx;

    .line 1103
    invoke-virtual {v3}, Lcyx;->i()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v0, Lbjb;->h:Lcyx;

    .line 1104
    invoke-static {v3}, Laal;->a(Lcyx;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x1

    .line 1108
    :goto_4
    iget v4, v0, Lbjb;->b:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    const/4 v4, 0x1

    .line 1110
    :goto_5
    iget v5, v0, Lbjb;->b:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    const/4 v5, 0x1

    .line 1112
    :goto_6
    iget-object v6, v0, Lbjb;->a:Ljava/lang/String;

    if-eqz v6, :cond_9

    const/4 v6, 0x1

    .line 1127
    :goto_7
    if-eqz v4, :cond_a

    .line 1128
    if-nez v8, :cond_2

    if-eqz v6, :cond_3

    :cond_2
    if-eqz v3, :cond_3

    if-eqz v1, :cond_d

    .line 1131
    :cond_3
    const-string v2, "gv/filtered "

    .line 1132
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lbjb;->a:Ljava/lang/String;

    .line 1133
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1134
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    .line 1135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1136
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    .line 1137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1138
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    .line 1139
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";true;"

    .line 1141
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    const/4 v0, 0x1

    .line 1145
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    move v2, v0

    goto :goto_3

    .line 1082
    :cond_4
    const/4 v0, 0x0

    move v7, v0

    goto/16 :goto_1

    .line 1086
    :cond_5
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_2

    .line 1104
    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    .line 1108
    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    .line 1110
    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    .line 1112
    :cond_9
    const/4 v6, 0x0

    goto :goto_7

    .line 1147
    :cond_a
    if-eqz v5, :cond_d

    .line 1148
    if-nez v9, :cond_b

    if-eqz v6, :cond_c

    :cond_b
    if-eqz v7, :cond_d

    if-eqz v3, :cond_d

    .line 1151
    :cond_c
    const-string v2, "carrier/filtered "

    .line 1152
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lbjb;->a:Ljava/lang/String;

    .line 1153
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1154
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    .line 1155
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1156
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";true;"

    .line 1157
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1160
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    .line 1161
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1162
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    .line 1163
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    const/4 v2, 0x1

    .line 1165
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    :cond_d
    move v0, v2

    move v2, v0

    .line 1168
    goto/16 :goto_3

    .line 1169
    :cond_e
    if-eqz v2, :cond_0

    .line 1170
    const-string v0, "Babel"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private a(Lbqe;Lhq;Lbfz;Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbqe;",
            "Lhq",
            "<",
            "Ljava/lang/String;",
            "Lbqh;",
            ">;",
            "Lbfz;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 723
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 727
    invoke-virtual/range {p1 .. p1}, Lbqe;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbjb;

    .line 728
    iget-object v2, p0, Lbpz;->e:Lezj;

    if-eqz v2, :cond_1

    .line 729
    iget-object v2, p0, Lbpz;->e:Lezj;

    const-string v4, "addMissing:loopStart"

    invoke-virtual {v2, v4}, Lezj;->a(Ljava/lang/String;)V

    .line 731
    :cond_1
    iget v2, v1, Lbjb;->b:I

    invoke-static {v2}, Laal;->f(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 732
    iget-object v2, v1, Lbjb;->c:Ljava/lang/String;

    invoke-static {v2}, Lezm;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 733
    iget-object v2, p0, Lbpz;->e:Lezj;

    if-eqz v2, :cond_2

    .line 734
    iget-object v2, p0, Lbpz;->e:Lezj;

    const-string v5, "addMissing:toLegacy"

    invoke-virtual {v2, v5}, Lezj;->a(Ljava/lang/String;)V

    .line 736
    :cond_2
    invoke-interface {v12, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 737
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v12, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    :cond_3
    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    iget v1, v1, Lbjb;->b:I

    .line 741
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 742
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lhq;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 745
    new-instance v1, Lbzv;

    const/4 v2, 0x0

    invoke-direct {v1, v4, v2}, Lbzv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    new-instance v2, Lbqh;

    const/4 v5, 0x0

    invoke-direct {v2, v5, v1}, Lbqh;-><init>(Lbzq;Lbzv;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v2}, Lhq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 756
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lhq;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 757
    iget-object v1, p0, Lbpz;->e:Lezj;

    if-eqz v1, :cond_6

    .line 758
    iget-object v1, p0, Lbpz;->e:Lezj;

    const-string v2, "addMissing:loopStart2"

    invoke-virtual {v1, v2}, Lezj;->a(Ljava/lang/String;)V

    .line 763
    :cond_6
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 764
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 765
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 768
    invoke-interface {v12, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 769
    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 772
    :cond_7
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 773
    iget-object v1, p0, Lbpz;->e:Lezj;

    if-eqz v1, :cond_8

    .line 774
    iget-object v1, p0, Lbpz;->e:Lezj;

    const-string v3, "addMissing:reqMedEmpty"

    invoke-virtual {v1, v3}, Lezj;->a(Ljava/lang/String;)V

    .line 776
    :cond_8
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v5}, Lbfz;->a(Lczb;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 777
    iget-object v3, p0, Lbpz;->e:Lezj;

    if-eqz v3, :cond_9

    .line 778
    iget-object v3, p0, Lbpz;->e:Lezj;

    const-string v4, "addMissing:mergeKey"

    invoke-virtual {v3, v4}, Lezj;->a(Ljava/lang/String;)V

    .line 780
    :cond_9
    move-object/from16 v0, p4

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 781
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_a
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/Integer;

    .line 782
    iget-object v1, p0, Lbpz;->g:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 783
    invoke-static {v1, v5, v2, v4}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcyx;

    move-result-object v4

    .line 786
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lhq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lbqh;

    .line 787
    new-instance v1, Lbjb;

    const/4 v2, 0x0

    .line 8043
    const/4 v6, 0x0

    invoke-static {v3, v6}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 790
    const/4 v6, 0x0

    iget-object v8, v7, Lbqh;->b:Lbzv;

    .line 795
    invoke-virtual {v8}, Lbzv;->b()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, v7, Lbqh;->a:Lbzq;

    .line 798
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    move-object v7, v5

    invoke-direct/range {v1 .. v11}, Lbjb;-><init>(Ljava/lang/String;ILcyx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbgd;Lbzq;Z)V

    .line 787
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lbqe;->a(Lbjb;)V

    .line 799
    iget-object v1, p0, Lbpz;->e:Lezj;

    if-eqz v1, :cond_a

    .line 800
    iget-object v1, p0, Lbpz;->e:Lezj;

    const-string v2, "addMissing:mergeVariant"

    invoke-virtual {v1, v2}, Lezj;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 806
    :cond_b
    return-void
.end method

.method private static a(Lbzq;Lhq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbzq;",
            "Lhq",
            "<",
            "Ljava/lang/String;",
            "Lbqh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 704
    invoke-virtual {p0}, Lbzq;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbzv;

    .line 706
    iget-object v2, v0, Lbzv;->a:Ljava/lang/String;

    .line 707
    invoke-static {v2}, Lezm;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbqh;

    invoke-direct {v3, p0, v0}, Lbqh;-><init>(Lbzq;Lbzv;)V

    .line 706
    invoke-virtual {p1, v2, v3}, Lhq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 710
    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;Lbjb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbjb;",
            ">;",
            "Lbjb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 405
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lbpz;->e:Lezj;

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lbpz;->e:Lezj;

    const-string v1, "finish bg"

    invoke-virtual {v0, v1}, Lezj;->a(Ljava/lang/String;)V

    .line 414
    :cond_1
    iget-object v0, p0, Lbpz;->k:Landroid/os/Handler;

    new-instance v1, Lbqc;

    invoke-direct {v1, p0, p1, p2}, Lbqc;-><init>(Lbpz;Ljava/util/List;Lbjb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lbpz;->l:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjb;

    .line 299
    iget v0, v0, Lbjb;->b:I

    invoke-static {v0}, Laal;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    const/4 v0, 0x1

    .line 303
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 6

    .prologue
    .line 1211
    iget-object v0, p0, Lbpz;->l:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjb;

    .line 1212
    const-string v2, "Babel"

    iget-object v3, v0, Lbjb;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v0, v0, Lbjb;->b:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2f

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "skipping candidate variant: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1216
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 5182
    iget-object v0, p0, Lbpz;->l:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5184
    iget-object v0, p0, Lbpz;->l:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjb;

    .line 359
    :goto_0
    if-nez v0, :cond_6

    .line 373
    :goto_1
    return-void

    .line 5186
    :cond_0
    iget-object v0, p0, Lbpz;->i:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 5189
    iget-object v0, p0, Lbpz;->l:Ljava/util/Collection;

    iget-object v1, p0, Lbpz;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lbpz;->a(Ljava/util/Collection;Ljava/lang/String;)Lbjb;

    move-result-object v1

    .line 5190
    if-nez v1, :cond_1

    .line 5191
    const-string v2, "Babel"

    const-string v3, "Unexpected null variant matching conversationIdHint="

    iget-object v0, p0, Lbpz;->i:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5194
    invoke-direct {p0}, Lbpz;->b()V

    :cond_1
    move-object v0, v1

    .line 5196
    goto :goto_0

    .line 5191
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 5199
    :cond_3
    iget-object v0, p0, Lbpz;->l:Ljava/util/Collection;

    iget-object v1, p0, Lbpz;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lbpz;->a(Ljava/util/Collection;Ljava/lang/String;)Lbjb;

    move-result-object v1

    .line 5200
    if-nez v1, :cond_4

    .line 5201
    const-string v2, "Babel"

    const-string v3, "Unexpected null variant matching latestOrFirstConversationId="

    iget-object v0, p0, Lbpz;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5205
    invoke-direct {p0}, Lbpz;->b()V

    :cond_4
    move-object v0, v1

    .line 5207
    goto :goto_0

    .line 5201
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 364
    :cond_6
    iget-object v1, p0, Lbpz;->l:Ljava/util/Collection;

    invoke-direct {p0, v1, p1}, Lbpz;->a(Ljava/util/Collection;I)Ljava/util/Collection;

    move-result-object v1

    .line 366
    invoke-direct {p0, v1, v0, p1}, Lbpz;->a(Ljava/util/Collection;Lbjb;I)Lbjb;

    move-result-object v0

    .line 367
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 368
    iget-object v1, p0, Lbpz;->n:Ljava/util/Comparator;

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 369
    iget-object v1, p0, Lbpz;->e:Lezj;

    if-eqz v1, :cond_7

    .line 370
    iget-object v1, p0, Lbpz;->e:Lezj;

    const-string v3, "sorted"

    invoke-virtual {v1, v3}, Lezj;->a(Ljava/lang/String;)V

    .line 372
    :cond_7
    invoke-direct {p0, v2, v0}, Lbpz;->a(Ljava/util/List;Lbjb;)V

    goto/16 :goto_1
.end method

.method public a(ILjava/lang/String;Ljava/util/Collection;Lbqf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lbpa;",
            ">;",
            "Lbqf;",
            ")V"
        }
    .end annotation

    .prologue
    .line 172
    iput-object p4, p0, Lbpz;->d:Lbqf;

    .line 173
    iget-object v0, p0, Lbpz;->e:Lezj;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lbpz;->e:Lezj;

    const-string v1, "started"

    invoke-virtual {v0, v1}, Lezj;->a(Ljava/lang/String;)V

    .line 176
    :cond_0
    new-instance v0, Lbqa;

    invoke-direct {v0, p0, p3, p2, p1}, Lbqa;-><init>(Lbpz;Ljava/util/Collection;Ljava/lang/String;I)V

    invoke-static {v0}, Lhbw;->a(Ljava/lang/Runnable;)V

    .line 187
    return-void
.end method

.method a(Ljava/util/Collection;Ljava/lang/String;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lbpa;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 204
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 205
    iget-object v0, p0, Lbpz;->e:Lezj;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lbpz;->e:Lezj;

    const-string v1, "compute group"

    invoke-virtual {v0, v1}, Lezj;->a(Ljava/lang/String;)V

    .line 3382
    :cond_0
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lhbs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3384
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lbpa;

    .line 3386
    new-instance v0, Lbjb;

    iget-object v1, v2, Lbpa;->a:Ljava/lang/String;

    iget v2, v2, Lbpa;->b:I

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v0 .. v10}, Lbjb;-><init>(Ljava/lang/String;ILcyx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbgd;Lbzq;Z)V

    .line 3398
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 3399
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3400
    invoke-direct {p0, v1, v0}, Lbpz;->a(Ljava/util/List;Lbjb;)V

    .line 292
    :goto_0
    return-void

    .line 4319
    :cond_1
    iget-boolean v0, p0, Lbpz;->m:Z

    if-eqz v0, :cond_2

    .line 4320
    invoke-static {}, Leie;->a()Leie;

    move-result-object v3

    .line 4321
    :cond_2
    iget-object v0, p0, Lbpz;->e:Lezj;

    if-eqz v0, :cond_3

    .line 4322
    iget-object v1, p0, Lbpz;->e:Lezj;

    if-nez v3, :cond_8

    const-string v0, "refnull"

    :goto_1
    invoke-virtual {v1, v0}, Lezj;->a(Ljava/lang/String;)V

    .line 4326
    :cond_3
    :try_start_0
    invoke-direct {p0, p2, p1, v3}, Lbpz;->a(Ljava/lang/String;Ljava/util/Collection;Leie;)Ljava/util/Collection;

    move-result-object v0

    .line 4327
    iget-object v1, p0, Lbpz;->e:Lezj;

    if-eqz v1, :cond_4

    .line 4328
    iget-object v1, p0, Lbpz;->e:Lezj;

    const-string v2, "computeInternal"

    invoke-virtual {v1, v2}, Lezj;->a(Ljava/lang/String;)V

    .line 4330
    :cond_4
    if-eqz v0, :cond_5

    .line 4331
    iget-object v1, p0, Lbpz;->l:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4334
    :cond_5
    if-eqz v3, :cond_6

    .line 4335
    invoke-virtual {v3}, Leie;->c()V

    .line 4336
    iget-object v0, p0, Lbpz;->e:Lezj;

    if-eqz v0, :cond_6

    .line 4337
    iget-object v0, p0, Lbpz;->e:Lezj;

    const-string v1, "release"

    invoke-virtual {v0, v1}, Lezj;->a(Ljava/lang/String;)V

    .line 213
    :cond_6
    iget-object v0, p0, Lbpz;->e:Lezj;

    if-eqz v0, :cond_7

    .line 214
    iget-object v0, p0, Lbpz;->e:Lezj;

    iget-object v1, p0, Lbpz;->l:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "computeAll done: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lezj;->a(Ljava/lang/String;)V

    .line 220
    :cond_7
    iget-object v0, p0, Lbpz;->l:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 221
    const-string v0, "Babel"

    .line 226
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x36

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No variants! mergeKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; conversation count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    .line 221
    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4322
    :cond_8
    const-string v0, "ref"

    goto/16 :goto_1

    .line 4334
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_9

    .line 4335
    invoke-virtual {v3}, Leie;->c()V

    .line 4336
    iget-object v1, p0, Lbpz;->e:Lezj;

    if-eqz v1, :cond_9

    .line 4337
    iget-object v1, p0, Lbpz;->e:Lezj;

    const-string v2, "release"

    invoke-virtual {v1, v2}, Lezj;->a(Ljava/lang/String;)V

    :cond_9
    throw v0

    .line 232
    :cond_a
    invoke-direct {p0, p1}, Lbpz;->a(Ljava/util/Collection;)Lbqg;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lbpz;->e:Lezj;

    if-eqz v1, :cond_b

    .line 234
    iget-object v1, p0, Lbpz;->e:Lezj;

    const-string v2, "messageHistory"

    invoke-virtual {v1, v2}, Lezj;->a(Ljava/lang/String;)V

    .line 249
    :cond_b
    iget-boolean v1, p0, Lbpz;->m:Z

    if-eqz v1, :cond_d

    .line 250
    iget-object v1, p0, Lbpz;->i:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 251
    iget-object v1, p0, Lbpz;->l:Ljava/util/Collection;

    iget-object v2, p0, Lbpz;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lbpz;->a(Ljava/util/Collection;Ljava/lang/String;)Lbjb;

    move-result-object v1

    .line 257
    if-eqz v1, :cond_11

    .line 258
    iget v1, v1, Lbjb;->b:I

    .line 259
    invoke-static {v1}, Laal;->f(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lbpz;->j:Z

    if-nez v1, :cond_c

    move v10, v11

    :cond_c
    :goto_2
    move v11, v10

    .line 274
    :cond_d
    :goto_3
    if-eqz v11, :cond_10

    iget-boolean v1, p0, Lbpz;->m:Z

    if-eqz v1, :cond_10

    iget-boolean v1, v0, Lbqg;->a:Z

    if-nez v1, :cond_e

    .line 276
    invoke-direct {p0}, Lbpz;->a()Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_e
    iget-boolean v1, v0, Lbqg;->b:Z

    if-nez v1, :cond_10

    iget-object v1, p0, Lbpz;->a:Lbfd;

    .line 278
    invoke-virtual {v1}, Lbfd;->J()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 280
    iget-object v0, p0, Lbpz;->k:Landroid/os/Handler;

    new-instance v1, Lbqb;

    invoke-direct {v1, p0}, Lbqb;-><init>(Lbpz;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 261
    :cond_f
    iget-object v1, v0, Lbqg;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    .line 265
    iget-object v1, v0, Lbqg;->d:Ljava/lang/Integer;

    .line 5043
    invoke-static {v1, v10}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 266
    invoke-static {v1}, Laal;->g(I)Z

    move-result v1

    if-eqz v1, :cond_d

    move v11, v10

    goto :goto_3

    .line 289
    :cond_10
    iget-object v1, p0, Lbpz;->a:Lbfd;

    iget v0, v0, Lbqg;->c:I

    .line 290
    invoke-virtual {v1, v0}, Lbfd;->a(I)I

    move-result v0

    .line 289
    invoke-virtual {p0, v0}, Lbpz;->a(I)V

    goto/16 :goto_0

    :cond_11
    move v10, v11

    goto :goto_2
.end method
