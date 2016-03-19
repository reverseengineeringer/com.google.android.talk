.class public final Llji;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llji;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lljk;

.field public b:Lljl;

.field public c:Lljm;

.field public d:Lljn;

.field public e:Lljj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2663
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3668
    iput-object v0, p0, Llji;->a:Lljk;

    .line 3669
    iput-object v0, p0, Llji;->b:Lljl;

    .line 3670
    iput-object v0, p0, Llji;->c:Lljm;

    .line 3671
    iput-object v0, p0, Llji;->d:Lljn;

    .line 3672
    iput-object v0, p0, Llji;->e:Lljj;

    .line 3673
    iput-object v0, p0, Llji;->eD:Llyd;

    .line 3674
    const/4 v0, -0x1

    iput v0, p0, Llji;->eE:I

    .line 2665
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3730
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3731
    sparse-switch v0, :sswitch_data_0

    .line 3735
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3736
    :sswitch_0
    return-object p0

    .line 3741
    :sswitch_1
    iget-object v0, p0, Llji;->a:Lljk;

    if-nez v0, :cond_1

    .line 3742
    new-instance v0, Lljk;

    invoke-direct {v0}, Lljk;-><init>()V

    iput-object v0, p0, Llji;->a:Lljk;

    .line 3744
    :cond_1
    iget-object v0, p0, Llji;->a:Lljk;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3748
    :sswitch_2
    iget-object v0, p0, Llji;->b:Lljl;

    if-nez v0, :cond_2

    .line 3749
    new-instance v0, Lljl;

    invoke-direct {v0}, Lljl;-><init>()V

    iput-object v0, p0, Llji;->b:Lljl;

    .line 3751
    :cond_2
    iget-object v0, p0, Llji;->b:Lljl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3755
    :sswitch_3
    iget-object v0, p0, Llji;->c:Lljm;

    if-nez v0, :cond_3

    .line 3756
    new-instance v0, Lljm;

    invoke-direct {v0}, Lljm;-><init>()V

    iput-object v0, p0, Llji;->c:Lljm;

    .line 3758
    :cond_3
    iget-object v0, p0, Llji;->c:Lljm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3762
    :sswitch_4
    iget-object v0, p0, Llji;->d:Lljn;

    if-nez v0, :cond_4

    .line 3763
    new-instance v0, Lljn;

    invoke-direct {v0}, Lljn;-><init>()V

    iput-object v0, p0, Llji;->d:Lljn;

    .line 3765
    :cond_4
    iget-object v0, p0, Llji;->d:Lljn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3769
    :sswitch_5
    iget-object v0, p0, Llji;->e:Lljj;

    if-nez v0, :cond_5

    .line 3770
    new-instance v0, Lljj;

    invoke-direct {v0}, Lljj;-><init>()V

    iput-object v0, p0, Llji;->e:Lljj;

    .line 3772
    :cond_5
    iget-object v0, p0, Llji;->e:Lljj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3731
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
    .locals 2

    .prologue
    .line 2681
    iget-object v0, p0, Llji;->a:Lljk;

    if-eqz v0, :cond_0

    .line 2682
    const/4 v0, 0x1

    iget-object v1, p0, Llji;->a:Lljk;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2684
    :cond_0
    iget-object v0, p0, Llji;->b:Lljl;

    if-eqz v0, :cond_1

    .line 2685
    const/4 v0, 0x2

    iget-object v1, p0, Llji;->b:Lljl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2687
    :cond_1
    iget-object v0, p0, Llji;->c:Lljm;

    if-eqz v0, :cond_2

    .line 2688
    const/4 v0, 0x3

    iget-object v1, p0, Llji;->c:Lljm;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2690
    :cond_2
    iget-object v0, p0, Llji;->d:Lljn;

    if-eqz v0, :cond_3

    .line 2691
    const/4 v0, 0x4

    iget-object v1, p0, Llji;->d:Lljn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2693
    :cond_3
    iget-object v0, p0, Llji;->e:Lljj;

    if-eqz v0, :cond_4

    .line 2694
    const/4 v0, 0x5

    iget-object v1, p0, Llji;->e:Lljj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2696
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2697
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2701
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2702
    iget-object v1, p0, Llji;->a:Lljk;

    if-eqz v1, :cond_0

    .line 2703
    const/4 v1, 0x1

    iget-object v2, p0, Llji;->a:Lljk;

    .line 2704
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2706
    :cond_0
    iget-object v1, p0, Llji;->b:Lljl;

    if-eqz v1, :cond_1

    .line 2707
    const/4 v1, 0x2

    iget-object v2, p0, Llji;->b:Lljl;

    .line 2708
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2710
    :cond_1
    iget-object v1, p0, Llji;->c:Lljm;

    if-eqz v1, :cond_2

    .line 2711
    const/4 v1, 0x3

    iget-object v2, p0, Llji;->c:Lljm;

    .line 2712
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2714
    :cond_2
    iget-object v1, p0, Llji;->d:Lljn;

    if-eqz v1, :cond_3

    .line 2715
    const/4 v1, 0x4

    iget-object v2, p0, Llji;->d:Lljn;

    .line 2716
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2718
    :cond_3
    iget-object v1, p0, Llji;->e:Lljj;

    if-eqz v1, :cond_4

    .line 2719
    const/4 v1, 0x5

    iget-object v2, p0, Llji;->e:Lljj;

    .line 2720
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2722
    :cond_4
    return v0
.end method
