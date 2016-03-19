.class public final Lmfi;
.super Llvy;
.source "SourceFile"

# interfaces
.implements Llwr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llvy",
        "<",
        "Lmfi;",
        "Llwa;",
        ">;",
        "Llwr;"
    }
.end annotation


# static fields
.field public static final d:Lmfi;

.field private static volatile i:Llwt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llwt",
            "<",
            "Lmfi;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private e:I

.field private f:I

.field private g:Llwj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llwj",
            "<",
            "Lmfj;",
            ">;"
        }
    .end annotation
.end field

.field private h:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2826
    new-instance v0, Lmfi;

    sget-object v1, Llwg;->e:Llvp;

    .line 7069
    sget-object v2, Llvt;->a:Llvt;

    .line 2830
    invoke-direct {v0, v1, v2}, Lmfi;-><init>(Llvp;Llvt;)V

    sput-object v0, Lmfi;->d:Lmfi;

    .line 2831
    return-void
.end method

.method private constructor <init>(Llvp;Llvt;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 515
    invoke-direct {p0}, Llvy;-><init>()V

    .line 2743
    const/4 v2, -0x1

    iput-byte v2, p0, Lmfi;->h:B

    .line 516
    iput v0, p0, Lmfi;->f:I

    .line 4020
    sget-object v2, Llwu;->b:Llwu;

    .line 517
    iput-object v2, p0, Lmfi;->g:Llwj;

    .line 520
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 521
    :try_start_0
    invoke-virtual {p1}, Llvp;->a()I

    move-result v2

    .line 522
    sparse-switch v2, :sswitch_data_0

    .line 527
    invoke-virtual {p0, v2, p1}, Lmfi;->a(ILlvp;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 528
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 525
    goto :goto_0

    .line 533
    :sswitch_1
    iget v2, p0, Lmfi;->e:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmfi;->e:I

    .line 534
    invoke-virtual {p1}, Llvp;->h()I

    move-result v2

    iput v2, p0, Lmfi;->f:I
    :try_end_0
    .catch Llwk; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 547
    :catch_0
    move-exception v0

    .line 548
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0, p0}, Llwk;->a(Llwp;)Llwk;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 554
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lmfi;->g:Llwj;

    invoke-interface {v1}, Llwj;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 555
    iget-object v1, p0, Lmfi;->g:Llwj;

    invoke-interface {v1}, Llwj;->b()V

    .line 557
    :cond_1
    invoke-virtual {p0}, Lmfi;->e()V

    throw v0

    .line 538
    :sswitch_2
    :try_start_2
    iget-object v2, p0, Lmfi;->g:Llwj;

    invoke-interface {v2}, Llwj;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4295
    new-instance v2, Llwu;

    invoke-direct {v2}, Llwu;-><init>()V

    .line 539
    iput-object v2, p0, Lmfi;->g:Llwj;

    .line 541
    :cond_2
    iget-object v2, p0, Lmfi;->g:Llwj;

    const/16 v3, 0xb

    .line 4352
    sget-object v4, Lmfj;->d:Lmfj;

    .line 541
    invoke-virtual {p1, v3, v4, p2}, Llvp;->a(ILlvy;Llvt;)Llvy;

    move-result-object v3

    invoke-interface {v2, v3}, Llwj;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Llwk; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 549
    :catch_1
    move-exception v0

    .line 550
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Llwk;

    .line 552
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Llwk;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Llwk;->a(Llwp;)Llwk;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 554
    :cond_3
    iget-object v0, p0, Lmfi;->g:Llwj;

    invoke-interface {v0}, Llwj;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 555
    iget-object v0, p0, Lmfi;->g:Llwj;

    invoke-interface {v0}, Llwj;->b()V

    .line 557
    :cond_4
    invoke-virtual {p0}, Lmfi;->e()V

    .line 558
    return-void

    .line 522
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x55 -> :sswitch_1
        0x5b -> :sswitch_2
    .end sparse-switch
.end method

.method private j()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2369
    iget v1, p0, Lmfi;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2747
    sget-object v0, Lmfg;->a:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2819
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2749
    :pswitch_0
    new-instance p0, Lmfi;

    check-cast p2, Llvp;

    check-cast p3, Llvt;

    invoke-direct {p0, p2, p3}, Lmfi;-><init>(Llvp;Llvt;)V

    .line 2816
    :cond_0
    :goto_0
    return-object p0

    .line 2753
    :pswitch_1
    new-instance p0, Lmfi;

    sget-object v0, Llwg;->e:Llvp;

    .line 5069
    sget-object v1, Llvt;->a:Llvt;

    .line 2756
    invoke-direct {p0, v0, v1}, Lmfi;-><init>(Llvp;Llvt;)V

    goto :goto_0

    .line 2759
    :pswitch_2
    iget-byte v0, p0, Lmfi;->h:B

    .line 2760
    if-ne v0, v5, :cond_1

    sget-object p0, Lmfi;->d:Lmfi;

    goto :goto_0

    .line 2761
    :cond_1
    if-nez v0, :cond_2

    move-object p0, v3

    goto :goto_0

    .line 2763
    :cond_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 2764
    invoke-direct {p0}, Lmfi;->j()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2765
    if-eqz v4, :cond_3

    .line 2766
    iput-byte v2, p0, Lmfi;->h:B

    :cond_3
    move-object p0, v3

    .line 2768
    goto :goto_0

    :cond_4
    move v1, v2

    .line 5411
    :goto_1
    iget-object v0, p0, Lmfi;->g:Llwj;

    invoke-interface {v0}, Llwj;->size()I

    move-result v0

    .line 2770
    if-ge v1, v0, :cond_7

    .line 5417
    iget-object v0, p0, Lmfi;->g:Llwj;

    invoke-interface {v0, v1}, Llwj;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmfj;

    .line 2771
    invoke-virtual {v0}, Lmfj;->f()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2772
    if-eqz v4, :cond_5

    .line 2773
    iput-byte v2, p0, Lmfi;->h:B

    :cond_5
    move-object p0, v3

    .line 2775
    goto :goto_0

    .line 2770
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2778
    :cond_7
    if-eqz v4, :cond_8

    iput-byte v5, p0, Lmfi;->h:B

    .line 2779
    :cond_8
    sget-object p0, Lmfi;->d:Lmfi;

    goto :goto_0

    .line 2783
    :pswitch_3
    iget-object v0, p0, Lmfi;->g:Llwj;

    invoke-interface {v0}, Llwj;->b()V

    move-object p0, v3

    .line 2784
    goto :goto_0

    .line 2787
    :pswitch_4
    new-instance p0, Llwa;

    .line 5604
    invoke-direct {p0, v2}, Llwa;-><init>(S)V

    goto :goto_0

    .line 5834
    :pswitch_5
    sget-object v0, Lmfi;->d:Lmfi;

    .line 2790
    if-eq p2, v0, :cond_0

    .line 2791
    check-cast p2, Lmfi;

    .line 2792
    invoke-direct {p2}, Lmfi;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6375
    iget v0, p2, Lmfi;->f:I

    .line 6381
    iget v1, p0, Lmfi;->e:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmfi;->e:I

    .line 6382
    iput v0, p0, Lmfi;->f:I

    .line 2795
    :cond_9
    iget-object v0, p2, Lmfi;->g:Llwj;

    invoke-interface {v0}, Llwj;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2796
    iget-object v0, p0, Lmfi;->g:Llwj;

    invoke-interface {v0}, Llwj;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2797
    iget-object v0, p2, Lmfi;->g:Llwj;

    iput-object v0, p0, Lmfi;->g:Llwj;

    .line 2803
    :cond_a
    :goto_2
    iget-object v0, p2, Lmfi;->b:Llxf;

    invoke-virtual {p0, v0}, Lmfi;->a(Llxf;)V

    goto/16 :goto_0

    .line 6427
    :cond_b
    iget-object v0, p0, Lmfi;->g:Llwj;

    invoke-interface {v0}, Llwj;->a()Z

    move-result v0

    if-nez v0, :cond_c

    .line 6428
    iget-object v0, p0, Lmfi;->g:Llwj;

    invoke-static {v0}, Lmfi;->a(Ljava/util/List;)Llwj;

    move-result-object v0

    iput-object v0, p0, Lmfi;->g:Llwj;

    .line 2800
    :cond_c
    iget-object v0, p0, Lmfi;->g:Llwj;

    iget-object v1, p2, Lmfi;->g:Llwj;

    invoke-interface {v0, v1}, Llwj;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 2807
    :pswitch_6
    sget-object p0, Lmfi;->d:Lmfi;

    goto/16 :goto_0

    .line 2810
    :pswitch_7
    sget-object v0, Lmfi;->i:Llwt;

    if-nez v0, :cond_e

    const-class v1, Lmfi;

    monitor-enter v1

    .line 2811
    :try_start_0
    sget-object v0, Lmfi;->i:Llwt;

    if-nez v0, :cond_d

    .line 2812
    new-instance v0, Llvi;

    sget-object v2, Lmfi;->d:Lmfi;

    invoke-direct {v0, v2}, Llvi;-><init>(Llvy;)V

    sput-object v0, Lmfi;->i:Llwt;

    .line 2814
    :cond_d
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2816
    :cond_e
    sget-object p0, Lmfi;->i:Llwt;

    goto/16 :goto_0

    .line 2814
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2747
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public a(Llvq;)V
    .locals 3

    .prologue
    .line 2513
    iget v0, p0, Lmfi;->e:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2514
    const/16 v0, 0xa

    iget v1, p0, Lmfi;->f:I

    invoke-virtual {p1, v0, v1}, Llvq;->c(II)V

    .line 2516
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lmfi;->g:Llwj;

    invoke-interface {v0}, Llwj;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2517
    const/16 v2, 0xb

    iget-object v0, p0, Lmfi;->g:Llwj;

    invoke-interface {v0, v1}, Llwj;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llwp;

    invoke-virtual {p1, v2, v0}, Llvq;->e(ILlwp;)V

    .line 2516
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2519
    :cond_1
    iget-object v0, p0, Lmfi;->b:Llxf;

    invoke-virtual {v0, p1}, Llxf;->a(Llvq;)V

    .line 2520
    return-void
.end method

.method public m()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2523
    iget v0, p0, Lmfi;->c:I

    .line 2524
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 2537
    :goto_0
    return v0

    .line 2527
    :cond_0
    iget v0, p0, Lmfi;->e:I

    and-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 2528
    const/16 v0, 0xa

    .line 2529
    invoke-static {v0}, Llvq;->h(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :goto_1
    move v2, v0

    .line 2531
    :goto_2
    iget-object v0, p0, Lmfi;->g:Llwj;

    invoke-interface {v0}, Llwj;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2532
    const/16 v3, 0xb

    iget-object v0, p0, Lmfi;->g:Llwj;

    .line 2533
    invoke-interface {v0, v1}, Llwj;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llwp;

    invoke-static {v3, v0}, Llvq;->f(ILlwp;)I

    move-result v0

    add-int/2addr v0, v2

    .line 2531
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 2535
    :cond_1
    iget-object v0, p0, Lmfi;->b:Llxf;

    invoke-virtual {v0}, Llxf;->b()I

    move-result v0

    add-int/2addr v0, v2

    .line 2536
    iput v0, p0, Lmfi;->c:I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
