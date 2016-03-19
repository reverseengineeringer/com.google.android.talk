.class public final Llcm;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llcm;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Float;

.field public b:Llco;

.field public c:Ljava/lang/Float;

.field public d:Ljava/lang/Float;

.field public e:[Llco;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 688
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1693
    iput-object v1, p0, Llcm;->a:Ljava/lang/Float;

    .line 1694
    iput-object v1, p0, Llcm;->b:Llco;

    .line 1695
    iput-object v1, p0, Llcm;->c:Ljava/lang/Float;

    .line 1696
    iput-object v1, p0, Llcm;->d:Ljava/lang/Float;

    .line 1697
    invoke-static {}, Llco;->d()[Llco;

    move-result-object v0

    iput-object v0, p0, Llcm;->e:[Llco;

    .line 1698
    iput-object v1, p0, Llcm;->eD:Llyd;

    .line 1699
    const/4 v0, -0x1

    iput v0, p0, Llcm;->eE:I

    .line 690
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4765
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4766
    sparse-switch v0, :sswitch_data_0

    .line 4770
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4771
    :sswitch_0
    return-object p0

    .line 4776
    :sswitch_1
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llcm;->a:Ljava/lang/Float;

    goto :goto_0

    .line 4780
    :sswitch_2
    iget-object v0, p0, Llcm;->b:Llco;

    if-nez v0, :cond_1

    .line 4781
    new-instance v0, Llco;

    invoke-direct {v0}, Llco;-><init>()V

    iput-object v0, p0, Llcm;->b:Llco;

    .line 4783
    :cond_1
    iget-object v0, p0, Llcm;->b:Llco;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4787
    :sswitch_3
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llcm;->c:Ljava/lang/Float;

    goto :goto_0

    .line 4791
    :sswitch_4
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llcm;->d:Ljava/lang/Float;

    goto :goto_0

    .line 4795
    :sswitch_5
    const/16 v0, 0x2a

    .line 4796
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4797
    iget-object v0, p0, Llcm;->e:[Llco;

    if-nez v0, :cond_3

    move v0, v1

    .line 4798
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llco;

    .line 4800
    if-eqz v0, :cond_2

    .line 4801
    iget-object v3, p0, Llcm;->e:[Llco;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4803
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 4804
    new-instance v3, Llco;

    invoke-direct {v3}, Llco;-><init>()V

    aput-object v3, v2, v0

    .line 4805
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 4806
    invoke-virtual {p1}, Llxy;->a()I

    .line 4803
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4797
    :cond_3
    iget-object v0, p0, Llcm;->e:[Llco;

    array-length v0, v0

    goto :goto_1

    .line 4809
    :cond_4
    new-instance v3, Llco;

    invoke-direct {v3}, Llco;-><init>()V

    aput-object v3, v2, v0

    .line 4810
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 4811
    iput-object v2, p0, Llcm;->e:[Llco;

    goto :goto_0

    .line 4766
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x12 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 706
    iget-object v0, p0, Llcm;->a:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 707
    const/4 v0, 0x1

    iget-object v1, p0, Llcm;->a:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 709
    :cond_0
    iget-object v0, p0, Llcm;->b:Llco;

    if-eqz v0, :cond_1

    .line 710
    const/4 v0, 0x2

    iget-object v1, p0, Llcm;->b:Llco;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 712
    :cond_1
    iget-object v0, p0, Llcm;->c:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 713
    const/4 v0, 0x3

    iget-object v1, p0, Llcm;->c:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 715
    :cond_2
    iget-object v0, p0, Llcm;->d:Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 716
    const/4 v0, 0x4

    iget-object v1, p0, Llcm;->d:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 718
    :cond_3
    iget-object v0, p0, Llcm;->e:[Llco;

    if-eqz v0, :cond_5

    iget-object v0, p0, Llcm;->e:[Llco;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 719
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llcm;->e:[Llco;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 720
    iget-object v1, p0, Llcm;->e:[Llco;

    aget-object v1, v1, v0

    .line 721
    if-eqz v1, :cond_4

    .line 722
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 719
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 726
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 727
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 731
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 732
    iget-object v1, p0, Llcm;->a:Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 733
    const/4 v1, 0x1

    iget-object v2, p0, Llcm;->a:Ljava/lang/Float;

    .line 734
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 2569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 734
    add-int/2addr v0, v1

    .line 736
    :cond_0
    iget-object v1, p0, Llcm;->b:Llco;

    if-eqz v1, :cond_1

    .line 737
    const/4 v1, 0x2

    iget-object v2, p0, Llcm;->b:Llco;

    .line 738
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 740
    :cond_1
    iget-object v1, p0, Llcm;->c:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 741
    const/4 v1, 0x3

    iget-object v2, p0, Llcm;->c:Ljava/lang/Float;

    .line 742
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 3569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 742
    add-int/2addr v0, v1

    .line 744
    :cond_2
    iget-object v1, p0, Llcm;->d:Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 745
    const/4 v1, 0x4

    iget-object v2, p0, Llcm;->d:Ljava/lang/Float;

    .line 746
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 4569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 746
    add-int/2addr v0, v1

    .line 748
    :cond_3
    iget-object v1, p0, Llcm;->e:[Llco;

    if-eqz v1, :cond_6

    iget-object v1, p0, Llcm;->e:[Llco;

    array-length v1, v1

    if-lez v1, :cond_6

    .line 749
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Llcm;->e:[Llco;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 750
    iget-object v2, p0, Llcm;->e:[Llco;

    aget-object v2, v2, v0

    .line 751
    if-eqz v2, :cond_4

    .line 752
    const/4 v3, 0x5

    .line 753
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 749
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 757
    :cond_6
    return v0
.end method
