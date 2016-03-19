.class public final Ljcg;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljcg;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljpt;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Boolean;

.field public d:[Ljpm;

.field public e:[Ljpm;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9493
    invoke-direct {p0}, Llyb;-><init>()V

    .line 10498
    iput-object v1, p0, Ljcg;->a:Ljpt;

    .line 10499
    iput-object v1, p0, Ljcg;->b:Ljava/lang/Boolean;

    .line 10500
    iput-object v1, p0, Ljcg;->c:Ljava/lang/Boolean;

    .line 10501
    invoke-static {}, Ljpm;->d()[Ljpm;

    move-result-object v0

    iput-object v0, p0, Ljcg;->d:[Ljpm;

    .line 10502
    invoke-static {}, Ljpm;->d()[Ljpm;

    move-result-object v0

    iput-object v0, p0, Ljcg;->e:[Ljpm;

    .line 10503
    iput-object v1, p0, Ljcg;->eD:Llyd;

    .line 10504
    const/4 v0, -0x1

    iput v0, p0, Ljcg;->eE:I

    .line 9495
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 12580
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 12581
    sparse-switch v0, :sswitch_data_0

    .line 12585
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12586
    :sswitch_0
    return-object p0

    .line 12591
    :sswitch_1
    iget-object v0, p0, Ljcg;->a:Ljpt;

    if-nez v0, :cond_1

    .line 12592
    new-instance v0, Ljpt;

    invoke-direct {v0}, Ljpt;-><init>()V

    iput-object v0, p0, Ljcg;->a:Ljpt;

    .line 12594
    :cond_1
    iget-object v0, p0, Ljcg;->a:Ljpt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 12598
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljcg;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 12602
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljcg;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 12606
    :sswitch_4
    const/16 v0, 0x22

    .line 12607
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 12608
    iget-object v0, p0, Ljcg;->d:[Ljpm;

    if-nez v0, :cond_3

    move v0, v1

    .line 12609
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljpm;

    .line 12611
    if-eqz v0, :cond_2

    .line 12612
    iget-object v3, p0, Ljcg;->d:[Ljpm;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12614
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 12615
    new-instance v3, Ljpm;

    invoke-direct {v3}, Ljpm;-><init>()V

    aput-object v3, v2, v0

    .line 12616
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 12617
    invoke-virtual {p1}, Llxy;->a()I

    .line 12614
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 12608
    :cond_3
    iget-object v0, p0, Ljcg;->d:[Ljpm;

    array-length v0, v0

    goto :goto_1

    .line 12620
    :cond_4
    new-instance v3, Ljpm;

    invoke-direct {v3}, Ljpm;-><init>()V

    aput-object v3, v2, v0

    .line 12621
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 12622
    iput-object v2, p0, Ljcg;->d:[Ljpm;

    goto :goto_0

    .line 12626
    :sswitch_5
    const/16 v0, 0x2a

    .line 12627
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 12628
    iget-object v0, p0, Ljcg;->e:[Ljpm;

    if-nez v0, :cond_6

    move v0, v1

    .line 12629
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljpm;

    .line 12631
    if-eqz v0, :cond_5

    .line 12632
    iget-object v3, p0, Ljcg;->e:[Ljpm;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12634
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 12635
    new-instance v3, Ljpm;

    invoke-direct {v3}, Ljpm;-><init>()V

    aput-object v3, v2, v0

    .line 12636
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 12637
    invoke-virtual {p1}, Llxy;->a()I

    .line 12634
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 12628
    :cond_6
    iget-object v0, p0, Ljcg;->e:[Ljpm;

    array-length v0, v0

    goto :goto_3

    .line 12640
    :cond_7
    new-instance v3, Ljpm;

    invoke-direct {v3}, Ljpm;-><init>()V

    aput-object v3, v2, v0

    .line 12641
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 12642
    iput-object v2, p0, Ljcg;->e:[Ljpm;

    goto/16 :goto_0

    .line 12581
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 9511
    iget-object v0, p0, Ljcg;->a:Ljpt;

    if-eqz v0, :cond_0

    .line 9512
    const/4 v0, 0x1

    iget-object v2, p0, Ljcg;->a:Ljpt;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 9514
    :cond_0
    iget-object v0, p0, Ljcg;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 9515
    const/4 v0, 0x2

    iget-object v2, p0, Ljcg;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 9517
    :cond_1
    iget-object v0, p0, Ljcg;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 9518
    const/4 v0, 0x3

    iget-object v2, p0, Ljcg;->c:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 9520
    :cond_2
    iget-object v0, p0, Ljcg;->d:[Ljpm;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljcg;->d:[Ljpm;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 9521
    :goto_0
    iget-object v2, p0, Ljcg;->d:[Ljpm;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 9522
    iget-object v2, p0, Ljcg;->d:[Ljpm;

    aget-object v2, v2, v0

    .line 9523
    if-eqz v2, :cond_3

    .line 9524
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 9521
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9528
    :cond_4
    iget-object v0, p0, Ljcg;->e:[Ljpm;

    if-eqz v0, :cond_6

    iget-object v0, p0, Ljcg;->e:[Ljpm;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 9529
    :goto_1
    iget-object v0, p0, Ljcg;->e:[Ljpm;

    array-length v0, v0

    if-ge v1, v0, :cond_6

    .line 9530
    iget-object v0, p0, Ljcg;->e:[Ljpm;

    aget-object v0, v0, v1

    .line 9531
    if-eqz v0, :cond_5

    .line 9532
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 9529
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9536
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 9537
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 9541
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 9542
    iget-object v2, p0, Ljcg;->a:Ljpt;

    if-eqz v2, :cond_0

    .line 9543
    const/4 v2, 0x1

    iget-object v3, p0, Ljcg;->a:Ljpt;

    .line 9544
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9546
    :cond_0
    iget-object v2, p0, Ljcg;->b:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 9547
    const/4 v2, 0x2

    iget-object v3, p0, Ljcg;->b:Ljava/lang/Boolean;

    .line 9548
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 9548
    add-int/2addr v0, v2

    .line 9550
    :cond_1
    iget-object v2, p0, Ljcg;->c:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 9551
    const/4 v2, 0x3

    iget-object v3, p0, Ljcg;->c:Ljava/lang/Boolean;

    .line 9552
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 9552
    add-int/2addr v0, v2

    .line 9554
    :cond_2
    iget-object v2, p0, Ljcg;->d:[Ljpm;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ljcg;->d:[Ljpm;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    .line 9555
    :goto_0
    iget-object v3, p0, Ljcg;->d:[Ljpm;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 9556
    iget-object v3, p0, Ljcg;->d:[Ljpm;

    aget-object v3, v3, v0

    .line 9557
    if-eqz v3, :cond_3

    .line 9558
    const/4 v4, 0x4

    .line 9559
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 9555
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 9563
    :cond_5
    iget-object v2, p0, Ljcg;->e:[Ljpm;

    if-eqz v2, :cond_7

    iget-object v2, p0, Ljcg;->e:[Ljpm;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 9564
    :goto_1
    iget-object v2, p0, Ljcg;->e:[Ljpm;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 9565
    iget-object v2, p0, Ljcg;->e:[Ljpm;

    aget-object v2, v2, v1

    .line 9566
    if-eqz v2, :cond_6

    .line 9567
    const/4 v3, 0x5

    .line 9568
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9564
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9572
    :cond_7
    return v0
.end method
