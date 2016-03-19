.class public final Lmgm;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmgm;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmgk;

.field public b:Lmgg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1642
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2647
    iput-object v0, p0, Lmgm;->a:Lmgk;

    .line 2648
    iput-object v0, p0, Lmgm;->b:Lmgg;

    .line 2649
    iput-object v0, p0, Lmgm;->eD:Llyd;

    .line 2650
    const/4 v0, -0x1

    iput v0, p0, Lmgm;->eE:I

    .line 1644
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2685
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2686
    sparse-switch v0, :sswitch_data_0

    .line 2690
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2691
    :sswitch_0
    return-object p0

    .line 2696
    :sswitch_1
    iget-object v0, p0, Lmgm;->a:Lmgk;

    if-nez v0, :cond_1

    .line 2697
    new-instance v0, Lmgk;

    invoke-direct {v0}, Lmgk;-><init>()V

    iput-object v0, p0, Lmgm;->a:Lmgk;

    .line 2699
    :cond_1
    iget-object v0, p0, Lmgm;->a:Lmgk;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2703
    :sswitch_2
    iget-object v0, p0, Lmgm;->b:Lmgg;

    if-nez v0, :cond_2

    .line 2704
    new-instance v0, Lmgg;

    invoke-direct {v0}, Lmgg;-><init>()V

    iput-object v0, p0, Lmgm;->b:Lmgg;

    .line 2706
    :cond_2
    iget-object v0, p0, Lmgm;->b:Lmgg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2686
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1657
    iget-object v0, p0, Lmgm;->a:Lmgk;

    if-eqz v0, :cond_0

    .line 1658
    const/4 v0, 0x2

    iget-object v1, p0, Lmgm;->a:Lmgk;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1660
    :cond_0
    iget-object v0, p0, Lmgm;->b:Lmgg;

    if-eqz v0, :cond_1

    .line 1661
    const/4 v0, 0x3

    iget-object v1, p0, Lmgm;->b:Lmgg;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1663
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1664
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1668
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1669
    iget-object v1, p0, Lmgm;->a:Lmgk;

    if-eqz v1, :cond_0

    .line 1670
    const/4 v1, 0x2

    iget-object v2, p0, Lmgm;->a:Lmgk;

    .line 1671
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1673
    :cond_0
    iget-object v1, p0, Lmgm;->b:Lmgg;

    if-eqz v1, :cond_1

    .line 1674
    const/4 v1, 0x3

    iget-object v2, p0, Lmgm;->b:Lmgg;

    .line 1675
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1677
    :cond_1
    return v0
.end method
