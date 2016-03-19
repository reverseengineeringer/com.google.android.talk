.class public final Lkfg;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkfg;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile g:[Lkfg;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Integer;

.field public d:Lmed;

.field public e:Ljzg;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34439
    invoke-direct {p0}, Llyb;-><init>()V

    .line 35444
    iput-object v0, p0, Lkfg;->a:Ljava/lang/String;

    .line 35445
    iput-object v0, p0, Lkfg;->b:Ljava/lang/Long;

    .line 35446
    iput-object v0, p0, Lkfg;->c:Ljava/lang/Integer;

    .line 35447
    iput-object v0, p0, Lkfg;->d:Lmed;

    .line 35448
    iput-object v0, p0, Lkfg;->e:Ljzg;

    .line 35449
    iput-object v0, p0, Lkfg;->f:Ljava/lang/String;

    .line 35450
    iput-object v0, p0, Lkfg;->eD:Llyd;

    .line 35451
    const/4 v0, -0x1

    iput v0, p0, Lkfg;->eE:I

    .line 34441
    return-void
.end method

.method public static d()[Lkfg;
    .locals 2

    .prologue
    .line 34408
    sget-object v0, Lkfg;->g:[Lkfg;

    if-nez v0, :cond_1

    .line 34409
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 34411
    :try_start_0
    sget-object v0, Lkfg;->g:[Lkfg;

    if-nez v0, :cond_0

    .line 34412
    const/4 v0, 0x0

    new-array v0, v0, [Lkfg;

    sput-object v0, Lkfg;->g:[Lkfg;

    .line 34414
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34416
    :cond_1
    sget-object v0, Lkfg;->g:[Lkfg;

    return-object v0

    .line 34414
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 35514
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 35515
    sparse-switch v0, :sswitch_data_0

    .line 35519
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35520
    :sswitch_0
    return-object p0

    .line 35525
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkfg;->a:Ljava/lang/String;

    goto :goto_0

    .line 35529
    :sswitch_2
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkfg;->b:Ljava/lang/Long;

    goto :goto_0

    .line 35533
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 35534
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 35553
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkfg;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 35559
    :sswitch_4
    iget-object v0, p0, Lkfg;->d:Lmed;

    if-nez v0, :cond_1

    .line 35560
    new-instance v0, Lmed;

    invoke-direct {v0}, Lmed;-><init>()V

    iput-object v0, p0, Lkfg;->d:Lmed;

    .line 35562
    :cond_1
    iget-object v0, p0, Lkfg;->d:Lmed;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 35566
    :sswitch_5
    iget-object v0, p0, Lkfg;->e:Ljzg;

    if-nez v0, :cond_2

    .line 35567
    new-instance v0, Ljzg;

    invoke-direct {v0}, Ljzg;-><init>()V

    iput-object v0, p0, Lkfg;->e:Ljzg;

    .line 35569
    :cond_2
    iget-object v0, p0, Lkfg;->e:Ljzg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 35573
    :sswitch_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkfg;->f:Ljava/lang/String;

    goto :goto_0

    .line 35515
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x32 -> :sswitch_4
        0x3a -> :sswitch_5
        0x42 -> :sswitch_6
    .end sparse-switch

    .line 35534
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 34458
    iget-object v0, p0, Lkfg;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 34459
    const/4 v0, 0x1

    iget-object v1, p0, Lkfg;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 34461
    :cond_0
    iget-object v0, p0, Lkfg;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 34462
    const/4 v0, 0x2

    iget-object v1, p0, Lkfg;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 34464
    :cond_1
    iget-object v0, p0, Lkfg;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 34465
    const/4 v0, 0x3

    iget-object v1, p0, Lkfg;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 34467
    :cond_2
    iget-object v0, p0, Lkfg;->d:Lmed;

    if-eqz v0, :cond_3

    .line 34468
    const/4 v0, 0x6

    iget-object v1, p0, Lkfg;->d:Lmed;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 34470
    :cond_3
    iget-object v0, p0, Lkfg;->e:Ljzg;

    if-eqz v0, :cond_4

    .line 34471
    const/4 v0, 0x7

    iget-object v1, p0, Lkfg;->e:Ljzg;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 34473
    :cond_4
    iget-object v0, p0, Lkfg;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 34474
    const/16 v0, 0x8

    iget-object v1, p0, Lkfg;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 34476
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 34477
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 34481
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 34482
    iget-object v1, p0, Lkfg;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 34483
    const/4 v1, 0x1

    iget-object v2, p0, Lkfg;->a:Ljava/lang/String;

    .line 34484
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 34486
    :cond_0
    iget-object v1, p0, Lkfg;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 34487
    const/4 v1, 0x2

    iget-object v2, p0, Lkfg;->b:Ljava/lang/Long;

    .line 34488
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 34490
    :cond_1
    iget-object v1, p0, Lkfg;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 34491
    const/4 v1, 0x3

    iget-object v2, p0, Lkfg;->c:Ljava/lang/Integer;

    .line 34492
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 34494
    :cond_2
    iget-object v1, p0, Lkfg;->d:Lmed;

    if-eqz v1, :cond_3

    .line 34495
    const/4 v1, 0x6

    iget-object v2, p0, Lkfg;->d:Lmed;

    .line 34496
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 34498
    :cond_3
    iget-object v1, p0, Lkfg;->e:Ljzg;

    if-eqz v1, :cond_4

    .line 34499
    const/4 v1, 0x7

    iget-object v2, p0, Lkfg;->e:Ljzg;

    .line 34500
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 34502
    :cond_4
    iget-object v1, p0, Lkfg;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 34503
    const/16 v1, 0x8

    iget-object v2, p0, Lkfg;->f:Ljava/lang/String;

    .line 34504
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 34506
    :cond_5
    return v0
.end method
