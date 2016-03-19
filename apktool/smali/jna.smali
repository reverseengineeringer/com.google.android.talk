.class public final Ljna;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljna;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljpc;

.field public c:Ljpc;

.field public d:Ljpc;

.field public e:Ljmu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 640
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1645
    iput-object v0, p0, Ljna;->a:Ljava/lang/Boolean;

    .line 1646
    iput-object v0, p0, Ljna;->b:Ljpc;

    .line 1647
    iput-object v0, p0, Ljna;->c:Ljpc;

    .line 1648
    iput-object v0, p0, Ljna;->d:Ljpc;

    .line 1649
    iput-object v0, p0, Ljna;->e:Ljmu;

    .line 1650
    iput-object v0, p0, Ljna;->eD:Llyd;

    .line 1651
    const/4 v0, -0x1

    iput v0, p0, Ljna;->eE:I

    .line 642
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2707
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2708
    sparse-switch v0, :sswitch_data_0

    .line 2712
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2713
    :sswitch_0
    return-object p0

    .line 2718
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljna;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 2722
    :sswitch_2
    iget-object v0, p0, Ljna;->b:Ljpc;

    if-nez v0, :cond_1

    .line 2723
    new-instance v0, Ljpc;

    invoke-direct {v0}, Ljpc;-><init>()V

    iput-object v0, p0, Ljna;->b:Ljpc;

    .line 2725
    :cond_1
    iget-object v0, p0, Ljna;->b:Ljpc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2729
    :sswitch_3
    iget-object v0, p0, Ljna;->c:Ljpc;

    if-nez v0, :cond_2

    .line 2730
    new-instance v0, Ljpc;

    invoke-direct {v0}, Ljpc;-><init>()V

    iput-object v0, p0, Ljna;->c:Ljpc;

    .line 2732
    :cond_2
    iget-object v0, p0, Ljna;->c:Ljpc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2736
    :sswitch_4
    iget-object v0, p0, Ljna;->d:Ljpc;

    if-nez v0, :cond_3

    .line 2737
    new-instance v0, Ljpc;

    invoke-direct {v0}, Ljpc;-><init>()V

    iput-object v0, p0, Ljna;->d:Ljpc;

    .line 2739
    :cond_3
    iget-object v0, p0, Ljna;->d:Ljpc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2743
    :sswitch_5
    iget-object v0, p0, Ljna;->e:Ljmu;

    if-nez v0, :cond_4

    .line 2744
    new-instance v0, Ljmu;

    invoke-direct {v0}, Ljmu;-><init>()V

    iput-object v0, p0, Ljna;->e:Ljmu;

    .line 2746
    :cond_4
    iget-object v0, p0, Ljna;->e:Ljmu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2708
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x28 -> :sswitch_1
        0x32 -> :sswitch_2
        0x3a -> :sswitch_3
        0x42 -> :sswitch_4
        0x4a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 658
    iget-object v0, p0, Ljna;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 659
    const/4 v0, 0x5

    iget-object v1, p0, Ljna;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 661
    :cond_0
    iget-object v0, p0, Ljna;->b:Ljpc;

    if-eqz v0, :cond_1

    .line 662
    const/4 v0, 0x6

    iget-object v1, p0, Ljna;->b:Ljpc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 664
    :cond_1
    iget-object v0, p0, Ljna;->c:Ljpc;

    if-eqz v0, :cond_2

    .line 665
    const/4 v0, 0x7

    iget-object v1, p0, Ljna;->c:Ljpc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 667
    :cond_2
    iget-object v0, p0, Ljna;->d:Ljpc;

    if-eqz v0, :cond_3

    .line 668
    const/16 v0, 0x8

    iget-object v1, p0, Ljna;->d:Ljpc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 670
    :cond_3
    iget-object v0, p0, Ljna;->e:Ljmu;

    if-eqz v0, :cond_4

    .line 671
    const/16 v0, 0x9

    iget-object v1, p0, Ljna;->e:Ljmu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 673
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 674
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 678
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 679
    iget-object v1, p0, Ljna;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 680
    const/4 v1, 0x5

    iget-object v2, p0, Ljna;->a:Ljava/lang/Boolean;

    .line 681
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 681
    add-int/2addr v0, v1

    .line 683
    :cond_0
    iget-object v1, p0, Ljna;->b:Ljpc;

    if-eqz v1, :cond_1

    .line 684
    const/4 v1, 0x6

    iget-object v2, p0, Ljna;->b:Ljpc;

    .line 685
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 687
    :cond_1
    iget-object v1, p0, Ljna;->c:Ljpc;

    if-eqz v1, :cond_2

    .line 688
    const/4 v1, 0x7

    iget-object v2, p0, Ljna;->c:Ljpc;

    .line 689
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 691
    :cond_2
    iget-object v1, p0, Ljna;->d:Ljpc;

    if-eqz v1, :cond_3

    .line 692
    const/16 v1, 0x8

    iget-object v2, p0, Ljna;->d:Ljpc;

    .line 693
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 695
    :cond_3
    iget-object v1, p0, Ljna;->e:Ljmu;

    if-eqz v1, :cond_4

    .line 696
    const/16 v1, 0x9

    iget-object v2, p0, Ljna;->e:Ljmu;

    .line 697
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 699
    :cond_4
    return v0
.end method
