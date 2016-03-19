.class public final Lkds;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkds;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkck;

.field public b:[Lkbb;

.field public c:[Lkdq;

.field public d:Lkfe;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21559
    invoke-direct {p0}, Llyb;-><init>()V

    .line 22564
    iput-object v1, p0, Lkds;->a:Lkck;

    .line 22565
    invoke-static {}, Lkbb;->d()[Lkbb;

    move-result-object v0

    iput-object v0, p0, Lkds;->b:[Lkbb;

    .line 22566
    invoke-static {}, Lkdq;->d()[Lkdq;

    move-result-object v0

    iput-object v0, p0, Lkds;->c:[Lkdq;

    .line 22567
    iput-object v1, p0, Lkds;->d:Lkfe;

    .line 22568
    iput-object v1, p0, Lkds;->eD:Llyd;

    .line 22569
    const/4 v0, -0x1

    iput v0, p0, Lkds;->eE:I

    .line 21561
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 22638
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 22639
    sparse-switch v0, :sswitch_data_0

    .line 22643
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22644
    :sswitch_0
    return-object p0

    .line 22649
    :sswitch_1
    iget-object v0, p0, Lkds;->a:Lkck;

    if-nez v0, :cond_1

    .line 22650
    new-instance v0, Lkck;

    invoke-direct {v0}, Lkck;-><init>()V

    iput-object v0, p0, Lkds;->a:Lkck;

    .line 22652
    :cond_1
    iget-object v0, p0, Lkds;->a:Lkck;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 22656
    :sswitch_2
    const/16 v0, 0x12

    .line 22657
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 22658
    iget-object v0, p0, Lkds;->b:[Lkbb;

    if-nez v0, :cond_3

    move v0, v1

    .line 22659
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkbb;

    .line 22661
    if-eqz v0, :cond_2

    .line 22662
    iget-object v3, p0, Lkds;->b:[Lkbb;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22664
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 22665
    new-instance v3, Lkbb;

    invoke-direct {v3}, Lkbb;-><init>()V

    aput-object v3, v2, v0

    .line 22666
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 22667
    invoke-virtual {p1}, Llxy;->a()I

    .line 22664
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 22658
    :cond_3
    iget-object v0, p0, Lkds;->b:[Lkbb;

    array-length v0, v0

    goto :goto_1

    .line 22670
    :cond_4
    new-instance v3, Lkbb;

    invoke-direct {v3}, Lkbb;-><init>()V

    aput-object v3, v2, v0

    .line 22671
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 22672
    iput-object v2, p0, Lkds;->b:[Lkbb;

    goto :goto_0

    .line 22676
    :sswitch_3
    const/16 v0, 0x1a

    .line 22677
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 22678
    iget-object v0, p0, Lkds;->c:[Lkdq;

    if-nez v0, :cond_6

    move v0, v1

    .line 22679
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lkdq;

    .line 22681
    if-eqz v0, :cond_5

    .line 22682
    iget-object v3, p0, Lkds;->c:[Lkdq;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22684
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 22685
    new-instance v3, Lkdq;

    invoke-direct {v3}, Lkdq;-><init>()V

    aput-object v3, v2, v0

    .line 22686
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 22687
    invoke-virtual {p1}, Llxy;->a()I

    .line 22684
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 22678
    :cond_6
    iget-object v0, p0, Lkds;->c:[Lkdq;

    array-length v0, v0

    goto :goto_3

    .line 22690
    :cond_7
    new-instance v3, Lkdq;

    invoke-direct {v3}, Lkdq;-><init>()V

    aput-object v3, v2, v0

    .line 22691
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 22692
    iput-object v2, p0, Lkds;->c:[Lkdq;

    goto/16 :goto_0

    .line 22696
    :sswitch_4
    iget-object v0, p0, Lkds;->d:Lkfe;

    if-nez v0, :cond_8

    .line 22697
    new-instance v0, Lkfe;

    invoke-direct {v0}, Lkfe;-><init>()V

    iput-object v0, p0, Lkds;->d:Lkfe;

    .line 22699
    :cond_8
    iget-object v0, p0, Lkds;->d:Lkfe;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 22639
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 21576
    iget-object v0, p0, Lkds;->a:Lkck;

    if-eqz v0, :cond_0

    .line 21577
    const/4 v0, 0x1

    iget-object v2, p0, Lkds;->a:Lkck;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 21579
    :cond_0
    iget-object v0, p0, Lkds;->b:[Lkbb;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkds;->b:[Lkbb;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 21580
    :goto_0
    iget-object v2, p0, Lkds;->b:[Lkbb;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 21581
    iget-object v2, p0, Lkds;->b:[Lkbb;

    aget-object v2, v2, v0

    .line 21582
    if-eqz v2, :cond_1

    .line 21583
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 21580
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21587
    :cond_2
    iget-object v0, p0, Lkds;->c:[Lkdq;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkds;->c:[Lkdq;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 21588
    :goto_1
    iget-object v0, p0, Lkds;->c:[Lkdq;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 21589
    iget-object v0, p0, Lkds;->c:[Lkdq;

    aget-object v0, v0, v1

    .line 21590
    if-eqz v0, :cond_3

    .line 21591
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 21588
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 21595
    :cond_4
    iget-object v0, p0, Lkds;->d:Lkfe;

    if-eqz v0, :cond_5

    .line 21596
    const/4 v0, 0x4

    iget-object v1, p0, Lkds;->d:Lkfe;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 21598
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 21599
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 21603
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 21604
    iget-object v2, p0, Lkds;->a:Lkck;

    if-eqz v2, :cond_0

    .line 21605
    const/4 v2, 0x1

    iget-object v3, p0, Lkds;->a:Lkck;

    .line 21606
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 21608
    :cond_0
    iget-object v2, p0, Lkds;->b:[Lkbb;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lkds;->b:[Lkbb;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 21609
    :goto_0
    iget-object v3, p0, Lkds;->b:[Lkbb;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 21610
    iget-object v3, p0, Lkds;->b:[Lkbb;

    aget-object v3, v3, v0

    .line 21611
    if-eqz v3, :cond_1

    .line 21612
    const/4 v4, 0x2

    .line 21613
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 21609
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 21617
    :cond_3
    iget-object v2, p0, Lkds;->c:[Lkdq;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lkds;->c:[Lkdq;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 21618
    :goto_1
    iget-object v2, p0, Lkds;->c:[Lkdq;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 21619
    iget-object v2, p0, Lkds;->c:[Lkdq;

    aget-object v2, v2, v1

    .line 21620
    if-eqz v2, :cond_4

    .line 21621
    const/4 v3, 0x3

    .line 21622
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 21618
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 21626
    :cond_5
    iget-object v1, p0, Lkds;->d:Lkfe;

    if-eqz v1, :cond_6

    .line 21627
    const/4 v1, 0x4

    iget-object v2, p0, Lkds;->d:Lkfe;

    .line 21628
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21630
    :cond_6
    return v0
.end method
