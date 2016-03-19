.class public final Llid;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llid;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Lljg;

.field public c:Llia;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1664
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2669
    iput-object v0, p0, Llid;->a:Ljava/lang/Boolean;

    .line 2670
    iput-object v0, p0, Llid;->b:Lljg;

    .line 2671
    iput-object v0, p0, Llid;->c:Llia;

    .line 2672
    iput-object v0, p0, Llid;->eD:Llyd;

    .line 2673
    const/4 v0, -0x1

    iput v0, p0, Llid;->eE:I

    .line 1666
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3715
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3716
    sparse-switch v0, :sswitch_data_0

    .line 3720
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3721
    :sswitch_0
    return-object p0

    .line 3726
    :sswitch_1
    iget-object v0, p0, Llid;->b:Lljg;

    if-nez v0, :cond_1

    .line 3727
    new-instance v0, Lljg;

    invoke-direct {v0}, Lljg;-><init>()V

    iput-object v0, p0, Llid;->b:Lljg;

    .line 3729
    :cond_1
    iget-object v0, p0, Llid;->b:Lljg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3733
    :sswitch_2
    iget-object v0, p0, Llid;->c:Llia;

    if-nez v0, :cond_2

    .line 3734
    new-instance v0, Llia;

    invoke-direct {v0}, Llia;-><init>()V

    iput-object v0, p0, Llid;->c:Llia;

    .line 3736
    :cond_2
    iget-object v0, p0, Llid;->c:Llia;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3740
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llid;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 3716
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1680
    iget-object v0, p0, Llid;->b:Lljg;

    if-eqz v0, :cond_0

    .line 1681
    const/4 v0, 0x1

    iget-object v1, p0, Llid;->b:Lljg;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1683
    :cond_0
    iget-object v0, p0, Llid;->c:Llia;

    if-eqz v0, :cond_1

    .line 1684
    const/4 v0, 0x2

    iget-object v1, p0, Llid;->c:Llia;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1686
    :cond_1
    iget-object v0, p0, Llid;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 1687
    const/4 v0, 0x3

    iget-object v1, p0, Llid;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 1689
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1690
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1694
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1695
    iget-object v1, p0, Llid;->b:Lljg;

    if-eqz v1, :cond_0

    .line 1696
    const/4 v1, 0x1

    iget-object v2, p0, Llid;->b:Lljg;

    .line 1697
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1699
    :cond_0
    iget-object v1, p0, Llid;->c:Llia;

    if-eqz v1, :cond_1

    .line 1700
    const/4 v1, 0x2

    iget-object v2, p0, Llid;->c:Llia;

    .line 1701
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1703
    :cond_1
    iget-object v1, p0, Llid;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 1704
    const/4 v1, 0x3

    iget-object v2, p0, Llid;->a:Ljava/lang/Boolean;

    .line 1705
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1705
    add-int/2addr v0, v1

    .line 1707
    :cond_2
    return v0
.end method
