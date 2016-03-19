.class public final Ljii;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljii;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljih;

.field public b:Ljava/lang/Integer;

.field public c:Ljij;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 788
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1793
    iput-object v0, p0, Ljii;->a:Ljih;

    .line 1794
    iput-object v0, p0, Ljii;->b:Ljava/lang/Integer;

    .line 1795
    iput-object v0, p0, Ljii;->c:Ljij;

    .line 1796
    iput-object v0, p0, Ljii;->eD:Llyd;

    .line 1797
    const/4 v0, -0x1

    iput v0, p0, Ljii;->eE:I

    .line 790
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1839
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1840
    sparse-switch v0, :sswitch_data_0

    .line 1844
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1845
    :sswitch_0
    return-object p0

    .line 1850
    :sswitch_1
    iget-object v0, p0, Ljii;->a:Ljih;

    if-nez v0, :cond_1

    .line 1851
    new-instance v0, Ljih;

    invoke-direct {v0}, Ljih;-><init>()V

    iput-object v0, p0, Ljii;->a:Ljih;

    .line 1853
    :cond_1
    iget-object v0, p0, Ljii;->a:Ljih;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1857
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1858
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1861
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljii;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 1867
    :sswitch_3
    iget-object v0, p0, Ljii;->c:Ljij;

    if-nez v0, :cond_2

    .line 1868
    new-instance v0, Ljij;

    invoke-direct {v0}, Ljij;-><init>()V

    iput-object v0, p0, Ljii;->c:Ljij;

    .line 1870
    :cond_2
    iget-object v0, p0, Ljii;->c:Ljij;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1840
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    .line 1858
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 804
    iget-object v0, p0, Ljii;->a:Ljih;

    if-eqz v0, :cond_0

    .line 805
    const/4 v0, 0x1

    iget-object v1, p0, Ljii;->a:Ljih;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 807
    :cond_0
    iget-object v0, p0, Ljii;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 808
    const/4 v0, 0x2

    iget-object v1, p0, Ljii;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 810
    :cond_1
    iget-object v0, p0, Ljii;->c:Ljij;

    if-eqz v0, :cond_2

    .line 811
    const/4 v0, 0x3

    iget-object v1, p0, Ljii;->c:Ljij;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 813
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 814
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 818
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 819
    iget-object v1, p0, Ljii;->a:Ljih;

    if-eqz v1, :cond_0

    .line 820
    const/4 v1, 0x1

    iget-object v2, p0, Ljii;->a:Ljih;

    .line 821
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 823
    :cond_0
    iget-object v1, p0, Ljii;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 824
    const/4 v1, 0x2

    iget-object v2, p0, Ljii;->b:Ljava/lang/Integer;

    .line 825
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 827
    :cond_1
    iget-object v1, p0, Ljii;->c:Ljij;

    if-eqz v1, :cond_2

    .line 828
    const/4 v1, 0x3

    iget-object v2, p0, Ljii;->c:Ljij;

    .line 829
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 831
    :cond_2
    return v0
.end method
