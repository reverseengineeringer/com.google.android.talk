.class public Lorg/chromium/net/NetworkChangeNotifierAutoDetect;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final a:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

.field public b:Lmqj;

.field private final c:Lmqp;

.field private final d:Landroid/content/Context;

.field private final e:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;

.field private f:Lmqr;

.field private final g:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final h:Landroid/net/NetworkRequest;

.field private i:Z

.field private j:I

.field private k:Ljava/lang/String;

.field private l:D

.field private m:I


# direct methods
.method public constructor <init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;Landroid/content/Context;Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 404
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 407
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 408
    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->a:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    .line 409
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->d:Landroid/content/Context;

    .line 410
    new-instance v0, Lmqj;

    invoke-direct {v0, p2}, Lmqj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->b:Lmqj;

    .line 411
    new-instance v0, Lmqr;

    invoke-direct {v0, p2}, Lmqr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->f:Lmqr;

    .line 412
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 413
    new-instance v0, Lmqk;

    .line 1246
    invoke-direct {v0, p0}, Lmqk;-><init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)V

    .line 413
    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->g:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 414
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->h:Landroid/net/NetworkRequest;

    .line 420
    :goto_0
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->b:Lmqj;

    invoke-virtual {v0}, Lmqj;->a()Lmqq;

    move-result-object v0

    .line 421
    invoke-virtual {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->a(Lmqq;)I

    move-result v1

    iput v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->j:I

    .line 422
    invoke-direct {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->c(Lmqq;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->k:Ljava/lang/String;

    .line 423
    invoke-virtual {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->b(Lmqq;)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->l:D

    .line 424
    iget v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->j:I

    iput v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->m:I

    .line 425
    new-instance v0, Lmqp;

    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->f:Lmqr;

    invoke-virtual {v1}, Lmqr;->c()Z

    move-result v1

    invoke-direct {v0, v1}, Lmqp;-><init>(Z)V

    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->c:Lmqp;

    .line 427
    iput-object p3, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->e:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;

    .line 428
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->e:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;

    invoke-virtual {v0, p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;->a(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)V

    .line 429
    return-void

    .line 417
    :cond_0
    iput-object v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->g:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 418
    iput-object v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->h:Landroid/net/NetworkRequest;

    goto :goto_0
.end method

.method private c(Lmqq;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 663
    invoke-virtual {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->a(Lmqq;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, ""

    .line 664
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->f:Lmqr;

    invoke-virtual {v0}, Lmqr;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private d(Lmqq;)V
    .locals 3

    .prologue
    .line 680
    invoke-virtual {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->a(Lmqq;)I

    move-result v0

    .line 681
    invoke-direct {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->c(Lmqq;)Ljava/lang/String;

    move-result-object v1

    .line 682
    iget v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->j:I

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 688
    :goto_0
    return-void

    .line 684
    :cond_0
    iput v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->j:I

    .line 685
    iput-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->k:Ljava/lang/String;

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Network connectivity changed, type is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 687
    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->a:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    invoke-interface {v1, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->a(I)V

    goto :goto_0
.end method

.method private e(Lmqq;)V
    .locals 4

    .prologue
    .line 691
    invoke-virtual {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->b(Lmqq;)D

    move-result-wide v0

    .line 692
    iget-wide v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->l:D

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    iget v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->j:I

    iget v3, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->m:I

    if-ne v2, v3, :cond_0

    .line 699
    :goto_0
    return-void

    .line 696
    :cond_0
    iput-wide v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->l:D

    .line 697
    iget v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->j:I

    iput v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->m:I

    .line 698
    iget-object v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->a:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    invoke-interface {v2, v0, v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->a(D)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lmqq;)I
    .locals 3

    .prologue
    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 550
    invoke-virtual {p1}, Lmqq;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 551
    const/4 v0, 0x6

    .line 588
    :goto_0
    :pswitch_0
    return v0

    .line 554
    :cond_0
    invoke-virtual {p1}, Lmqq;->b()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_1
    move v0, v1

    .line 588
    goto :goto_0

    .line 556
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 558
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 562
    :pswitch_4
    const/4 v0, 0x7

    goto :goto_0

    .line 565
    :pswitch_5
    invoke-virtual {p1}, Lmqq;->c()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    move v0, v1

    .line 585
    goto :goto_0

    .line 571
    :pswitch_6
    const/4 v0, 0x3

    goto :goto_0

    .line 581
    :pswitch_7
    const/4 v0, 0x4

    goto :goto_0

    .line 554
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 565
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public a()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->e:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;

    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;->a()V

    .line 460
    invoke-virtual {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->c()V

    .line 461
    return-void
.end method

.method public b(Lmqq;)D
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/16 v0, 0x1e

    .line 599
    invoke-virtual {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->a(Lmqq;)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 600
    iget-object v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->f:Lmqr;

    invoke-virtual {v2}, Lmqr;->b()I

    move-result v2

    .line 601
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 602
    int-to-double v0, v2

    .line 606
    :goto_0
    return-wide v0

    .line 3611
    :cond_0
    invoke-virtual {p1}, Lmqq;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3612
    const/16 v0, 0x1f

    .line 606
    :goto_1
    :pswitch_0
    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifier;->a(I)D

    move-result-wide v0

    goto :goto_0

    .line 3615
    :cond_1
    invoke-virtual {p1}, Lmqq;->b()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_1
    goto :goto_1

    .line 3623
    :pswitch_2
    invoke-virtual {p1}, Lmqq;->c()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_1

    .line 3625
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_1

    .line 3627
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_1

    :pswitch_5
    move v0, v1

    .line 3629
    goto :goto_1

    .line 3631
    :pswitch_6
    const/4 v0, 0x3

    goto :goto_1

    .line 3633
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_1

    .line 3635
    :pswitch_8
    const/4 v0, 0x6

    goto :goto_1

    .line 3637
    :pswitch_9
    const/4 v0, 0x7

    goto :goto_1

    .line 3639
    :pswitch_a
    const/16 v0, 0x8

    goto :goto_1

    .line 3641
    :pswitch_b
    const/16 v0, 0xb

    goto :goto_1

    .line 3643
    :pswitch_c
    const/16 v0, 0xc

    goto :goto_1

    .line 3645
    :pswitch_d
    const/16 v0, 0x9

    goto :goto_1

    .line 3647
    :pswitch_e
    const/16 v0, 0xa

    goto :goto_1

    .line 3649
    :pswitch_f
    const/16 v0, 0xd

    goto :goto_1

    .line 3651
    :pswitch_10
    const/16 v0, 0xe

    goto :goto_1

    .line 3653
    :pswitch_11
    const/16 v0, 0xf

    goto :goto_1

    .line 3615
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 3623
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_7
        :pswitch_e
        :pswitch_11
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public b()V
    .locals 4

    .prologue
    .line 467
    iget-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->i:Z

    if-eqz v0, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->d()Lmqq;

    move-result-object v0

    .line 470
    invoke-direct {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->d(Lmqq;)V

    .line 471
    invoke-direct {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->e(Lmqq;)V

    .line 472
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->d:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->c:Lmqp;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->i:Z

    .line 475
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->g:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->b:Lmqj;

    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->h:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->g:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Lmqj;->a(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 482
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->b:Lmqj;

    invoke-virtual {v0}, Lmqj;->b()[Landroid/net/Network;

    move-result-object v1

    .line 484
    array-length v0, v1

    new-array v2, v0, [I

    .line 485
    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 486
    aget-object v3, v1, v0

    .line 1716
    invoke-virtual {v3}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 486
    aput v3, v2, v0

    .line 485
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 488
    :cond_2
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->a:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    invoke-interface {v0, v2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->a([I)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 496
    iget-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->i:Z

    if-nez v0, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->d:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->i:Z

    .line 499
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->g:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->b:Lmqj;

    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->g:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Lmqj;->a(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0
.end method

.method public d()Lmqq;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->b:Lmqj;

    invoke-virtual {v0}, Lmqj;->a()Lmqq;

    move-result-object v0

    return-object v0
.end method

.method public e()[I
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 517
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 518
    new-array v0, v2, [I

    .line 533
    :goto_0
    return-object v0

    .line 520
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->b:Lmqj;

    invoke-virtual {v0}, Lmqj;->b()[Landroid/net/Network;

    move-result-object v3

    .line 521
    array-length v0, v3

    shl-int/lit8 v0, v0, 0x1

    new-array v4, v0, [I

    .line 523
    array-length v5, v3

    move v1, v2

    move v0, v2

    :goto_1
    if-ge v1, v5, :cond_2

    aget-object v6, v3, v1

    .line 524
    iget-object v7, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->b:Lmqj;

    invoke-virtual {v7, v6}, Lmqj;->b(Landroid/net/Network;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 527
    add-int/lit8 v7, v0, 0x1

    .line 2716
    invoke-virtual {v6}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 527
    aput v8, v4, v0

    .line 528
    add-int/lit8 v0, v7, 0x1

    iget-object v8, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->b:Lmqj;

    invoke-virtual {v8, v6}, Lmqj;->a(Landroid/net/Network;)Lmqq;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->a(Lmqq;)I

    move-result v6

    aput v6, v4, v7

    .line 523
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 531
    :cond_2
    new-array v1, v0, [I

    .line 532
    invoke-static {v4, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 533
    goto :goto_0
.end method

.method public f()I
    .locals 2

    .prologue
    .line 543
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 544
    const/4 v0, -0x1

    .line 546
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->b:Lmqj;

    invoke-virtual {v0}, Lmqj;->c()I

    move-result v0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 670
    invoke-virtual {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->d()Lmqq;

    move-result-object v0

    .line 671
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 672
    invoke-direct {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->d(Lmqq;)V

    .line 673
    invoke-direct {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->e(Lmqq;)V

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 675
    invoke-direct {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->e(Lmqq;)V

    goto :goto_0
.end method
