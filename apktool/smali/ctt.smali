.class public final Lctt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:[Ljava/lang/String;

.field static final b:Lksm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lksm",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final c:[Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:J

.field private static final g:J


# instance fields
.field final d:Landroid/content/Context;

.field private final h:Landroid/content/ContentResolver;

.field private final i:I

.field private final j:Z

.field private k:Lkwt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkwt",
            "<",
            "Ljava/lang/String;",
            "Lctw;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lkwt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkwt",
            "<",
            "Ljava/lang/String;",
            "Lctz;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lctu;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lctu;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lctu;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lezj;

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "lookup"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v6

    const-string v1, "photo_uri"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data4"

    aput-object v2, v0, v1

    sput-object v0, Lctt;->a:[Ljava/lang/String;

    .line 50080
    new-instance v0, Lkso;

    invoke-direct {v0}, Lkso;-><init>()V

    .line 118
    const-string v1, "data1"

    const/4 v2, 0x6

    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkso;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkso;

    move-result-object v0

    const-string v1, "data2"

    const/4 v2, 0x7

    .line 120
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkso;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkso;

    move-result-object v0

    const-string v1, "data3"

    const/16 v2, 0x8

    .line 121
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkso;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkso;

    move-result-object v0

    const-string v1, "data4"

    const/16 v2, 0x9

    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkso;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkso;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lkso;->a()Lksm;

    move-result-object v0

    sput-object v0, Lctt;->b:Lksm;

    .line 130
    const-string v0, " contact_id in default_directory AND %s IN (\'%s\',\'%s\',\'%s\') AND %s is null"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "mimetype"

    aput-object v2, v1, v3

    const-string v2, "vnd.android.cursor.item/phone_v2"

    aput-object v2, v1, v4

    const-string v2, "vnd.android.cursor.item/email_v2"

    aput-object v2, v1, v5

    const-string v2, "vnd.android.cursor.item/photo"

    aput-object v2, v1, v6

    const-string v2, "data_set"

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lctt;->e:Ljava/lang/String;

    .line 140
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "gaia_id"

    aput-object v1, v0, v4

    const-string v1, "profile_photo_url"

    aput-object v1, v0, v5

    sput-object v0, Lctt;->c:[Ljava/lang/String;

    .line 149
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lctt;->f:J

    .line 150
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lctt;->g:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;IZ)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2099
    const-string v0, "expectedKeys"

    invoke-static {v1, v0}, Laal;->c(ILjava/lang/String;)I

    .line 2100
    new-instance v0, Lkwv;

    invoke-direct {v0, v1}, Lkwv;-><init>(I)V

    .line 158
    invoke-virtual {v0}, Lkxa;->d()Lkwz;

    move-result-object v0

    invoke-virtual {v0}, Lkwz;->a()Lkwt;

    move-result-object v0

    iput-object v0, p0, Lctt;->k:Lkwt;

    .line 3099
    const-string v0, "expectedKeys"

    invoke-static {v1, v0}, Laal;->c(ILjava/lang/String;)I

    .line 3100
    new-instance v0, Lkwv;

    invoke-direct {v0, v1}, Lkwv;-><init>(I)V

    .line 160
    invoke-virtual {v0}, Lkxa;->d()Lkwz;

    move-result-object v0

    invoke-virtual {v0}, Lkwz;->a()Lkwt;

    move-result-object v0

    iput-object v0, p0, Lctt;->l:Lkwt;

    .line 161
    new-instance v0, Lhq;

    invoke-direct {v0}, Lhq;-><init>()V

    iput-object v0, p0, Lctt;->m:Ljava/util/Map;

    .line 162
    new-instance v0, Lhq;

    invoke-direct {v0}, Lhq;-><init>()V

    iput-object v0, p0, Lctt;->n:Ljava/util/Map;

    .line 180
    iput-object p1, p0, Lctt;->d:Landroid/content/Context;

    .line 181
    iput-object p2, p0, Lctt;->h:Landroid/content/ContentResolver;

    .line 182
    iput p3, p0, Lctt;->i:I

    .line 183
    iput-boolean p4, p0, Lctt;->j:Z

    .line 184
    return-void
.end method

.method private static a(Lkwt;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkwt",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lctv;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 514
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 515
    invoke-interface/range {p0 .. p0}, Lkwt;->k()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 516
    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Lkwt;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v14

    .line 517
    const/4 v8, 0x0

    .line 518
    const/4 v7, 0x0

    .line 519
    const/4 v6, 0x0

    .line 520
    const/4 v3, 0x0

    .line 521
    const-wide/16 v4, 0x0

    .line 522
    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move v9, v8

    move-object v8, v7

    move-object/from16 v18, v6

    move-wide v6, v4

    move-object v4, v3

    move-object/from16 v5, v18

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lctv;

    .line 523
    iget-boolean v0, v3, Lctv;->f:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 524
    const/4 v9, 0x1

    .line 526
    :cond_1
    iget-object v0, v3, Lctv;->g:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 527
    iget-object v8, v3, Lctv;->g:Ljava/lang/String;

    .line 529
    :cond_2
    iget-object v0, v3, Lctv;->h:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 530
    iget-object v5, v3, Lctv;->h:Ljava/lang/String;

    .line 532
    :cond_3
    iget-object v0, v3, Lctv;->i:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 533
    iget-object v4, v3, Lctv;->i:Ljava/lang/String;

    .line 535
    :cond_4
    iget-wide v0, v3, Lctv;->j:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    goto :goto_1

    .line 537
    :cond_5
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    .line 538
    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v3

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v3, v0, :cond_6

    .line 539
    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lctv;

    .line 540
    iput-boolean v9, v3, Lctv;->f:Z

    .line 541
    iput-object v8, v3, Lctv;->g:Ljava/lang/String;

    .line 542
    iput-object v5, v3, Lctv;->h:Ljava/lang/String;

    .line 543
    iput-object v4, v3, Lctv;->i:Ljava/lang/String;

    .line 544
    iput-wide v6, v3, Lctv;->j:J

    .line 545
    iput-boolean v15, v3, Lctv;->e:Z

    goto :goto_2

    .line 548
    :cond_6
    if-nez v9, :cond_0

    sub-long v4, v12, v6

    sget-wide v6, Lctt;->f:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 549
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 552
    :cond_7
    return-object v10
.end method

.method private static a(Lbha;Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbha;",
            "Ljava/util/Collection",
            "<",
            "Lctu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 741
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctu;

    .line 743
    const-string v2, "merged_contacts"

    const-string v3, "contact_lookup_key = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 47868
    iget-object v0, v0, Lctu;->c:Ljava/lang/String;

    .line 745
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    .line 743
    invoke-virtual {p0, v2, v3, v4}, Lbha;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 747
    :cond_0
    return-void
.end method

.method private b()V
    .locals 14

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 399
    iget-object v0, p0, Lctt;->k:Lkwt;

    invoke-static {v0}, Lctt;->a(Lkwt;)Ljava/util/List;

    move-result-object v6

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 402
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 404
    iget v0, p0, Lctt;->i:I

    .line 26376
    sget-object v1, Ldvp;->z:Ldml;

    invoke-virtual {v1, v0}, Ldml;->b(I)Z

    move-result v0

    .line 404
    if-eqz v0, :cond_4

    .line 26421
    iget v0, p0, Lctt;->i:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 26422
    invoke-static {v0, v1, v2, v6}, Ldng;->a(IILjava/lang/Integer;Ljava/util/Collection;)Ldng;

    move-result-object v0

    .line 26425
    invoke-virtual {v0}, Ldng;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    .line 410
    :goto_0
    if-eqz v0, :cond_9

    .line 411
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 412
    iget-object v2, p0, Lctt;->k:Lkwt;

    invoke-interface {v2, v0}, Lkwt;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctv;

    .line 413
    iput-wide v8, v0, Lctv;->j:J

    goto :goto_1

    .line 26429
    :cond_1
    invoke-virtual {v0}, Ldng;->e()Ldqf;

    move-result-object v0

    check-cast v0, Ldyk;

    .line 26430
    iget-object v0, v0, Ldyk;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 26431
    iget-object v1, p0, Lctt;->k:Lkwt;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lkwt;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 26432
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldyl;

    .line 26433
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lctv;

    .line 26434
    iget-object v5, v0, Ldyl;->c:Ljava/lang/String;

    iput-object v5, v1, Lctv;->h:Ljava/lang/String;

    .line 26435
    iget-object v5, v0, Ldyl;->b:Ljava/lang/String;

    iput-object v5, v1, Lctv;->g:Ljava/lang/String;

    .line 26436
    iget-object v5, v0, Ldyl;->d:Ljava/lang/String;

    iput-object v5, v1, Lctv;->i:Ljava/lang/String;

    .line 26437
    iget-boolean v5, v0, Ldyl;->a:Z

    iput-boolean v5, v1, Lctv;->f:Z

    .line 26438
    iget-object v5, v0, Ldyl;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    iput-boolean v5, v1, Lctv;->e:Z

    goto :goto_2

    :cond_3
    move v0, v4

    .line 26441
    goto/16 :goto_0

    .line 26446
    :cond_4
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 26447
    new-instance v1, Lctx;

    .line 27122
    invoke-direct {v1, p0, v0}, Lctx;-><init>(Lctt;Landroid/os/ConditionVariable;)V

    .line 26448
    iget v2, p0, Lctt;->i:I

    .line 28122
    invoke-virtual {v1, v6, v2}, Lctx;->a(Ljava/util/Collection;I)V

    .line 26449
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 29122
    iget-object v0, v1, Lctx;->a:Ldrb;

    .line 26452
    if-nez v0, :cond_5

    :goto_3
    move v0, v3

    .line 407
    goto/16 :goto_0

    .line 26457
    :cond_5
    invoke-virtual {v0}, Ldrb;->k()Ljava/util/List;

    move-result-object v0

    .line 26459
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyu;

    .line 26460
    iget-object v1, v0, Leyu;->b:Ljava/io/Serializable;

    check-cast v1, [Lcyx;

    array-length v10, v1

    move v5, v3

    :goto_4
    if-ge v5, v10, :cond_6

    aget-object v11, v1, v5

    .line 26461
    if-eqz v11, :cond_7

    .line 26462
    iget-object v12, p0, Lctt;->k:Lkwt;

    iget-object v2, v0, Leyu;->a:Ljava/io/Serializable;

    check-cast v2, Ldtt;

    iget-object v2, v2, Ldtt;->c:Ljava/lang/String;

    invoke-interface {v12, v2}, Lkwt;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    .line 26463
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lctv;

    .line 26464
    iget-object v13, v11, Lcyx;->h:Ljava/lang/String;

    iput-object v13, v2, Lctv;->h:Ljava/lang/String;

    .line 26465
    invoke-virtual {v11}, Lcyx;->b()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lctv;->g:Ljava/lang/String;

    .line 26466
    iget-object v13, v11, Lcyx;->e:Ljava/lang/String;

    iput-object v13, v2, Lctv;->i:Ljava/lang/String;

    .line 26467
    iget-boolean v13, v11, Lcyx;->z:Z

    iput-boolean v13, v2, Lctv;->f:Z

    .line 26468
    invoke-virtual {v11}, Lcyx;->b()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    iput-boolean v13, v2, Lctv;->e:Z

    goto :goto_5

    .line 26460
    :cond_7
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_4

    :cond_8
    move v3, v4

    .line 26473
    goto :goto_3

    .line 418
    :cond_9
    return-void
.end method

.method private b(Lbha;Ljava/util/Collection;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbha;",
            "Ljava/util/Collection",
            "<",
            "Lctu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 753
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 754
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 755
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctu;

    .line 48895
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 48896
    const-string v1, "contact_lookup_key"

    iget-object v5, v0, Lctu;->c:Ljava/lang/String;

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48897
    const-string v1, "contact_id"

    iget-object v5, v0, Lctu;->d:Ljava/lang/Long;

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 48898
    const-string v1, "raw_contact_id"

    iget-object v5, v0, Lctu;->e:Ljava/lang/Long;

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 48899
    const-string v1, "display_name"

    iget-object v5, v0, Lctu;->f:Ljava/lang/String;

    .line 48900
    invoke-static {v5}, Lezm;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 48899
    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48901
    const-string v1, "avatar_url"

    iget-object v5, v0, Lctu;->g:Ljava/lang/String;

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48902
    const-string v1, "is_frequent"

    iget-boolean v5, v0, Lctu;->h:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 757
    const-string v1, "merged_contacts"

    invoke-virtual {p1, v1, v2}, Lbha;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 49868
    iget-object v1, v0, Lctu;->i:Ljava/util/Map;

    .line 760
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lctz;

    .line 50045
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 50046
    const-string v8, "lookup_data_type"

    const/4 v9, 0x0

    .line 50047
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 50046
    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 50048
    const-string v8, "lookup_data"

    iget-object v9, v1, Lctz;->a:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50049
    const-string v8, "lookup_data_display"

    iget-object v9, v1, Lctz;->a:Ljava/lang/String;

    .line 50050
    invoke-static {v9}, Lezm;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 50049
    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50051
    const-string v8, "lookup_data_standardized"

    iget-object v9, v1, Lctz;->b:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50052
    const-string v8, "lookup_data_search"

    iget-object v9, v1, Lctz;->c:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50053
    const-string v8, "lookup_data_label"

    iget-object v9, v1, Lctz;->d:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50054
    const-string v8, "is_hangouts_user"

    iget-boolean v9, v1, Lctz;->f:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 50055
    const-string v8, "gaia_id"

    iget-object v9, v1, Lctz;->g:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50056
    const-string v8, "needs_gaia_ids_resolved"

    iget-boolean v9, v1, Lctz;->e:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 50057
    const-string v8, "avatar_url"

    iget-object v9, v1, Lctz;->h:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50058
    const-string v8, "display_name"

    iget-object v9, v1, Lctz;->i:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50059
    const-string v8, "last_checked_ts"

    iget-wide v10, v1, Lctz;->j:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 762
    const-string v1, "merged_contact_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 763
    const-string v1, "merged_contact_details"

    invoke-virtual {p1, v1, v3}, Lbha;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 764
    iget v1, p0, Lctt;->u:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lctt;->u:I

    goto/16 :goto_1

    .line 50061
    :cond_1
    iget-object v1, v0, Lctu;->j:Ljava/util/Map;

    .line 767
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lctw;

    .line 50063
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 50064
    const-string v8, "lookup_data_type"

    const/4 v9, 0x1

    .line 50065
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 50064
    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 50066
    const-string v8, "lookup_data"

    iget-object v9, v1, Lctw;->a:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50067
    const-string v8, "lookup_data_display"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 50068
    const-string v8, "lookup_data_standardized"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 50069
    const-string v8, "lookup_data_search"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 50070
    const-string v8, "lookup_data_label"

    iget-object v9, v1, Lctw;->d:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50071
    const-string v8, "is_hangouts_user"

    iget-boolean v9, v1, Lctw;->f:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 50072
    const-string v8, "gaia_id"

    iget-object v9, v1, Lctw;->g:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50073
    const-string v8, "needs_gaia_ids_resolved"

    iget-boolean v9, v1, Lctw;->e:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 50074
    const-string v8, "avatar_url"

    iget-object v9, v1, Lctw;->h:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50075
    const-string v8, "display_name"

    iget-object v9, v1, Lctw;->i:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50076
    const-string v8, "last_checked_ts"

    iget-wide v10, v1, Lctw;->j:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 769
    const-string v1, "merged_contact_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 770
    const-string v1, "merged_contact_details"

    invoke-virtual {p1, v1, v3}, Lbha;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 771
    iget v1, p0, Lctt;->v:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lctt;->v:I

    goto :goto_2

    .line 50078
    :cond_2
    iget-object v1, v0, Lctu;->b:Ljava/lang/String;

    .line 773
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 774
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 775
    const-string v1, "merged_contact_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 776
    const-string v1, "lookup_data_type"

    const/4 v5, 0x2

    .line 777
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 776
    invoke-virtual {v3, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 778
    const-string v1, "lookup_data"

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 779
    const-string v1, "lookup_data_standardized"

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 780
    const-string v1, "lookup_data_search"

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 781
    const-string v1, "lookup_data_label"

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 782
    const-string v1, "is_hangouts_user"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 783
    const-string v1, "needs_gaia_ids_resolved"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 784
    const-string v1, "gaia_id"

    .line 50079
    iget-object v0, v0, Lctu;->b:Ljava/lang/String;

    .line 784
    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const-string v0, "avatar_url"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 786
    const-string v0, "display_name"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 787
    const-string v0, "last_checked_ts"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 789
    const-string v0, "merged_contact_details"

    invoke-virtual {p1, v0, v3}, Lbha;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 790
    iget v0, p0, Lctt;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lctt;->w:I

    goto/16 :goto_0

    .line 793
    :cond_3
    return-void
.end method

.method private c()V
    .locals 8

    .prologue
    .line 482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 483
    iget-object v0, p0, Lctt;->l:Lkwt;

    invoke-static {v0}, Lctt;->a(Lkwt;)Ljava/util/List;

    move-result-object v4

    .line 484
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lctt;->i:I

    .line 29376
    sget-object v1, Ldvp;->z:Ldml;

    invoke-virtual {v1, v0}, Ldml;->b(I)Z

    move-result v0

    .line 484
    if-eqz v0, :cond_3

    .line 485
    iget v0, p0, Lctt;->i:I

    const/4 v1, 0x3

    const/4 v5, 0x2

    .line 487
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 486
    invoke-static {v0, v1, v5, v4}, Ldng;->a(IILjava/lang/Integer;Ljava/util/Collection;)Ldng;

    move-result-object v0

    .line 489
    invoke-virtual {v0}, Ldng;->m()Z

    move-result v1

    if-nez v1, :cond_3

    .line 491
    invoke-virtual {v0}, Ldng;->e()Ldqf;

    move-result-object v0

    check-cast v0, Ldyk;

    .line 492
    iget-object v0, v0, Ldyk;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 493
    iget-object v1, p0, Lctt;->l:Lkwt;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Lkwt;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 494
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldyl;

    .line 495
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lctv;

    .line 496
    iget-object v7, v0, Ldyl;->c:Ljava/lang/String;

    iput-object v7, v1, Lctv;->h:Ljava/lang/String;

    .line 497
    iget-object v7, v0, Ldyl;->d:Ljava/lang/String;

    iput-object v7, v1, Lctv;->i:Ljava/lang/String;

    .line 498
    iget-boolean v7, v0, Ldyl;->a:Z

    iput-boolean v7, v1, Lctv;->f:Z

    goto :goto_0

    .line 502
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 503
    iget-object v4, p0, Lctt;->l:Lkwt;

    invoke-interface {v4, v0}, Lkwt;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctv;

    .line 504
    iput-wide v2, v0, Lctv;->j:J

    goto :goto_1

    .line 509
    :cond_3
    return-void
.end method

.method private d()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lctu;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x1

    .line 30060
    new-instance v7, Lkrs;

    invoke-direct {v7}, Lkrs;-><init>()V

    .line 560
    iget-object v0, p0, Lctt;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctu;

    .line 30868
    iget-object v1, v0, Lctu;->i:Ljava/util/Map;

    .line 561
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lctv;

    .line 562
    iget-object v4, v1, Lctv;->g:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 563
    iget-object v1, v1, Lctv;->g:Ljava/lang/String;

    invoke-interface {v7, v1, v0}, Lkwt;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 31868
    :cond_2
    iget-object v1, v0, Lctu;->j:Ljava/util/Map;

    .line 566
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lctv;

    .line 567
    iget-object v4, v1, Lctv;->g:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 568
    iget-object v1, v1, Lctv;->g:Ljava/lang/String;

    invoke-interface {v7, v1, v0}, Lkwt;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 573
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 574
    sget-object v0, Lcom/google/android/apps/hangouts/content/EsProvider;->j:Landroid/net/Uri;

    iget v1, p0, Lctt;->i:I

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/content/EsProvider;->a(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    .line 575
    invoke-static {v0, v5}, Lcom/google/android/apps/hangouts/content/EsProvider;->b(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 578
    :try_start_0
    iget-object v0, p0, Lctt;->h:Landroid/content/ContentResolver;

    sget-object v2, Lctt;->c:[Ljava/lang/String;

    const-string v3, "name != \'\' AND chat_id != ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v9, p0, Lctt;->i:I

    .line 583
    invoke-static {v9}, Ldvd;->e(I)Lbfd;

    move-result-object v9

    invoke-virtual {v9}, Lbfd;->b()Lczb;

    move-result-object v9

    iget-object v9, v9, Lczb;->b:Ljava/lang/String;

    aput-object v9, v4, v5

    const/4 v5, 0x0

    .line 578
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v6

    .line 587
    :cond_5
    :goto_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 588
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-interface {v7, v0}, Lkwt;->c(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 592
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 593
    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 594
    new-instance v3, Lctu;

    .line 32868
    invoke-direct {v3}, Lctu;-><init>()V

    .line 33868
    iput-object v2, v3, Lctu;->g:Ljava/lang/String;

    .line 34868
    iput-object v1, v3, Lctu;->f:Ljava/lang/String;

    .line 35868
    iput-object v0, v3, Lctu;->b:Ljava/lang/String;

    .line 598
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36868
    iget-object v0, v3, Lctu;->b:Ljava/lang/String;

    .line 599
    invoke-interface {v7, v0, v3}, Lkwt;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 602
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_6

    .line 603
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 602
    :cond_7
    if-eqz v6, :cond_8

    .line 603
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 607
    :cond_8
    sget-object v0, Lcom/google/android/apps/hangouts/content/EsProvider;->j:Landroid/net/Uri;

    iget v1, p0, Lctt;->i:I

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/content/EsProvider;->a(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    .line 609
    invoke-static {v0, v10}, Lcom/google/android/apps/hangouts/content/EsProvider;->b(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 611
    :try_start_2
    iget-object v0, p0, Lctt;->h:Landroid/content/ContentResolver;

    sget-object v2, Lctt;->c:[Ljava/lang/String;

    const-string v3, "name != \'\' AND chat_id != ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v9, p0, Lctt;->i:I

    .line 616
    invoke-static {v9}, Ldvd;->e(I)Lbfd;

    move-result-object v9

    invoke-virtual {v9}, Lbfd;->b()Lczb;

    move-result-object v9

    iget-object v9, v9, Lczb;->b:Ljava/lang/String;

    aput-object v9, v4, v5

    const/4 v5, 0x0

    .line 611
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 620
    :cond_9
    :goto_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 621
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 622
    invoke-interface {v7, v0}, Lkwt;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 623
    invoke-interface {v7, v0}, Lkwt;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctu;

    .line 37868
    const/4 v2, 0x1

    iput-boolean v2, v0, Lctu;->h:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    .line 639
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_a

    .line 640
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0

    .line 628
    :cond_b
    const/4 v1, 0x0

    :try_start_3
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 629
    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 630
    new-instance v3, Lctu;

    .line 38868
    invoke-direct {v3}, Lctu;-><init>()V

    .line 39868
    iput-object v2, v3, Lctu;->g:Ljava/lang/String;

    .line 40868
    iput-object v1, v3, Lctu;->f:Ljava/lang/String;

    .line 41868
    iput-object v0, v3, Lctu;->b:Ljava/lang/String;

    .line 42868
    const/4 v0, 0x1

    iput-boolean v0, v3, Lctu;->h:Z

    .line 635
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43868
    iget-object v0, v3, Lctu;->b:Ljava/lang/String;

    .line 636
    invoke-interface {v7, v0, v3}, Lkwt;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    .line 639
    :cond_c
    if-eqz v6, :cond_d

    .line 640
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 643
    :cond_d
    return-object v8

    .line 602
    :catchall_2
    move-exception v0

    move-object v1, v6

    goto/16 :goto_3
.end method

.method private e()V
    .locals 14

    .prologue
    const/16 v13, 0x64

    const/16 v12, 0x14

    const/16 v11, 0x21

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 647
    iget-object v0, p0, Lctt;->d:Landroid/content/Context;

    const-class v1, Lbhg;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhg;

    iget v1, p0, Lctt;->i:I

    .line 648
    invoke-interface {v0, v1}, Lbhg;->a(I)Lbgw;

    move-result-object v0

    .line 649
    invoke-virtual {v0}, Lbgw;->b()Lbha;

    move-result-object v3

    .line 651
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 652
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 653
    iget-object v0, p0, Lctt;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctu;

    .line 44868
    invoke-virtual {v0}, Lctu;->a()Z

    move-result v1

    .line 654
    if-eqz v1, :cond_0

    .line 655
    iget v1, p0, Lctt;->x:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lctt;->x:I

    .line 657
    :cond_0
    iget-object v1, p0, Lctt;->m:Ljava/util/Map;

    .line 45868
    iget-object v7, v0, Lctu;->c:Ljava/lang/String;

    .line 657
    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 658
    iget-object v1, p0, Lctt;->m:Ljava/util/Map;

    .line 46868
    iget-object v7, v0, Lctu;->c:Ljava/lang/String;

    .line 658
    invoke-interface {v1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lctu;

    .line 659
    invoke-virtual {v0, v1}, Lctu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 660
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 662
    :cond_1
    iget v0, p0, Lctt;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lctt;->t:I

    goto :goto_0

    .line 665
    :cond_2
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 668
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lctt;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 670
    const-string v0, "Babel"

    iget v6, p0, Lctt;->t:I

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x35

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Leaving "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " existing mergedContacts unchanged"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 673
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 674
    add-int/lit8 v6, v0, 0x19

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 675
    invoke-interface {v4, v0, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    .line 676
    invoke-virtual {v3}, Lbha;->a()V

    .line 677
    invoke-static {v3, v6}, Lctt;->a(Lbha;Ljava/util/Collection;)V

    .line 678
    invoke-direct {p0, v3, v6}, Lctt;->b(Lbha;Ljava/util/Collection;)V

    .line 679
    invoke-virtual {v3}, Lbha;->b()V

    .line 680
    invoke-virtual {v3}, Lbha;->c()V

    .line 681
    iget v7, p0, Lctt;->r:I

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lctt;->r:I

    .line 682
    iget-object v7, p0, Lctt;->p:Lezj;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "updateMergedContacts("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lezj;->a(Ljava/lang/String;)V

    .line 683
    iget-object v6, p0, Lctt;->h:Landroid/content/ContentResolver;

    sget-object v7, Lctr;->d:Landroid/net/Uri;

    invoke-virtual {v6, v7, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 673
    add-int/lit8 v0, v0, 0x19

    goto :goto_1

    .line 685
    :cond_4
    const-string v0, "Babel"

    iget v4, p0, Lctt;->r:I

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x2b

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Updated "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " existing mergedContacts"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v6}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 688
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 689
    add-int/lit8 v4, v0, 0x19

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 690
    invoke-interface {v5, v0, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    .line 691
    invoke-virtual {v3}, Lbha;->a()V

    .line 692
    invoke-direct {p0, v3, v4}, Lctt;->b(Lbha;Ljava/util/Collection;)V

    .line 693
    invoke-virtual {v3}, Lbha;->b()V

    .line 694
    invoke-virtual {v3}, Lbha;->c()V

    .line 695
    iget v6, p0, Lctt;->q:I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lctt;->q:I

    .line 696
    iget-object v6, p0, Lctt;->p:Lezj;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "insertMergedContacts("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lezj;->a(Ljava/lang/String;)V

    .line 697
    iget-object v4, p0, Lctt;->h:Landroid/content/ContentResolver;

    sget-object v6, Lctr;->d:Landroid/net/Uri;

    invoke-virtual {v4, v6, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 688
    add-int/lit8 v0, v0, 0x19

    goto :goto_2

    .line 699
    :cond_5
    const-string v0, "Babel"

    iget v4, p0, Lctt;->q:I

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x27

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Inserted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " new mergedContacts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 702
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 703
    add-int/lit8 v4, v0, 0x19

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 704
    invoke-interface {v1, v0, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    .line 705
    invoke-virtual {v3}, Lbha;->a()V

    .line 706
    invoke-static {v3, v4}, Lctt;->a(Lbha;Ljava/util/Collection;)V

    .line 707
    invoke-virtual {v3}, Lbha;->b()V

    .line 708
    invoke-virtual {v3}, Lbha;->c()V

    .line 709
    iget v5, p0, Lctt;->s:I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lctt;->s:I

    .line 710
    iget-object v5, p0, Lctt;->p:Lezj;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "deleteMergedContacts("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lezj;->a(Ljava/lang/String;)V

    .line 711
    iget-object v4, p0, Lctt;->h:Landroid/content/ContentResolver;

    sget-object v5, Lctr;->d:Landroid/net/Uri;

    invoke-virtual {v4, v5, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 702
    add-int/lit8 v0, v0, 0x19

    goto :goto_3

    .line 713
    :cond_6
    const-string v0, "Babel"

    iget v1, p0, Lctt;->s:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x26

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Deleted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " old mergedContacts"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 717
    invoke-virtual {v3}, Lbha;->a()V

    .line 718
    const-string v0, "merged_contacts"

    const-string v1, "contact_lookup_key IS NULL OR contact_lookup_key = \'\'"

    invoke-virtual {v3, v0, v1, v10}, Lbha;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 721
    iget-object v0, p0, Lctt;->p:Lezj;

    const-string v1, "delete old suggested contacts"

    invoke-virtual {v0, v1}, Lezj;->a(Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lctt;->o:Ljava/util/List;

    invoke-direct {p0, v3, v0}, Lctt;->b(Lbha;Ljava/util/Collection;)V

    .line 725
    iget v0, p0, Lctt;->x:I

    iget-object v1, p0, Lctt;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lctt;->x:I

    .line 726
    invoke-virtual {v3}, Lbha;->b()V

    .line 727
    invoke-virtual {v3}, Lbha;->c()V

    .line 728
    iget-object v0, p0, Lctt;->p:Lezj;

    const-string v1, "write new suggested contacts"

    invoke-virtual {v0, v1}, Lezj;->a(Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lctt;->h:Landroid/content/ContentResolver;

    sget-object v1, Lctr;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 731
    const-string v0, "Babel"

    iget v1, p0, Lctt;->u:I

    iget v3, p0, Lctt;->v:I

    iget v4, p0, Lctt;->w:I

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x50

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Persisted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " phone numbers, "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " emails, and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " gaiaIds"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 732
    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 734
    iget v2, p0, Lctt;->i:I

    iget-object v0, p0, Lctt;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lctt;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 47796
    iget-object v0, p0, Lctt;->d:Landroid/content/Context;

    const-class v3, Lhba;

    invoke-static {v0, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    .line 47797
    if-nez v1, :cond_7

    .line 47799
    invoke-interface {v0, v2}, Lhba;->a(I)Lhaw;

    move-result-object v0

    const/16 v1, 0xa08

    .line 47800
    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 47802
    invoke-interface {v0, v1}, Lhax;->a(Ljava/util/concurrent/TimeUnit;)V

    :goto_4
    return-void

    .line 47805
    :cond_7
    invoke-interface {v0, v2}, Lhba;->a(I)Lhaw;

    move-result-object v3

    const/16 v4, 0x9f5

    .line 47806
    invoke-interface {v3, v4}, Lhaw;->a(I)Lhax;

    move-result-object v3

    .line 47807
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Lhax;->a(Ljava/lang/Integer;)Lhax;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 47808
    invoke-interface {v3, v4}, Lhax;->a(Ljava/util/concurrent/TimeUnit;)V

    .line 47811
    iget v3, p0, Lctt;->x:I

    if-nez v3, :cond_a

    .line 47812
    if-gt v1, v12, :cond_8

    .line 47813
    const/16 v1, 0xa09

    .line 47835
    :goto_5
    invoke-interface {v0, v2}, Lhba;->a(I)Lhaw;

    move-result-object v0

    .line 47836
    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    iget v1, p0, Lctt;->x:I

    .line 47837
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lhax;->a(Ljava/lang/Integer;)Lhax;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 47838
    invoke-interface {v0, v1}, Lhax;->a(Ljava/util/concurrent/TimeUnit;)V

    goto :goto_4

    .line 47815
    :cond_8
    if-gt v1, v13, :cond_9

    .line 47816
    const/16 v1, 0xab7

    goto :goto_5

    .line 47819
    :cond_9
    const/16 v1, 0xab9

    goto :goto_5

    .line 47823
    :cond_a
    if-gt v1, v12, :cond_b

    .line 47824
    const/16 v1, 0x9f6

    goto :goto_5

    .line 47826
    :cond_b
    if-gt v1, v13, :cond_c

    .line 47827
    const/16 v1, 0xab6

    goto :goto_5

    .line 47830
    :cond_c
    const/16 v1, 0xab8

    goto :goto_5
.end method


# virtual methods
.method public a()V
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 197
    iget-boolean v0, p0, Lctt;->y:Z

    .line 3144
    const-string v1, "Expected condition to be false"

    invoke-static {v1, v0}, Lhbs;->b(Ljava/lang/String;Z)V

    .line 198
    iput-boolean v8, p0, Lctt;->y:Z

    .line 199
    iget-object v0, p0, Lctt;->d:Landroid/content/Context;

    const-class v1, Ldcj;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldcj;

    .line 200
    const-string v1, "android.permission.READ_CONTACTS"

    .line 201
    invoke-interface {v0, v1}, Ldcj;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.WRITE_CONTACTS"

    .line 202
    invoke-interface {v0, v1}, Ldcj;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v6, v8

    .line 205
    :goto_0
    :try_start_0
    iget-object v0, p0, Lctt;->d:Landroid/content/Context;

    const-class v1, Lhpz;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    iget v1, p0, Lctt;->i:I

    .line 206
    invoke-interface {v0, v1}, Lhpz;->b(I)Lhqc;

    move-result-object v11

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "last_merged_ts"

    const-wide/16 v4, 0x0

    invoke-virtual {v11, v2, v4, v5}, Lhqc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 211
    const-string v2, "last_merged_read_local_contacts"

    invoke-virtual {v11, v2}, Lhqc;->d(Ljava/lang/String;)Z

    move-result v2

    if-ne v6, v2, :cond_2

    sget-wide v2, Lctt;->g:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-boolean v0, p0, Lctt;->j:Z

    if-nez v0, :cond_2

    .line 250
    :goto_1
    return-void

    :cond_1
    move v6, v7

    .line 202
    goto :goto_0

    .line 216
    :cond_2
    new-instance v0, Lezj;

    const-string v1, "MergeContactsService"

    invoke-direct {v0, v1}, Lezj;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lctt;->p:Lezj;

    .line 3260
    new-instance v12, Lhq;

    invoke-direct {v12}, Lhq;-><init>()V
    :try_end_0
    .catch Lbgz; {:try_start_0 .. :try_end_0} :catch_0

    .line 3262
    :try_start_1
    sget-object v0, Lctr;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 3263
    const-string v0, "account_id"

    iget v2, p0, Lctt;->i:I

    .line 3264
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 3263
    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3266
    iget-object v0, p0, Lctt;->h:Landroid/content/ContentResolver;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lctr;->f:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v9

    .line 3269
    :goto_2
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3906
    new-instance v0, Lctu;

    invoke-direct {v0}, Lctu;-><init>()V

    .line 3907
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lctu;->a:J

    .line 3908
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lctu;->c:Ljava/lang/String;

    .line 3909
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lctu;->d:Ljava/lang/Long;

    .line 3910
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lctu;->e:Ljava/lang/Long;

    .line 3911
    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lctu;->f:Ljava/lang/String;

    .line 3912
    const/4 v1, 0x5

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lctu;->g:Ljava/lang/String;

    .line 3913
    const/4 v1, 0x6

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lezc;->d(I)Z

    move-result v1

    iput-boolean v1, v0, Lctu;->h:Z

    .line 4868
    iget-object v1, v0, Lctu;->c:Ljava/lang/String;

    .line 3271
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3272
    iget-object v1, p0, Lctt;->m:Ljava/util/Map;

    .line 5868
    iget-object v2, v0, Lctu;->c:Ljava/lang/String;

    .line 3272
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6868
    :cond_3
    iget-wide v2, v0, Lctu;->a:J

    .line 3274
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v12, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 3277
    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_3
    if-eqz v1, :cond_4

    .line 3278
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_3
    .catch Lbgz; {:try_start_3 .. :try_end_3} :catch_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    const-string v1, "Babel"

    const-string v2, "Account was logged out while MergeContactsService was running"

    invoke-static {v1, v2, v0}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 3277
    :cond_5
    if-eqz v9, :cond_6

    .line 3278
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Lbgz; {:try_start_4 .. :try_end_4} :catch_0

    .line 3283
    :cond_6
    :try_start_5
    sget-object v0, Lctr;->e:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 3284
    const-string v0, "account_id"

    iget v2, p0, Lctt;->i:I

    .line 3285
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 3284
    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3287
    iget-object v0, p0, Lctt;->h:Landroid/content/ContentResolver;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lctr;->h:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3290
    :cond_7
    :goto_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3291
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 3292
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctu;

    .line 3293
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 3294
    if-nez v1, :cond_b

    .line 7046
    new-instance v1, Lctz;

    invoke-direct {v1}, Lctz;-><init>()V

    .line 7047
    invoke-static {v9, v1}, Lctz;->a(Landroid/database/Cursor;Lctv;)V

    .line 3297
    iget-object v2, v1, Lctz;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Lctz;->a()Z

    move-result v2

    if-nez v2, :cond_8

    .line 3298
    iget-object v2, p0, Lctt;->l:Lkwt;

    iget-object v3, v1, Lctz;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lkwt;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3300
    :cond_8
    if-eqz v0, :cond_7

    .line 7868
    iget-object v2, v0, Lctu;->i:Ljava/util/Map;

    .line 3301
    iget-object v0, v1, Lctz;->b:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 3302
    iget-object v0, v1, Lctz;->b:Ljava/lang/String;

    .line 3301
    :goto_5
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    .line 3315
    :catchall_1
    move-exception v0

    if-eqz v9, :cond_9

    .line 3316
    :try_start_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
    :try_end_6
    .catch Lbgz; {:try_start_6 .. :try_end_6} :catch_0

    .line 3302
    :cond_a
    :try_start_7
    iget-object v0, v1, Lctz;->a:Ljava/lang/String;

    goto :goto_5

    .line 3304
    :cond_b
    if-ne v1, v8, :cond_7

    .line 8090
    new-instance v1, Lctw;

    invoke-direct {v1}, Lctw;-><init>()V

    .line 8091
    invoke-static {v9, v1}, Lctw;->a(Landroid/database/Cursor;Lctv;)V

    .line 3306
    invoke-virtual {v1}, Lctw;->a()Z

    move-result v2

    if-nez v2, :cond_c

    .line 3307
    iget-object v2, p0, Lctt;->k:Lkwt;

    iget-object v3, v1, Lctw;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lkwt;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3309
    :cond_c
    if-eqz v0, :cond_7

    .line 8868
    iget-object v0, v0, Lctu;->j:Ljava/util/Map;

    .line 3310
    iget-object v2, v1, Lctw;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    .line 3315
    :cond_d
    if-eqz v9, :cond_e

    .line 3316
    :try_start_8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 219
    :cond_e
    iget-object v0, p0, Lctt;->p:Lezj;

    const-string v1, "retrieveOldDetails()"

    invoke-virtual {v0, v1}, Lezj;->a(Ljava/lang/String;)V
    :try_end_8
    .catch Lbgz; {:try_start_8 .. :try_end_8} :catch_0

    .line 221
    if-eqz v6, :cond_10

    .line 9328
    :try_start_9
    iget-object v0, p0, Lctt;->h:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lctt;->a:[Ljava/lang/String;

    sget-object v3, Lctt;->e:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result-object v10

    .line 9335
    if-nez v10, :cond_12

    .line 9387
    if-eqz v10, :cond_f

    .line 9388
    :try_start_a
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 223
    :cond_f
    :goto_6
    iget-object v0, p0, Lctt;->p:Lezj;

    const-string v1, "retrieveLocalContacts()"

    invoke-virtual {v0, v1}, Lezj;->a(Ljava/lang/String;)V

    .line 226
    :cond_10
    iget-object v0, p0, Lctt;->d:Landroid/content/Context;

    const-class v1, Leot;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    .line 227
    iget v1, p0, Lctt;->i:I

    invoke-interface {v0, v1}, Leot;->a(I)Z

    move-result v0

    if-nez v0, :cond_23

    .line 228
    invoke-direct {p0}, Lctt;->b()V

    .line 229
    iget-object v0, p0, Lctt;->p:Lezj;

    const-string v1, "findEmailOnHangouts()"

    invoke-virtual {v0, v1}, Lezj;->a(Ljava/lang/String;)V

    .line 231
    invoke-direct {p0}, Lctt;->c()V

    .line 232
    iget-object v0, p0, Lctt;->p:Lezj;

    const-string v1, "findPhonesOnHangouts()"

    invoke-virtual {v0, v1}, Lezj;->a(Ljava/lang/String;)V

    .line 234
    invoke-direct {p0}, Lctt;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lctt;->o:Ljava/util/List;

    .line 235
    iget-object v0, p0, Lctt;->p:Lezj;

    const-string v1, "getSuggestedContacts()"

    invoke-virtual {v0, v1}, Lezj;->a(Ljava/lang/String;)V

    .line 240
    :goto_7
    invoke-direct {p0}, Lctt;->e()V

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 243
    const-string v2, "last_merged_ts"

    invoke-virtual {v11, v2, v0, v1}, Lhqc;->b(Ljava/lang/String;J)Lhqc;

    .line 244
    const-string v2, "last_merged_read_local_contacts"

    invoke-virtual {v11, v2, v6}, Lhqc;->b(Ljava/lang/String;Z)Lhqc;

    .line 245
    invoke-virtual {v11}, Lhqc;->d()I

    .line 246
    const-string v2, "Babel"

    const-string v3, "last_merged_ts"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2e

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "wrote "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to accountStore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catch Lbgz; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_1

    :cond_11
    move-object v1, v0

    .line 9353
    :goto_8
    const/4 v0, 0x5

    :try_start_b
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 9354
    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 9355
    const/4 v0, 0x4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 14868
    iput-object v0, v1, Lctu;->g:Ljava/lang/String;

    .line 9340
    :cond_12
    :goto_9
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 9341
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 9342
    iget-object v0, p0, Lctt;->n:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctu;

    .line 9344
    if-nez v0, :cond_11

    .line 9345
    new-instance v0, Lctu;

    .line 9868
    invoke-direct {v0}, Lctu;-><init>()V

    .line 10868
    iput-object v1, v0, Lctu;->c:Ljava/lang/String;

    .line 9347
    iget-object v2, p0, Lctt;->n:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9348
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 11868
    iput-object v1, v0, Lctu;->d:Ljava/lang/Long;

    .line 9349
    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 12868
    iput-object v1, v0, Lctu;->e:Ljava/lang/Long;

    .line 9350
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 13868
    iput-object v1, v0, Lctu;->f:Ljava/lang/String;

    move-object v1, v0

    goto :goto_8

    .line 9356
    :cond_13
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 9358
    iget-object v2, p0, Lctt;->d:Landroid/content/Context;

    .line 15053
    sget-object v0, Lctt;->b:Lksm;

    const-string v3, "data1"

    .line 15054
    invoke-virtual {v0, v3}, Lksm;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 16043
    const/4 v3, 0x0

    invoke-static {v0, v3}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 15054
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 15055
    sget-object v0, Lctt;->b:Lksm;

    const-string v4, "data4"

    .line 15056
    invoke-virtual {v0, v4}, Lksm;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 17043
    const/4 v4, 0x0

    invoke-static {v0, v4}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 15056
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 15057
    const-string v5, "vnd.android.cursor.item/phone_v2"

    .line 17850
    sget-object v0, Lctt;->b:Lksm;

    const-string v9, "data2"

    .line 17851
    invoke-virtual {v0, v9}, Lksm;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 18043
    const/4 v9, 0x0

    invoke-static {v0, v9}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 17850
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 17852
    if-nez v0, :cond_15

    .line 17854
    sget-object v0, Lctt;->b:Lksm;

    const-string v2, "data3"

    .line 17855
    invoke-virtual {v0, v2}, Lksm;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 19043
    const/4 v2, 0x0

    invoke-static {v0, v2}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 17854
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 15058
    :goto_a
    invoke-static {v3}, Lezm;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 15060
    new-instance v5, Lctz;

    invoke-direct {v5}, Lctz;-><init>()V

    .line 15061
    iput-object v3, v5, Lctz;->a:Ljava/lang/String;

    .line 15062
    iput-object v4, v5, Lctz;->b:Ljava/lang/String;

    .line 15063
    iput-object v2, v5, Lctz;->c:Ljava/lang/String;

    .line 15064
    iput-object v0, v5, Lctz;->d:Ljava/lang/String;

    .line 15065
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    move v0, v8

    :goto_b
    iput-boolean v0, v5, Lctz;->e:Z

    .line 9359
    invoke-virtual {v5}, Lctz;->a()Z

    move-result v0

    if-nez v0, :cond_12

    .line 19868
    iget-object v1, v1, Lctu;->i:Ljava/util/Map;

    .line 9360
    iget-object v0, v5, Lctz;->b:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 9361
    iget-object v0, v5, Lctz;->b:Ljava/lang/String;

    .line 9360
    :goto_c
    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9362
    iget-object v0, v5, Lctz;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 9363
    iget-object v0, p0, Lctt;->l:Lkwt;

    iget-object v1, v5, Lctz;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v5}, Lkwt;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/16 :goto_9

    .line 9387
    :catchall_2
    move-exception v0

    if-eqz v10, :cond_14

    .line 9388
    :try_start_c
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_14
    throw v0
    :try_end_c
    .catch Lbgz; {:try_start_c .. :try_end_c} :catch_0

    .line 17858
    :cond_15
    :try_start_d
    const-string v9, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 17859
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v0, v5}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_a

    .line 17861
    :cond_16
    const-string v9, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 17862
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v0, v5}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_a

    .line 17864
    :cond_17
    const-string v0, ""

    goto :goto_a

    :cond_18
    move v0, v7

    .line 15065
    goto :goto_b

    .line 9361
    :cond_19
    iget-object v0, v5, Lctz;->a:Ljava/lang/String;

    goto :goto_c

    .line 9366
    :cond_1a
    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 9368
    iget-object v2, p0, Lctt;->d:Landroid/content/Context;

    .line 20096
    new-instance v3, Lctw;

    invoke-direct {v3}, Lctw;-><init>()V

    .line 20097
    sget-object v0, Lctt;->b:Lksm;

    const-string v4, "data1"

    .line 20098
    invoke-virtual {v0, v4}, Lksm;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 21043
    const/4 v4, 0x0

    invoke-static {v0, v4}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 20097
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lctw;->a:Ljava/lang/String;

    .line 20099
    const-string v4, "vnd.android.cursor.item/email_v2"

    .line 21850
    sget-object v0, Lctt;->b:Lksm;

    const-string v5, "data2"

    .line 21851
    invoke-virtual {v0, v5}, Lksm;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 22043
    const/4 v5, 0x0

    invoke-static {v0, v5}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 21850
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 21852
    if-nez v0, :cond_1b

    .line 21854
    sget-object v0, Lctt;->b:Lksm;

    const-string v2, "data3"

    .line 21855
    invoke-virtual {v0, v2}, Lksm;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 23043
    const/4 v2, 0x0

    invoke-static {v0, v2}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 21854
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 20099
    :goto_d
    iput-object v0, v3, Lctw;->d:Ljava/lang/String;

    .line 20100
    const/4 v0, 0x1

    iput-boolean v0, v3, Lctw;->e:Z

    .line 9369
    invoke-virtual {v3}, Lctw;->a()Z

    move-result v0

    if-nez v0, :cond_12

    .line 9370
    iget-object v0, p0, Lctt;->k:Lkwt;

    iget-object v2, v3, Lctw;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lkwt;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23868
    iget-object v0, v1, Lctu;->j:Ljava/util/Map;

    .line 9372
    iget-object v1, v3, Lctw;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 21858
    :cond_1b
    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 21859
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v0, v4}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_d

    .line 21861
    :cond_1c
    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 21862
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v0, v4}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_d

    .line 21864
    :cond_1d
    const-string v0, ""

    goto :goto_d

    .line 9375
    :cond_1e
    const-string v1, "Babel_db"

    const-string v2, "unexpected mime-type: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_1f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_e

    .line 9379
    :cond_20
    iget-object v0, p0, Lctt;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 9380
    :cond_21
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 9381
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctu;

    .line 24868
    iget-object v2, v0, Lctu;->i:Ljava/util/Map;

    .line 9382
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 25868
    iget-object v0, v0, Lctu;->j:Ljava/util/Map;

    .line 9382
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 9383
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_f

    .line 9387
    :cond_22
    if-eqz v10, :cond_f

    .line 9388
    :try_start_e
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6

    .line 237
    :cond_23
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lctt;->o:Ljava/util/List;
    :try_end_e
    .catch Lbgz; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_7

    .line 3277
    :catchall_3
    move-exception v0

    move-object v1, v10

    goto/16 :goto_3
.end method
