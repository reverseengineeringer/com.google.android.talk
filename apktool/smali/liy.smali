.class public final Lliy;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lliy;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lllz;

.field public b:Lllh;

.field public c:Lllv;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1759
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2764
    iput-object v0, p0, Lliy;->a:Lllz;

    .line 2765
    iput-object v0, p0, Lliy;->b:Lllh;

    .line 2766
    iput-object v0, p0, Lliy;->c:Lllv;

    .line 2767
    iput-object v0, p0, Lliy;->eD:Llyd;

    .line 2768
    const/4 v0, -0x1

    iput v0, p0, Lliy;->eE:I

    .line 1761
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2810
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2811
    sparse-switch v0, :sswitch_data_0

    .line 2815
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2816
    :sswitch_0
    return-object p0

    .line 2821
    :sswitch_1
    iget-object v0, p0, Lliy;->a:Lllz;

    if-nez v0, :cond_1

    .line 2822
    new-instance v0, Lllz;

    invoke-direct {v0}, Lllz;-><init>()V

    iput-object v0, p0, Lliy;->a:Lllz;

    .line 2824
    :cond_1
    iget-object v0, p0, Lliy;->a:Lllz;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2828
    :sswitch_2
    iget-object v0, p0, Lliy;->b:Lllh;

    if-nez v0, :cond_2

    .line 2829
    new-instance v0, Lllh;

    invoke-direct {v0}, Lllh;-><init>()V

    iput-object v0, p0, Lliy;->b:Lllh;

    .line 2831
    :cond_2
    iget-object v0, p0, Lliy;->b:Lllh;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2835
    :sswitch_3
    iget-object v0, p0, Lliy;->c:Lllv;

    if-nez v0, :cond_3

    .line 2836
    new-instance v0, Lllv;

    invoke-direct {v0}, Lllv;-><init>()V

    iput-object v0, p0, Lliy;->c:Lllv;

    .line 2838
    :cond_3
    iget-object v0, p0, Lliy;->c:Lllv;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2811
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1775
    iget-object v0, p0, Lliy;->a:Lllz;

    if-eqz v0, :cond_0

    .line 1776
    const/4 v0, 0x1

    iget-object v1, p0, Lliy;->a:Lllz;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1778
    :cond_0
    iget-object v0, p0, Lliy;->b:Lllh;

    if-eqz v0, :cond_1

    .line 1779
    const/4 v0, 0x2

    iget-object v1, p0, Lliy;->b:Lllh;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1781
    :cond_1
    iget-object v0, p0, Lliy;->c:Lllv;

    if-eqz v0, :cond_2

    .line 1782
    const/4 v0, 0x3

    iget-object v1, p0, Lliy;->c:Lllv;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1784
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1785
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1789
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1790
    iget-object v1, p0, Lliy;->a:Lllz;

    if-eqz v1, :cond_0

    .line 1791
    const/4 v1, 0x1

    iget-object v2, p0, Lliy;->a:Lllz;

    .line 1792
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1794
    :cond_0
    iget-object v1, p0, Lliy;->b:Lllh;

    if-eqz v1, :cond_1

    .line 1795
    const/4 v1, 0x2

    iget-object v2, p0, Lliy;->b:Lllh;

    .line 1796
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1798
    :cond_1
    iget-object v1, p0, Lliy;->c:Lllv;

    if-eqz v1, :cond_2

    .line 1799
    const/4 v1, 0x3

    iget-object v2, p0, Lliy;->c:Lllv;

    .line 1800
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1802
    :cond_2
    return v0
.end method
