.class public final Ljxi;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljxi;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile f:[Ljxi;


# instance fields
.field public a:[Lmel;

.field public b:Lkbx;

.field public c:Lkbs;

.field public d:Ljzy;

.field public e:Lkff;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6518
    invoke-direct {p0}, Llyb;-><init>()V

    .line 7523
    invoke-static {}, Lmel;->d()[Lmel;

    move-result-object v0

    iput-object v0, p0, Ljxi;->a:[Lmel;

    .line 7524
    iput-object v1, p0, Ljxi;->b:Lkbx;

    .line 7525
    iput-object v1, p0, Ljxi;->c:Lkbs;

    .line 7526
    iput-object v1, p0, Ljxi;->d:Ljzy;

    .line 7527
    iput-object v1, p0, Ljxi;->e:Lkff;

    .line 7528
    iput-object v1, p0, Ljxi;->eD:Llyd;

    .line 7529
    const/4 v0, -0x1

    iput v0, p0, Ljxi;->eE:I

    .line 6520
    return-void
.end method

.method public static d()[Ljxi;
    .locals 2

    .prologue
    .line 6490
    sget-object v0, Ljxi;->f:[Ljxi;

    if-nez v0, :cond_1

    .line 6491
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 6493
    :try_start_0
    sget-object v0, Ljxi;->f:[Ljxi;

    if-nez v0, :cond_0

    .line 6494
    const/4 v0, 0x0

    new-array v0, v0, [Ljxi;

    sput-object v0, Ljxi;->f:[Ljxi;

    .line 6496
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6498
    :cond_1
    sget-object v0, Ljxi;->f:[Ljxi;

    return-object v0

    .line 6496
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
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 7595
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 7596
    sparse-switch v0, :sswitch_data_0

    .line 7600
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7601
    :sswitch_0
    return-object p0

    .line 7606
    :sswitch_1
    const/16 v0, 0xa

    .line 7607
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 7608
    iget-object v0, p0, Ljxi;->a:[Lmel;

    if-nez v0, :cond_2

    move v0, v1

    .line 7609
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmel;

    .line 7611
    if-eqz v0, :cond_1

    .line 7612
    iget-object v3, p0, Ljxi;->a:[Lmel;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7614
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 7615
    new-instance v3, Lmel;

    invoke-direct {v3}, Lmel;-><init>()V

    aput-object v3, v2, v0

    .line 7616
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 7617
    invoke-virtual {p1}, Llxy;->a()I

    .line 7614
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7608
    :cond_2
    iget-object v0, p0, Ljxi;->a:[Lmel;

    array-length v0, v0

    goto :goto_1

    .line 7620
    :cond_3
    new-instance v3, Lmel;

    invoke-direct {v3}, Lmel;-><init>()V

    aput-object v3, v2, v0

    .line 7621
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 7622
    iput-object v2, p0, Ljxi;->a:[Lmel;

    goto :goto_0

    .line 7626
    :sswitch_2
    iget-object v0, p0, Ljxi;->b:Lkbx;

    if-nez v0, :cond_4

    .line 7627
    new-instance v0, Lkbx;

    invoke-direct {v0}, Lkbx;-><init>()V

    iput-object v0, p0, Ljxi;->b:Lkbx;

    .line 7629
    :cond_4
    iget-object v0, p0, Ljxi;->b:Lkbx;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 7633
    :sswitch_3
    iget-object v0, p0, Ljxi;->c:Lkbs;

    if-nez v0, :cond_5

    .line 7634
    new-instance v0, Lkbs;

    invoke-direct {v0}, Lkbs;-><init>()V

    iput-object v0, p0, Ljxi;->c:Lkbs;

    .line 7636
    :cond_5
    iget-object v0, p0, Ljxi;->c:Lkbs;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 7640
    :sswitch_4
    iget-object v0, p0, Ljxi;->d:Ljzy;

    if-nez v0, :cond_6

    .line 7641
    new-instance v0, Ljzy;

    invoke-direct {v0}, Ljzy;-><init>()V

    iput-object v0, p0, Ljxi;->d:Ljzy;

    .line 7643
    :cond_6
    iget-object v0, p0, Ljxi;->d:Ljzy;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 7647
    :sswitch_5
    iget-object v0, p0, Ljxi;->e:Lkff;

    if-nez v0, :cond_7

    .line 7648
    new-instance v0, Lkff;

    invoke-direct {v0}, Lkff;-><init>()V

    iput-object v0, p0, Ljxi;->e:Lkff;

    .line 7650
    :cond_7
    iget-object v0, p0, Ljxi;->e:Lkff;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 7596
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 6536
    iget-object v0, p0, Ljxi;->a:[Lmel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljxi;->a:[Lmel;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 6537
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljxi;->a:[Lmel;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 6538
    iget-object v1, p0, Ljxi;->a:[Lmel;

    aget-object v1, v1, v0

    .line 6539
    if-eqz v1, :cond_0

    .line 6540
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 6537
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6544
    :cond_1
    iget-object v0, p0, Ljxi;->b:Lkbx;

    if-eqz v0, :cond_2

    .line 6545
    const/4 v0, 0x2

    iget-object v1, p0, Ljxi;->b:Lkbx;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 6547
    :cond_2
    iget-object v0, p0, Ljxi;->c:Lkbs;

    if-eqz v0, :cond_3

    .line 6548
    const/4 v0, 0x3

    iget-object v1, p0, Ljxi;->c:Lkbs;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 6550
    :cond_3
    iget-object v0, p0, Ljxi;->d:Ljzy;

    if-eqz v0, :cond_4

    .line 6551
    const/4 v0, 0x4

    iget-object v1, p0, Ljxi;->d:Ljzy;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 6553
    :cond_4
    iget-object v0, p0, Ljxi;->e:Lkff;

    if-eqz v0, :cond_5

    .line 6554
    const/4 v0, 0x5

    iget-object v1, p0, Ljxi;->e:Lkff;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 6556
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 6557
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 6561
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 6562
    iget-object v0, p0, Ljxi;->a:[Lmel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljxi;->a:[Lmel;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 6563
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljxi;->a:[Lmel;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 6564
    iget-object v2, p0, Ljxi;->a:[Lmel;

    aget-object v2, v2, v0

    .line 6565
    if-eqz v2, :cond_0

    .line 6566
    const/4 v3, 0x1

    .line 6567
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 6563
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6571
    :cond_1
    iget-object v0, p0, Ljxi;->b:Lkbx;

    if-eqz v0, :cond_2

    .line 6572
    const/4 v0, 0x2

    iget-object v2, p0, Ljxi;->b:Lkbx;

    .line 6573
    invoke-static {v0, v2}, Llxz;->d(ILlyi;)I

    move-result v0

    add-int/2addr v1, v0

    .line 6575
    :cond_2
    iget-object v0, p0, Ljxi;->c:Lkbs;

    if-eqz v0, :cond_3

    .line 6576
    const/4 v0, 0x3

    iget-object v2, p0, Ljxi;->c:Lkbs;

    .line 6577
    invoke-static {v0, v2}, Llxz;->d(ILlyi;)I

    move-result v0

    add-int/2addr v1, v0

    .line 6579
    :cond_3
    iget-object v0, p0, Ljxi;->d:Ljzy;

    if-eqz v0, :cond_4

    .line 6580
    const/4 v0, 0x4

    iget-object v2, p0, Ljxi;->d:Ljzy;

    .line 6581
    invoke-static {v0, v2}, Llxz;->d(ILlyi;)I

    move-result v0

    add-int/2addr v1, v0

    .line 6583
    :cond_4
    iget-object v0, p0, Ljxi;->e:Lkff;

    if-eqz v0, :cond_5

    .line 6584
    const/4 v0, 0x5

    iget-object v2, p0, Ljxi;->e:Lkff;

    .line 6585
    invoke-static {v0, v2}, Llxz;->d(ILlyi;)I

    move-result v0

    add-int/2addr v1, v0

    .line 6587
    :cond_5
    return v1
.end method
