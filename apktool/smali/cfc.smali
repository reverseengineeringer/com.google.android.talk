.class public Lcfc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile s:Lcfc;

.field private static v:Lhde;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhku;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Runnable;

.field final c:Landroid/content/Context;

.field final d:Lfic;

.field e:Lhkw;

.field f:Z

.field g:Lhkt;

.field h:Lcom/google/android/gms/herrevad/PredictedNetworkQuality;

.field i:Lhjz;

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lhkx;",
            ">;"
        }
    .end annotation
.end field

.field k:Lhkx;

.field l:Z

.field m:Z

.field n:Lhkx;

.field o:Lcex;

.field p:Landroid/os/Handler;

.field q:Lcgw;

.field private final r:Lhlj;

.field private t:Lhiy;

.field private u:Z

.field private w:Landroid/telephony/PhoneStateListener;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcfc;->a:Ljava/util/List;

    .line 261
    new-instance v0, Lcfd;

    invoke-direct {v0, p0}, Lcfd;-><init>(Lcfc;)V

    iput-object v0, p0, Lcfc;->b:Ljava/lang/Runnable;

    .line 309
    new-instance v0, Lcfg;

    invoke-direct {v0, p0}, Lcfg;-><init>(Lcfc;)V

    iput-object v0, p0, Lcfc;->r:Lhlj;

    .line 568
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcfc;->j:Ljava/util/Map;

    .line 573
    iput-boolean v1, p0, Lcfc;->l:Z

    .line 574
    iput-boolean v1, p0, Lcfc;->m:Z

    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Lcfc;->n:Lhkx;

    .line 2036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 589
    iput-object v0, p0, Lcfc;->c:Landroid/content/Context;

    .line 590
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcfc;->p:Landroid/os/Handler;

    .line 591
    new-instance v0, Lfid;

    iget-object v1, p0, Lcfc;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lfid;-><init>(Landroid/content/Context;)V

    sget-object v1, Lfzp;->b:Lfhw;

    invoke-virtual {v0, v1}, Lfid;->a(Lfhw;)Lfid;

    move-result-object v0

    invoke-virtual {v0}, Lfid;->b()Lfic;

    move-result-object v0

    iput-object v0, p0, Lcfc;->d:Lfic;

    .line 592
    new-instance v0, Lcfi;

    invoke-direct {v0, p0}, Lcfi;-><init>(Lcfc;)V

    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    .line 604
    new-instance v0, Lcfj;

    invoke-direct {v0, p0}, Lcfj;-><init>(Lcfc;)V

    invoke-static {v0}, Lhbw;->a(Ljava/lang/Runnable;)V

    .line 614
    return-void
.end method

