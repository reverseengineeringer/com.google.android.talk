.class public Ldrm;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcyx;",
            ">;"
        }
    .end annotation
.end field

.field private h:[B

.field private i:Z

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcyx;",
            ">;"
        }
    .end annotation
.end field

.field private k:[B

.field private l:Z

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcyx;",
            ">;"
        }
    .end annotation
.end field

.field private transient n:Lkav;

.field private o:[B

.field private p:Z

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcyx;",
            ">;"
        }
    .end annotation
.end field

.field private r:[B

.field private s:Z

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcyx;",
            ">;"
        }
    .end annotation
.end field

.field private u:[B

.field private v:Z


# direct methods
.method private constructor <init>(Lkat;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 2439
    iget-object v0, p1, Lkat;->responseHeader:Lkdp;

    const-wide/16 v4, -0x1

    invoke-direct {p0, v0, v4, v5}, Ldqf;-><init>(Lkdp;J)V

    .line 2441
    iget-object v0, p1, Lkat;->c:Lkav;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lkat;->c:Lkav;

    iget-object v0, v0, Lkav;->a:Ljava/lang/Boolean;

    .line 3015
    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 2442
    if-eqz v0, :cond_7

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Ldrm;->i:Z

    .line 2443
    iget-boolean v0, p0, Ldrm;->i:Z

    if-nez v0, :cond_8

    .line 2444
    iget-object v0, p1, Lkat;->c:Lkav;

    iget-object v0, v0, Lkav;->b:[B

    iput-object v0, p0, Ldrm;->h:[B

    .line 2445
    iget-object v0, p1, Lkat;->c:Lkav;

    iget-object v0, v0, Lkav;->c:[Lkau;

    invoke-static {v0}, Laal;->a([Lkau;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ldrm;->g:Ljava/util/List;

    .line 2452
    :goto_1
    iget-object v0, p1, Lkat;->d:Lkav;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lkat;->d:Lkav;

    iget-object v0, v0, Lkav;->a:Ljava/lang/Boolean;

    .line 4015
    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 2453
    if-eqz v0, :cond_9

    :cond_1
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Ldrm;->l:Z

    .line 2454
    iget-boolean v0, p0, Ldrm;->l:Z

    if-nez v0, :cond_a

    .line 2455
    iget-object v0, p1, Lkat;->d:Lkav;

    iget-object v0, v0, Lkav;->b:[B

    iput-object v0, p0, Ldrm;->k:[B

    .line 2456
    iget-object v0, p1, Lkat;->d:Lkav;

    iget-object v0, v0, Lkav;->c:[Lkau;

    invoke-static {v0}, Laal;->a([Lkau;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ldrm;->j:Ljava/util/List;

    .line 2463
    :goto_3
    iget-object v0, p1, Lkat;->e:Lkav;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lkat;->e:Lkav;

    iget-object v0, v0, Lkav;->a:Ljava/lang/Boolean;

    .line 5015
    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 2464
    if-eqz v0, :cond_b

    :cond_2
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Ldrm;->p:Z

    .line 2465
    iget-boolean v0, p0, Ldrm;->p:Z

    if-nez v0, :cond_c

    .line 2466
    iget-object v0, p1, Lkat;->e:Lkav;

    iget-object v0, v0, Lkav;->b:[B

    iput-object v0, p0, Ldrm;->o:[B

    .line 2468
    iget-object v0, p1, Lkat;->e:Lkav;

    iget-object v0, v0, Lkav;->c:[Lkau;

    .line 2469
    invoke-static {v0}, Laal;->a([Lkau;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ldrm;->m:Ljava/util/List;

    .line 2477
    :goto_5
    iget-object v0, p1, Lkat;->e:Lkav;

    iput-object v0, p0, Ldrm;->n:Lkav;

    .line 2479
    iget-object v0, p1, Lkat;->f:Lkav;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lkat;->f:Lkav;

    iget-object v0, v0, Lkav;->a:Ljava/lang/Boolean;

    .line 6015
    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 2480
    if-eqz v0, :cond_d

    :cond_3
    move v0, v2

    :goto_6
    iput-boolean v0, p0, Ldrm;->s:Z

    .line 2481
    iget-boolean v0, p0, Ldrm;->s:Z

    if-nez v0, :cond_e

    .line 2482
    iget-object v0, p1, Lkat;->f:Lkav;

    iget-object v0, v0, Lkav;->b:[B

    iput-object v0, p0, Ldrm;->r:[B

    .line 2484
    iget-object v0, p1, Lkat;->f:Lkav;

    iget-object v0, v0, Lkav;->c:[Lkau;

    .line 2485
    invoke-static {v0}, Laal;->a([Lkau;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ldrm;->q:Ljava/util/List;

    .line 2492
    :goto_7
    iget-object v0, p1, Lkat;->h:Lkav;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lkat;->h:Lkav;

    iget-object v0, v0, Lkav;->a:Ljava/lang/Boolean;

    .line 7015
    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 2493
    if-eqz v0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    iput-boolean v1, p0, Ldrm;->v:Z

    .line 2494
    iget-boolean v0, p0, Ldrm;->v:Z

    if-nez v0, :cond_f

    .line 2495
    iget-object v0, p1, Lkat;->h:Lkav;

    iget-object v0, v0, Lkav;->b:[B

    iput-object v0, p0, Ldrm;->u:[B

    .line 2497
    iget-object v0, p1, Lkat;->h:Lkav;

    iget-object v0, v0, Lkav;->c:[Lkau;

    invoke-static {v0}, Laal;->a([Lkau;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ldrm;->t:Ljava/util/List;

    .line 7232
    :goto_8
    sget-boolean v0, Ldqf;->a:Z

    .line 2504
    if-eqz v0, :cond_6

    .line 2505
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GetSuggestedEntitiesResponse from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2508
    :cond_6
    return-void

    :cond_7
    move v0, v1

    .line 2442
    goto/16 :goto_0

    .line 2448
    :cond_8
    iput-object v3, p0, Ldrm;->h:[B

    .line 2449
    iput-object v3, p0, Ldrm;->g:Ljava/util/List;

    goto/16 :goto_1

    :cond_9
    move v0, v1

    .line 2453
    goto/16 :goto_2

    .line 2459
    :cond_a
    iput-object v3, p0, Ldrm;->k:[B

    .line 2460
    iput-object v3, p0, Ldrm;->j:Ljava/util/List;

    goto/16 :goto_3

    :cond_b
    move v0, v1

    .line 2464
    goto/16 :goto_4

    .line 2472
    :cond_c
    iput-object v3, p0, Ldrm;->o:[B

    .line 2473
    iput-object v3, p0, Ldrm;->m:Ljava/util/List;

    goto/16 :goto_5

    :cond_d
    move v0, v1

    .line 2480
    goto :goto_6

    .line 2488
    :cond_e
    iput-object v3, p0, Ldrm;->r:[B

    .line 2489
    iput-object v3, p0, Ldrm;->q:Ljava/util/List;

    goto :goto_7

    .line 2500
    :cond_f
    iput-object v3, p0, Ldrm;->u:[B

    .line 2501
    iput-object v3, p0, Ldrm;->t:Ljava/util/List;

    goto :goto_8
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 2524
    new-instance v0, Lkat;

    invoke-direct {v0}, Lkat;-><init>()V

    .line 9131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 2525
    check-cast v0, Lkat;

    .line 2526
    iget-object v1, v0, Lkat;->responseHeader:Lkdp;

    invoke-static {v1}, Ldrm;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2527
    new-instance v1, Ldqs;

    iget-object v0, v0, Lkat;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 2529
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldrm;

    invoke-direct {v1, v0}, Ldrm;-><init>(Lkat;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3

    .prologue
    .line 2517
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2518
    new-instance v1, Lkav;

    invoke-direct {v1}, Lkav;-><init>()V

    .line 2519
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 8131
    array-length v2, v0

    invoke-static {v1, v0, v2}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 2519
    check-cast v0, Lkav;

    iput-object v0, p0, Ldrm;->n:Lkav;

    .line 2520
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .prologue
    .line 2511
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2512
    iget-object v0, p0, Ldrm;->n:Lkav;

    invoke-static {v0}, Llyi;->a(Llyi;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2513
    return-void
.end method


# virtual methods
.method public a(Lbfz;Ldyy;)V
    .locals 5

    .prologue
    .line 2536
    invoke-super {p0, p1, p2}, Ldqf;->a(Lbfz;Ldyy;)V

    .line 10036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 2538
    const-class v1, Lhpz;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 2539
    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v1

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lhpz;->b(I)Lhqc;

    move-result-object v1

    .line 2540
    invoke-virtual {p1}, Lbfz;->a()V

    .line 2542
    :try_start_0
    iget-boolean v0, p0, Ldrm;->i:Z

    if-nez v0, :cond_0

    .line 2543
    iget-object v0, p0, Ldrm;->g:Ljava/util/List;

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v2}, Lbfz;->b(Ljava/util/List;I)V

    .line 2545
    const-string v0, "hash_pinned"

    iget-object v2, p0, Ldrm;->h:[B

    invoke-static {v1, v0, v2}, Lbff;->a(Lhqc;Ljava/lang/String;[B)V

    .line 10232
    sget-boolean v0, Ldqf;->a:Z

    .line 2546
    if-eqz v0, :cond_0

    .line 2547
    iget-object v0, p0, Ldrm;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Pinned size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2548
    const-string v0, "Set hash for pinned:"

    iget-object v2, p0, Ldrm;->h:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 2554
    :cond_0
    :goto_0
    iget-boolean v0, p0, Ldrm;->l:Z

    if-nez v0, :cond_1

    .line 2555
    iget-object v0, p0, Ldrm;->j:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lbfz;->b(Ljava/util/List;I)V

    .line 2557
    const-string v0, "hash_favorites"

    iget-object v2, p0, Ldrm;->k:[B

    invoke-static {v1, v0, v2}, Lbff;->a(Lhqc;Ljava/lang/String;[B)V

    .line 11232
    sget-boolean v0, Ldqf;->a:Z

    .line 2559
    if-eqz v0, :cond_1

    .line 2560
    iget-object v0, p0, Ldrm;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Favorites size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2561
    const-string v0, "Set hash for favorites:"

    iget-object v2, p0, Ldrm;->k:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 2567
    :cond_1
    :goto_1
    iget-boolean v0, p0, Ldrm;->p:Z

    if-nez v0, :cond_2

    .line 2568
    iget-object v0, p0, Ldrm;->m:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lbfz;->b(Ljava/util/List;I)V

    .line 2570
    const-string v0, "hash_people_you_hangout_with"

    iget-object v2, p0, Ldrm;->o:[B

    invoke-static {v1, v0, v2}, Lbff;->a(Lhqc;Ljava/lang/String;[B)V

    .line 12232
    sget-boolean v0, Ldqf;->a:Z

    .line 2572
    if-eqz v0, :cond_2

    .line 2573
    iget-object v0, p0, Ldrm;->m:Ljava/util/List;

    .line 2574
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Contacts you hangout with size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2575
    const-string v0, "Set hash for people you hangout with:"

    iget-object v2, p0, Ldrm;->o:[B

    .line 2576
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 2582
    :cond_2
    :goto_2
    iget-boolean v0, p0, Ldrm;->s:Z

    if-nez v0, :cond_3

    .line 2583
    iget-object v0, p0, Ldrm;->q:Ljava/util/List;

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v2}, Lbfz;->b(Ljava/util/List;I)V

    .line 2585
    const-string v0, "hash_other_people_on_hangout"

    iget-object v2, p0, Ldrm;->r:[B

    invoke-static {v1, v0, v2}, Lbff;->a(Lhqc;Ljava/lang/String;[B)V

    .line 13232
    sget-boolean v0, Ldqf;->a:Z

    .line 2587
    if-eqz v0, :cond_3

    .line 2588
    iget-object v0, p0, Ldrm;->q:Ljava/util/List;

    .line 2589
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Other contacts on hangouts size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2590
    const-string v0, "Set hash for other contacts on hangouts:"

    iget-object v2, p0, Ldrm;->r:[B

    .line 2591
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 2597
    :cond_3
    :goto_3
    iget-boolean v0, p0, Ldrm;->v:Z

    if-nez v0, :cond_9

    .line 2598
    invoke-virtual {p1}, Lbfz;->q()V

    .line 2599
    iget-object v0, p0, Ldrm;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyx;

    .line 2600
    iget-object v3, v0, Lcyx;->b:Lczb;

    iget-object v3, v3, Lczb;->a:Ljava/lang/String;

    iget-object v4, v0, Lcyx;->e:Ljava/lang/String;

    iget-object v0, v0, Lcyx;->h:Ljava/lang/String;

    invoke-virtual {p1, v3, v4, v0}, Lbfz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 2618
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lbfz;->c()V

    throw v0

    .line 2548
    :cond_4
    :try_start_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2561
    :cond_5
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2576
    :cond_6
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 2591
    :cond_7
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 2603
    :cond_8
    const-string v0, "hash_dismissed_contacts"

    iget-object v2, p0, Ldrm;->u:[B

    invoke-static {v1, v0, v2}, Lbff;->a(Lhqc;Ljava/lang/String;[B)V

    .line 14232
    sget-boolean v0, Ldqf;->a:Z

    .line 2605
    if-eqz v0, :cond_9

    .line 2606
    iget-object v0, p0, Ldrm;->t:Ljava/util/List;

    .line 2607
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x23

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Dismissed contacts size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2608
    const-string v0, "Set hash for dismissed contacts:"

    iget-object v2, p0, Ldrm;->u:[B

    .line 2609
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 2615
    :cond_9
    :goto_5
    invoke-virtual {p1}, Lbfz;->b()V

    .line 2616
    invoke-virtual {v1}, Lhqc;->d()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2618
    invoke-virtual {p1}, Lbfz;->c()V

    .line 2619
    return-void

    .line 2609
    :cond_a
    :try_start_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcyx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2623
    iget-object v0, p0, Ldrm;->j:Ljava/util/List;

    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcyx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2627
    iget-object v0, p0, Ldrm;->m:Ljava/util/List;

    return-object v0
.end method
