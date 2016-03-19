.class public final Ljjj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljjj;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[Ljava/lang/String;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2553
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3558
    iput-object v1, p0, Ljjj;->a:Ljava/lang/Integer;

    .line 3559
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Ljjj;->b:[Ljava/lang/String;

    .line 3560
    iput-object v1, p0, Ljjj;->c:Ljava/lang/Long;

    .line 3561
    iput-object v1, p0, Ljjj;->d:Ljava/lang/Long;

    .line 3562
    iput-object v1, p0, Ljjj;->eD:Llyd;

    .line 3563
    const/4 v0, -0x1

    iput v0, p0, Ljjj;->eE:I

    .line 2555
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3627
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3628
    sparse-switch v0, :sswitch_data_0

    .line 3632
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3633
    :sswitch_0
    return-object p0

    .line 3638
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljjj;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 3642
    :sswitch_2
    const/16 v0, 0x12

    .line 3643
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3644
    iget-object v0, p0, Ljjj;->b:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 3645
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 3646
    if-eqz v0, :cond_1

    .line 3647
    iget-object v3, p0, Ljjj;->b:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3649
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 3650
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3651
    invoke-virtual {p1}, Llxy;->a()I

    .line 3649
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3644
    :cond_2
    iget-object v0, p0, Ljjj;->b:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 3654
    :cond_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3655
    iput-object v2, p0, Ljjj;->b:[Ljava/lang/String;

    goto :goto_0

    .line 3659
    :sswitch_3
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljjj;->c:Ljava/lang/Long;

    goto :goto_0

    .line 3663
    :sswitch_4
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljjj;->d:Ljava/lang/Long;

    goto :goto_0

    .line 3628
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 2570
    iget-object v0, p0, Ljjj;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2571
    const/4 v0, 0x1

    iget-object v1, p0, Ljjj;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2573
    :cond_0
    iget-object v0, p0, Ljjj;->b:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljjj;->b:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 2574
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljjj;->b:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 2575
    iget-object v1, p0, Ljjj;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 2576
    if-eqz v1, :cond_1

    .line 2577
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2574
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2581
    :cond_2
    iget-object v0, p0, Ljjj;->c:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 2582
    const/4 v0, 0x3

    iget-object v1, p0, Ljjj;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 2584
    :cond_3
    iget-object v0, p0, Ljjj;->d:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 2585
    const/4 v0, 0x4

    iget-object v1, p0, Ljjj;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 2587
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2588
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2592
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2593
    iget-object v2, p0, Ljjj;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 2594
    const/4 v2, 0x1

    iget-object v3, p0, Ljjj;->a:Ljava/lang/Integer;

    .line 2595
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2597
    :cond_0
    iget-object v2, p0, Ljjj;->b:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljjj;->b:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v1

    move v3, v1

    .line 2600
    :goto_0
    iget-object v4, p0, Ljjj;->b:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 2601
    iget-object v4, p0, Ljjj;->b:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 2602
    if-eqz v4, :cond_1

    .line 2603
    add-int/lit8 v3, v3, 0x1

    .line 2605
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2600
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2608
    :cond_2
    add-int/2addr v0, v2

    .line 2609
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 2611
    :cond_3
    iget-object v1, p0, Ljjj;->c:Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 2612
    const/4 v1, 0x3

    iget-object v2, p0, Ljjj;->c:Ljava/lang/Long;

    .line 2613
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2615
    :cond_4
    iget-object v1, p0, Ljjj;->d:Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 2616
    const/4 v1, 0x4

    iget-object v2, p0, Ljjj;->d:Ljava/lang/Long;

    .line 2617
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2619
    :cond_5
    return v0
.end method