.method public static a()Lcfc;
    .locals 2

    .prologue
    .line 541
    sget-object v0, Lcfc;->s:Lcfc;

    if-nez v0, :cond_1

    .line 542
    const-class v1, Lcfc;

    monitor-enter v1

    .line 543
    :try_start_0
    sget-object v0, Lcfc;->s:Lcfc;

    if-nez v0, :cond_0

    .line 544
    new-instance v0, Lcfc;

    invoke-direct {v0}, Lcfc;-><init>()V

    sput-object v0, Lcfc;->s:Lcfc;

    .line 546
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    :cond_1
    sget-object v0, Lcfc;->s:Lcfc;

    return-object v0

    .line 546
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcyx;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1007
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v7

    .line 1008
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 1009
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcyx;

    .line 1010
    iget-object v0, v5, Lcyx;->b:Lczb;

    iget-object v0, v0, Lczb;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1011
    iget-object v0, v5, Lcyx;->b:Lczb;

    iget-object v0, v0, Lczb;->a:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1008
    :cond_0
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 1012
    :cond_1
    iget-object v0, v5, Lcyx;->a:Lczd;

    sget-object v1, Lczd;->d:Lczd;

    if-ne v0, v1, :cond_0

    .line 1014
    invoke-static {}, Lhgd;->a()Lhgd;

    move-result-object v0

    iget-object v1, v5, Lcyx;->s:Ljava/lang/String;

    .line 1017
    invoke-virtual {v5}, Lcyx;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lezm;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1019
    invoke-virtual {v5}, Lcyx;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lezm;->c(Ljava/lang/String;)Z

    move-result v3

    .line 1021
    invoke-virtual {v5}, Lcyx;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lezm;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1022
    invoke-static {}, Lezm;->i()Ljava/lang/String;

    move-result-object v9

    .line 1020
    invoke-static {v4, v9}, Lezm;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1023
    invoke-virtual {v5}, Lcyx;->d()[B

    move-result-object v5

    .line 1015
    invoke-virtual/range {v0 .. v5}, Lhgd;->a(Ljava/lang/String;Ljava/lang/String;ZZ[B)V

    goto :goto_1

    .line 1027
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1028
    const-string v0, "Babel_calls"

    const-string v1, "Nobody to invite."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1037
    :goto_2
    return-void

    .line 1032
    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1033
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1036
    invoke-static {}, Lhgd;->a()Lhgd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhgd;->a([Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static a(Lbfd;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 956
    sget-object v0, Lcfc;->s:Lcfc;

    if-eqz v0, :cond_0

    sget-object v0, Lcfc;->s:Lcfc;

    iget-object v0, v0, Lcfc;->q:Lcgw;

    if-eqz v0, :cond_0

    .line 957
    sget-object v0, Lcfc;->s:Lcfc;

    iget-object v0, v0, Lcfc;->q:Lcgw;

    invoke-virtual {v0}, Lcgw;->e()Lcgs;

    move-result-object v0

    .line 958
    invoke-virtual {v0}, Lcgs;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 959
    invoke-virtual {v0}, Lcgs;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lbfd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    const/4 v0, 0x1

    .line 964
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private y()V
    .locals 2

    .prologue
    .line 1304
    invoke-static {}, Laal;->w()V

    .line 1305
    iget-object v0, p0, Lcfc;->t:Lhiy;

    if-nez v0, :cond_0

    .line 1306
    new-instance v0, Lhiy;

    iget-object v1, p0, Lcfc;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lhiy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcfc;->t:Lhiy;

    .line 1308
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lhkx;
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcfc;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhkx;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 747
    invoke-direct {p0}, Lcfc;->y()V

    .line 748
    iget-object v0, p0, Lcfc;->t:Lhiy;

    invoke-virtual {v0}, Lhiy;->b()Lhks;

    move-result-object v0

    .line 749
    invoke-interface {v0, p1}, Lhks;->a(I)V

    .line 750
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 1075
    iget-object v0, p0, Lcfc;->q:Lcgw;

    if-eqz v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcfc;->q:Lcgw;

    .line 1079
    invoke-virtual {v0}, Lcgw;->U()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcfk;

    invoke-direct {v1, p0, p1}, Lcfk;-><init>(Lcfc;Landroid/content/Intent;)V

    .line 1080
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1090
    :cond_0
    return-void
.end method

.method public a(Lcgs;ZLjava/util/List;ZLcyx;IIZJLlbz;Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcgs;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcyx;",
            ">;Z",
            "Lcyx;",
            "IIZJ",
            "Llbz;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 981
    iget-object v0, p0, Lcfc;->q:Lcgw;

    .line 4188
    const-string v1, "Expected null"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 983
    new-instance v1, Lcgw;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcgw;-><init>(Lcgs;ZLjava/util/List;ZLcyx;IIZJLlbz;Ljava/lang/String;)V

    iput-object v1, p0, Lcfc;->q:Lcgw;

    .line 996
    iget-object v0, p0, Lcfc;->c:Landroid/content/Context;

    iget-object v1, p0, Lcfc;->q:Lcgw;

    invoke-virtual {v1}, Lcgw;->m()Ljava/lang/String;

    move-result-object v1

    .line 5084
    const-class v2, Lcfx;

    .line 5085
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 5086
    const-string v2, "ONGOING_CALL_SESSION"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5087
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5088
    const/16 v2, 0xaa3

    invoke-static {v2}, Laal;->c(I)V

    .line 5091
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "ONGOING_CALL_SESSION"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 998
    iget-object v0, p0, Lcfc;->q:Lcgw;

    invoke-virtual {v0}, Lcgw;->y()V

    .line 5247
    iget-object v0, p0, Lcfc;->d:Lfic;

    invoke-interface {v0}, Lfic;->b()V

    .line 5248
    sget-object v0, Lfzp;->c:Lfzr;

    iget-object v1, p0, Lcfc;->d:Lfic;

    invoke-virtual {v0, v1}, Lfzr;->a(Lfic;)Lfij;

    move-result-object v0

    new-instance v1, Lcfe;

    invoke-direct {v1, p0}, Lcfe;-><init>(Lcfc;)V

    .line 5249
    invoke-interface {v0, v1}, Lfij;->a(Lfin;)V

    .line 1000
    return-void
.end method

.method a(Lhcs;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1166
    const-string v0, "Babel_calls"

    const-string v1, "CallServiceHost.handleHangoutExited"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1167
    iget-object v0, p0, Lcfc;->q:Lcgw;

    if-nez v0, :cond_0

    .line 1190
    :goto_0
    return-void

    .line 1171
    :cond_0
    invoke-virtual {p0}, Lcfc;->x()V

    .line 1172
    iget-object v0, p0, Lcfc;->q:Lcgw;

    invoke-virtual {v0}, Lcgw;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6219
    invoke-static {}, Laal;->w()V

    .line 6220
    iget-object v0, p0, Lcfc;->w:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_1

    .line 7036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 6223
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcfc;->w:Landroid/telephony/PhoneStateListener;

    .line 6224
    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1176
    :cond_1
    iget-object v0, p0, Lcfc;->q:Lcgw;

    invoke-virtual {v0, p1}, Lcgw;->a(Lhcs;)V

    .line 1178
    iget-object v0, p0, Lcfc;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhku;

    .line 1179
    iget-object v2, p0, Lcfc;->q:Lcgw;

    invoke-virtual {v0, v2}, Lhku;->a(Lcgw;)V

    goto :goto_1

    .line 1182
    :cond_2
    iget-object v0, p0, Lcfc;->q:Lcgw;

    invoke-virtual {v0}, Lcgw;->e()Lcgs;

    move-result-object v0

    invoke-virtual {v0}, Lcgs;->s()V

    .line 1183
    iget-object v0, p0, Lcfc;->q:Lcgw;

    invoke-virtual {v0}, Lcgw;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcfc;->q:Lcgw;

    invoke-virtual {v0}, Lcgw;->K()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1184
    sget v0, Laal;->hJ:I

    invoke-static {v0}, Lezc;->a(I)V

    .line 1186
    :cond_3
    iget-object v0, p0, Lcfc;->c:Landroid/content/Context;

    iget-object v1, p0, Lcfc;->q:Lcgw;

    invoke-virtual {v1}, Lcgw;->m()Ljava/lang/String;

    move-result-object v1

    .line 7096
    const-class v2, Lcfx;

    .line 7097
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 7098
    const-string v2, "ONGOING_CALL_SESSION"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7099
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 7100
    const/16 v1, 0xa9b

    invoke-static {v1}, Laal;->c(I)V

    .line 7103
    :cond_4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ONGOING_CALL_SESSION"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1187
    const/4 v0, 0x0

    iput-object v0, p0, Lcfc;->q:Lcgw;

    .line 1189
    iget-object v0, p0, Lcfc;->d:Lfic;

    invoke-interface {v0}, Lfic;->d()V

    goto/16 :goto_0
.end method

.method public a(Lhkt;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 674
    invoke-direct {p0}, Lcfc;->y()V

    .line 675
    iget-object v0, p0, Lcfc;->t:Lhiy;

    invoke-virtual {v0, p1}, Lhiy;->a(Lhkt;)Lhks;

    move-result-object v3

    .line 676
    iget-object v0, p0, Lcfc;->r:Lhlj;

    invoke-interface {v3, v0}, Lhks;->a(Lhku;)V

    .line 678
    iget-object v0, p0, Lcfc;->q:Lcgw;

    invoke-virtual {v0}, Lcgw;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 679
    new-instance v4, Lhjz;

    iget-object v5, p0, Lcfc;->c:Landroid/content/Context;

    iget-object v0, p0, Lcfc;->q:Lcgw;

    .line 682
    invoke-virtual {v0}, Lcgw;->g()I

    move-result v0

    const/4 v6, 0x3

    if-ne v0, v6, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {v4, v5, v0}, Lhjz;-><init>(Landroid/content/Context;Z)V

    iput-object v4, p0, Lcfc;->i:Lhjz;

    .line 683
    iget-object v0, p0, Lcfc;->i:Lhjz;

    new-instance v4, Lhki;

    invoke-direct {v4, p0}, Lhki;-><init>(Lcfc;)V

    invoke-virtual {v0, v4}, Lhjz;->a(Lhki;)V

    .line 695
    iget-object v0, p0, Lcfc;->i:Lhjz;

    invoke-virtual {v0, v2}, Lhjz;->a(Z)V

    .line 696
    iget-object v0, p0, Lcfc;->i:Lhjz;

    invoke-virtual {v0, v1}, Lhjz;->c_(Z)V

    .line 697
    iget-object v0, p0, Lcfc;->i:Lhjz;

    invoke-interface {v3, v0}, Lhks;->a(Lhkq;)V

    .line 698
    iget-object v0, p0, Lcfc;->i:Lhjz;

    invoke-interface {v3, v0}, Lhks;->a(Lhkr;)V

    .line 701
    iget-object v0, p0, Lcfc;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhku;

    .line 702
    iget-object v2, p0, Lcfc;->i:Lhjz;

    .line 703
    invoke-virtual {v2}, Lhjz;->c()Lhke;

    move-result-object v2

    iget-object v3, p0, Lcfc;->i:Lhjz;

    invoke-virtual {v3}, Lhjz;->d()Ljava/util/Set;

    move-result-object v3

    .line 702
    invoke-virtual {v0, v2, v3}, Lhku;->a(Lhke;Ljava/util/Set;)V

    goto :goto_1

    :cond_0
    move v0, v2

    .line 682
    goto :goto_0

    .line 706
    :cond_1
    new-instance v0, Lcex;

    iget-object v1, p0, Lcfc;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcex;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcfc;->o:Lcex;

    .line 707
    iget-object v0, p0, Lcfc;->o:Lcex;

    new-instance v1, Lcfa;

    invoke-direct {v1, p0}, Lcfa;-><init>(Lcfc;)V

    invoke-virtual {v0, v1}, Lcex;->a(Lcfa;)V

    .line 716
    iget-object v0, p0, Lcfc;->o:Lcex;

    invoke-virtual {v0}, Lcex;->a()V

    .line 723
    :goto_2
    return-void

    .line 718
    :cond_2
    new-instance v0, Lhjy;

    invoke-direct {v0}, Lhjy;-><init>()V

    invoke-interface {v3, v0}, Lhks;->a(Lhkq;)V

    .line 719
    new-instance v0, Lhix;

    invoke-direct {v0}, Lhix;-><init>()V

    .line 720
    invoke-virtual {v0}, Lhix;->b()V

    .line 721
    invoke-interface {v3, v0}, Lhks;->a(Lhkr;)V

    goto :goto_2
.end method

.method public a(Lhku;)V
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcfc;->r:Lhlj;

    invoke-virtual {v0, p1}, Lhlj;->a(Lhku;)V

    .line 643
    iget-object v0, p0, Lcfc;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    iget-object v0, p0, Lcfc;->e:Lhkw;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcfc;->e:Lhkw;

    invoke-virtual {p1, v0}, Lhku;->a(Lhkw;)V

    .line 647
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 793
    iget-boolean v1, p0, Lcfc;->l:Z

    if-eq v1, p1, :cond_0

    .line 794
    iput-boolean p1, p0, Lcfc;->l:Z

    .line 795
    invoke-direct {p0}, Lcfc;->y()V

    .line 796
    iget-object v1, p0, Lcfc;->t:Lhiy;

    invoke-virtual {v1}, Lhiy;->b()Lhks;

    move-result-object v1

    .line 797
    if-nez v1, :cond_1

    .line 798
    const-string v1, "Babel_calls"

    const-string v2, "Attempted to change audio mute state without an active call."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 800
    :cond_1
    invoke-interface {v1}, Lhks;->n()Lhkq;

    move-result-object v1

    .line 801
    if-eqz v1, :cond_0

    .line 802
    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-interface {v1, v0}, Lhkq;->a(Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 617
    iget-boolean v0, p0, Lcfc;->u:Z

    if-nez v0, :cond_0

    .line 619
    new-instance v0, Lcjg;

    iget-object v1, p0, Lcfc;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcjg;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcfc;->a(Lhku;)V

    .line 620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcfc;->u:Z

    .line 622
    :cond_0
    return-void
.end method

.method public b(Lhkt;)V
    .locals 3

    .prologue
    .line 739
    invoke-direct {p0}, Lcfc;->y()V

    .line 740
    iget-object v0, p0, Lcfc;->t:Lhiy;

    invoke-virtual {v0}, Lhiy;->b()Lhks;

    move-result-object v0

    .line 741
    invoke-interface {v0}, Lhks;->k()Z

    move-result v1

    .line 4144
    const-string v2, "Expected condition to be false"

    invoke-static {v2, v1}, Lhbs;->b(Ljava/lang/String;Z)V

    .line 742
    iput-object p1, p0, Lcfc;->g:Lhkt;

    .line 743
    invoke-interface {v0, p1}, Lhks;->a(Lhkt;)V

    .line 744
    return-void
.end method

.method public b(Lhku;)V
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcfc;->r:Lhlj;

    invoke-virtual {v0, p1}, Lhlj;->b(Lhku;)V

    .line 651
    iget-object v0, p0, Lcfc;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 3134
    const-string v1, "Expected condition to be true"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 653
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 827
    invoke-direct {p0}, Lcfc;->y()V

    .line 828
    iget-object v0, p0, Lcfc;->t:Lhiy;

    invoke-virtual {v0}, Lhiy;->b()Lhks;

    move-result-object v0

    .line 829
    instance-of v1, v0, Lhcd;

    if-nez v1, :cond_0

    .line 830
    const-string v0, "Babel_calls"

    const-string v1, "Attempted to pin participant without an active call."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 834
    :goto_0
    return-void

    .line 833
    :cond_0
    check-cast v0, Lhcd;

    invoke-virtual {v0, p1}, Lhcd;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcyx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1051
    iget-object v0, p0, Lcfc;->q:Lcgw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcfc;->q:Lcgw;

    invoke-virtual {v0}, Lcgw;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    invoke-static {p1}, Lcfc;->a(Ljava/util/List;)V

    .line 1053
    iget-object v0, p0, Lcfc;->q:Lcgw;

    invoke-virtual {v0, p1}, Lcgw;->a(Ljava/util/List;)V

    .line 1055
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 813
    iget-boolean v1, p0, Lcfc;->m:Z

    if-eq v1, p1, :cond_0

    .line 814
    iput-boolean p1, p0, Lcfc;->m:Z

    .line 815
    invoke-direct {p0}, Lcfc;->y()V

    .line 816
    iget-object v1, p0, Lcfc;->t:Lhiy;

    invoke-virtual {v1}, Lhiy;->b()Lhks;

    move-result-object v1

    .line 817
    if-nez v1, :cond_1

    .line 818
    const-string v1, "Babel_calls"

    const-string v2, "Attempted to change audio playback mute state without an active call."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 820
    :cond_1
    invoke-interface {v1}, Lhks;->o()Lhkr;

    move-result-object v1

    iget-boolean v2, p0, Lcfc;->m:Z

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-interface {v1, v0}, Lhkr;->c_(Z)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 838
    invoke-direct {p0}, Lcfc;->y()V

    .line 839
    iget-object v0, p0, Lcfc;->t:Lhiy;

    invoke-virtual {v0}, Lhiy;->b()Lhks;

    move-result-object v0

    .line 840
    instance-of v1, v0, Lhcd;

    if-nez v1, :cond_0

    .line 841
    const-string v0, "Babel_calls"

    const-string v1, "Attempted to mute remote participant without an active call."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 845
    :goto_0
    return-void

    .line 844
    :cond_0
    check-cast v0, Lhcd;

    invoke-virtual {v0, p1}, Lhcd;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 627
    sget-object v0, Lcfc;->v:Lhde;

    if-nez v0, :cond_0

    .line 628
    new-instance v0, Lhde;

    invoke-direct {v0}, Lhde;-><init>()V

    .line 629
    sput-object v0, Lcfc;->v:Lhde;

    .line 3036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 629
    invoke-virtual {v0, v1}, Lhde;->a(Landroid/content/Context;)Z

    .line 631
    :cond_0
    sget-object v0, Lcfc;->v:Lhde;

    invoke-virtual {v0}, Lhde;->a()Z

    move-result v0

    return v0
.end method

.method public d()Lhkx;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcfc;->n:Lhkx;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 849
    invoke-direct {p0}, Lcfc;->y()V

    .line 850
    iget-object v0, p0, Lcfc;->t:Lhiy;

    invoke-virtual {v0}, Lhiy;->b()Lhks;

    move-result-object v0

    .line 851
    instance-of v1, v0, Lhcd;

    if-nez v1, :cond_0

    .line 852
    const-string v0, "Babel_calls"

    const-string v1, "Attempted to mute remote participant without an active call."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 856
    :goto_0
    return-void

    .line 855
    :cond_0
    check-cast v0, Lhcd;

    invoke-virtual {v0, p1}, Lhcd;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 726
    invoke-direct {p0}, Lcfc;->y()V

    .line 727
    iget-object v0, p0, Lcfc;->t:Lhiy;

    invoke-virtual {v0}, Lhiy;->b()Lhks;

    move-result-object v0

    .line 728
    if-nez v0, :cond_0

    .line 733
    :goto_0
    return-void

    .line 731
    :cond_0
    invoke-interface {v0}, Lhks;->k()Z

    move-result v1

    .line 3144
    const-string v2, "Expected condition to be false"

    invoke-static {v2, v1}, Lhbs;->b(Ljava/lang/String;Z)V

    .line 732
    const/16 v1, 0x1e

    invoke-interface {v0, v1}, Lhks;->a(I)V

    goto :goto_0
.end method

.method public f()Lhks;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcfc;->t:Lhiy;

    if-nez v0, :cond_0

    .line 754
    const/4 v0, 0x0

    .line 756
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcfc;->t:Lhiy;

    invoke-virtual {v0}, Lhiy;->b()Lhks;

    move-result-object v0

    goto :goto_0
.end method

.method public g()Lhkv;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 760
    iget-object v1, p0, Lcfc;->t:Lhiy;

    if-nez v1, :cond_1

    .line 764
    :cond_0
    :goto_0
    return-object v0

    .line 763
    :cond_1
    invoke-virtual {p0}, Lcfc;->f()Lhks;

    move-result-object v1

    .line 764
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lhks;->l()Lhkv;

    move-result-object v0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 772
    iget-boolean v0, p0, Lcfc;->l:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 776
    invoke-virtual {p0}, Lcfc;->k()Lhjk;

    move-result-object v0

    .line 777
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lhjk;->g()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Lhjz;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcfc;->i:Lhjz;

    return-object v0
.end method

.method public k()Lhjk;
    .locals 1

    .prologue
    .line 785
    sget-object v0, Lcfc;->s:Lcfc;

    invoke-virtual {v0}, Lcfc;->f()Lhks;

    move-result-object v0

    .line 786
    if-nez v0, :cond_0

    .line 787
    const/4 v0, 0x0

    .line 789
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lhks;->m()Lhlb;

    move-result-object v0

    check-cast v0, Lhjk;

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcfc;->e:Lhkw;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcfc;->q:Lcgw;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 875
    iget-boolean v0, p0, Lcfc;->f:Z

    return v0
.end method

.method public o()Lhbo;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 883
    iget-object v1, p0, Lcfc;->t:Lhiy;

    if-nez v1, :cond_0

    .line 884
    const-string v1, "Babel_calls"

    const-string v2, "Attempted to get mesi collections without an a call client."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 892
    :goto_0
    return-object v0

    .line 887
    :cond_0
    iget-object v1, p0, Lcfc;->t:Lhiy;

    invoke-virtual {v1}, Lhiy;->b()Lhks;

    move-result-object v1

    .line 888
    if-nez v1, :cond_1

    .line 889
    const-string v1, "Babel_calls"

    const-string v2, "Attempted to get mesi collections without an active call."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 892
    :cond_1
    invoke-interface {v1}, Lhks;->q()Lhbo;

    move-result-object v0

    goto :goto_0
.end method

.method public p()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lhkx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 900
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcfc;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public q()Lhkx;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 907
    invoke-virtual {p0}, Lcfc;->p()Ljava/util/List;

    move-result-object v1

    .line 908
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 909
    if-ne v0, v4, :cond_1

    .line 910
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhkx;

    .line 911
    invoke-virtual {v0}, Lhkx;->g()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lhkx;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 925
    :cond_0
    :goto_0
    return-object v0

    .line 914
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 915
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhkx;

    .line 916
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhkx;

    .line 918
    invoke-virtual {v0}, Lhkx;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lhkx;->m()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 919
    goto :goto_0

    .line 921
    :cond_2
    invoke-virtual {v1}, Lhkx;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lhkx;->m()Z

    move-result v1

    if-nez v1, :cond_0

    .line 925
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Lcgw;
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcfc;->q:Lcgw;

    return-object v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcfc;->q:Lcgw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcfc;->q:Lcgw;

    invoke-virtual {v0}, Lcgw;->H()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lcfc;->q:Lcgw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcfc;->q:Lcgw;

    invoke-virtual {v0}, Lcgw;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()V
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Lcfc;->q:Lcgw;

    invoke-virtual {v0}, Lcgw;->z()V

    .line 1004
    return-void
.end method

.method v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lhku;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1093
    iget-object v0, p0, Lcfc;->a:Ljava/util/List;

    return-object v0
.end method

.method public w()V
    .locals 3

    .prologue
    .line 1194
    invoke-static {}, Laal;->w()V

    .line 1195
    iget-object v0, p0, Lcfc;->w:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    .line 1196
    new-instance v0, Lcfl;

    invoke-direct {v0, p0}, Lcfl;-><init>(Lcfc;)V

    iput-object v0, p0, Lcfc;->w:Landroid/telephony/PhoneStateListener;

    .line 8036
    :cond_0
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1214
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcfc;->w:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    .line 1215
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1216
    return-void
.end method

.method x()V
    .locals 2

    .prologue
    .line 1228
    iget-object v0, p0, Lcfc;->q:Lcgw;

    if-nez v0, :cond_0

    .line 1238
    :goto_0
    return-void

    .line 1233
    :cond_0
    iget-object v0, p0, Lcfc;->q:Lcgw;

    .line 1235
    invoke-virtual {v0}, Lcgw;->e()Lcgs;

    move-result-object v0

    invoke-virtual {v0}, Lcgs;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1234
    invoke-static {v0, v1}, Ldvd;->a(Ljava/lang/String;Ljava/lang/String;)Lbfd;

    move-result-object v0

    .line 1237
    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    invoke-static {v0}, Lbft;->a(I)V

    goto :goto_0
.end method
