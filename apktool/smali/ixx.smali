.class public final Lixx;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lixx;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lixy;

.field public b:Liya;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 828
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1833
    iput-object v0, p0, Lixx;->a:Lixy;

    .line 1834
    iput-object v0, p0, Lixx;->b:Liya;

    .line 1835
    iput-object v0, p0, Lixx;->c:Ljava/lang/String;

    .line 1836
    iput-object v0, p0, Lixx;->d:Ljava/lang/String;

    .line 1837
    iput-object v0, p0, Lixx;->eD:Llyd;

    .line 1838
    const/4 v0, -0x1

    iput v0, p0, Lixx;->eE:I

    .line 830
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1887
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1888
    sparse-switch v0, :sswitch_data_0

    .line 1892
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1893
    :sswitch_0
    return-object p0

    .line 1898
    :sswitch_1
    iget-object v0, p0, Lixx;->a:Lixy;

    if-nez v0, :cond_1

    .line 1899
    new-instance v0, Lixy;

    invoke-direct {v0}, Lixy;-><init>()V

    iput-object v0, p0, Lixx;->a:Lixy;

    .line 1901
    :cond_1
    iget-object v0, p0, Lixx;->a:Lixy;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1905
    :sswitch_2
    iget-object v0, p0, Lixx;->b:Liya;

    if-nez v0, :cond_2

    .line 1906
    new-instance v0, Liya;

    invoke-direct {v0}, Liya;-><init>()V

    iput-object v0, p0, Lixx;->b:Liya;

    .line 1908
    :cond_2
    iget-object v0, p0, Lixx;->b:Liya;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1912
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixx;->c:Ljava/lang/String;

    goto :goto_0

    .line 1916
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixx;->d:Ljava/lang/String;

    goto :goto_0

    .line 1888
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
    .locals 2

    .prologue
    .line 845
    iget-object v0, p0, Lixx;->a:Lixy;

    if-eqz v0, :cond_0

    .line 846
    const/4 v0, 0x1

    iget-object v1, p0, Lixx;->a:Lixy;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 848
    :cond_0
    iget-object v0, p0, Lixx;->b:Liya;

    if-eqz v0, :cond_1

    .line 849
    const/4 v0, 0x2

    iget-object v1, p0, Lixx;->b:Liya;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 851
    :cond_1
    iget-object v0, p0, Lixx;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 852
    const/4 v0, 0x3

    iget-object v1, p0, Lixx;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 854
    :cond_2
    iget-object v0, p0, Lixx;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 855
    const/4 v0, 0x4

    iget-object v1, p0, Lixx;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 857
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 858
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 862
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 863
    iget-object v1, p0, Lixx;->a:Lixy;

    if-eqz v1, :cond_0

    .line 864
    const/4 v1, 0x1

    iget-object v2, p0, Lixx;->a:Lixy;

    .line 865
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 867
    :cond_0
    iget-object v1, p0, Lixx;->b:Liya;

    if-eqz v1, :cond_1

    .line 868
    const/4 v1, 0x2

    iget-object v2, p0, Lixx;->b:Liya;

    .line 869
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 871
    :cond_1
    iget-object v1, p0, Lixx;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 872
    const/4 v1, 0x3

    iget-object v2, p0, Lixx;->c:Ljava/lang/String;

    .line 873
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 875
    :cond_2
    iget-object v1, p0, Lixx;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 876
    const/4 v1, 0x4

    iget-object v2, p0, Lixx;->d:Ljava/lang/String;

    .line 877
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 879
    :cond_3
    return v0
.end method
