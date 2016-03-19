.class public final Lkke;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkke;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkii;

.field public b:[Lkhk;

.field public c:[Lkig;

.field public d:Ljava/lang/Integer;

.field public e:Lkig;

.field public f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 866
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1871
    iput-object v1, p0, Lkke;->a:Lkii;

    .line 1872
    invoke-static {}, Lkhk;->d()[Lkhk;

    move-result-object v0

    iput-object v0, p0, Lkke;->b:[Lkhk;

    .line 1873
    invoke-static {}, Lkig;->d()[Lkig;

    move-result-object v0

    iput-object v0, p0, Lkke;->c:[Lkig;

    .line 1874
    iput-object v1, p0, Lkke;->d:Ljava/lang/Integer;

    .line 1875
    iput-object v1, p0, Lkke;->e:Lkig;

    .line 1876
    iput-object v1, p0, Lkke;->f:Ljava/lang/Integer;

    .line 1877
    iput-object v1, p0, Lkke;->eD:Llyd;

    .line 1878
    const/4 v0, -0x1

    iput v0, p0, Lkke;->eE:I

    .line 868
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1961
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1962
    sparse-switch v0, :sswitch_data_0

    .line 1966
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1967
    :sswitch_0
    return-object p0

    .line 1972
    :sswitch_1
    iget-object v0, p0, Lkke;->a:Lkii;

    if-nez v0, :cond_1

    .line 1973
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkke;->a:Lkii;

    .line 1975
    :cond_1
    iget-object v0, p0, Lkke;->a:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1979
    :sswitch_2
    const/16 v0, 0x12

    .line 1980
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1981
    iget-object v0, p0, Lkke;->b:[Lkhk;

    if-nez v0, :cond_3

    move v0, v1

    .line 1982
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkhk;

    .line 1984
    if-eqz v0, :cond_2

    .line 1985
    iget-object v3, p0, Lkke;->b:[Lkhk;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1987
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 1988
    new-instance v3, Lkhk;

    invoke-direct {v3}, Lkhk;-><init>()V

    aput-object v3, v2, v0

    .line 1989
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1990
    invoke-virtual {p1}, Llxy;->a()I

    .line 1987
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1981
    :cond_3
    iget-object v0, p0, Lkke;->b:[Lkhk;

    array-length v0, v0

    goto :goto_1

    .line 1993
    :cond_4
    new-instance v3, Lkhk;

    invoke-direct {v3}, Lkhk;-><init>()V

    aput-object v3, v2, v0

    .line 1994
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1995
    iput-object v2, p0, Lkke;->b:[Lkhk;

    goto :goto_0

    .line 1999
    :sswitch_3
    const/16 v0, 0x1a

    .line 2000
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2001
    iget-object v0, p0, Lkke;->c:[Lkig;

    if-nez v0, :cond_6

    move v0, v1

    .line 2002
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lkig;

    .line 2004
    if-eqz v0, :cond_5

    .line 2005
    iget-object v3, p0, Lkke;->c:[Lkig;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2007
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 2008
    new-instance v3, Lkig;

    invoke-direct {v3}, Lkig;-><init>()V

    aput-object v3, v2, v0

    .line 2009
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2010
    invoke-virtual {p1}, Llxy;->a()I

    .line 2007
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2001
    :cond_6
    iget-object v0, p0, Lkke;->c:[Lkig;

    array-length v0, v0

    goto :goto_3

    .line 2013
    :cond_7
    new-instance v3, Lkig;

    invoke-direct {v3}, Lkig;-><init>()V

    aput-object v3, v2, v0

    .line 2014
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2015
    iput-object v2, p0, Lkke;->c:[Lkig;

    goto/16 :goto_0

    .line 2019
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2020
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 2095
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkke;->d:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 2101
    :sswitch_5
    iget-object v0, p0, Lkke;->e:Lkig;

    if-nez v0, :cond_8

    .line 2102
    new-instance v0, Lkig;

    invoke-direct {v0}, Lkig;-><init>()V

    iput-object v0, p0, Lkke;->e:Lkig;

    .line 2104
    :cond_8
    iget-object v0, p0, Lkke;->e:Lkig;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2108
    :sswitch_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2109
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 2121
    :pswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkke;->f:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1962
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch

    .line 2020
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2109
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 885
    iget-object v0, p0, Lkke;->a:Lkii;

    if-eqz v0, :cond_0

    .line 886
    const/4 v0, 0x1

    iget-object v2, p0, Lkke;->a:Lkii;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 888
    :cond_0
    iget-object v0, p0, Lkke;->b:[Lkhk;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkke;->b:[Lkhk;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 889
    :goto_0
    iget-object v2, p0, Lkke;->b:[Lkhk;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 890
    iget-object v2, p0, Lkke;->b:[Lkhk;

    aget-object v2, v2, v0

    .line 891
    if-eqz v2, :cond_1

    .line 892
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 889
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 896
    :cond_2
    iget-object v0, p0, Lkke;->c:[Lkig;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkke;->c:[Lkig;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 897
    :goto_1
    iget-object v0, p0, Lkke;->c:[Lkig;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 898
    iget-object v0, p0, Lkke;->c:[Lkig;

    aget-object v0, v0, v1

    .line 899
    if-eqz v0, :cond_3

    .line 900
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 897
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 904
    :cond_4
    iget-object v0, p0, Lkke;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 905
    const/4 v0, 0x4

    iget-object v1, p0, Lkke;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 907
    :cond_5
    iget-object v0, p0, Lkke;->e:Lkig;

    if-eqz v0, :cond_6

    .line 908
    const/4 v0, 0x5

    iget-object v1, p0, Lkke;->e:Lkig;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 910
    :cond_6
    iget-object v0, p0, Lkke;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 911
    const/4 v0, 0x6

    iget-object v1, p0, Lkke;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 913
    :cond_7
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 914
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 918
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 919
    iget-object v2, p0, Lkke;->a:Lkii;

    if-eqz v2, :cond_0

    .line 920
    const/4 v2, 0x1

    iget-object v3, p0, Lkke;->a:Lkii;

    .line 921
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 923
    :cond_0
    iget-object v2, p0, Lkke;->b:[Lkhk;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lkke;->b:[Lkhk;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 924
    :goto_0
    iget-object v3, p0, Lkke;->b:[Lkhk;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 925
    iget-object v3, p0, Lkke;->b:[Lkhk;

    aget-object v3, v3, v0

    .line 926
    if-eqz v3, :cond_1

    .line 927
    const/4 v4, 0x2

    .line 928
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 924
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 932
    :cond_3
    iget-object v2, p0, Lkke;->c:[Lkig;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lkke;->c:[Lkig;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 933
    :goto_1
    iget-object v2, p0, Lkke;->c:[Lkig;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 934
    iget-object v2, p0, Lkke;->c:[Lkig;

    aget-object v2, v2, v1

    .line 935
    if-eqz v2, :cond_4

    .line 936
    const/4 v3, 0x3

    .line 937
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 933
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 941
    :cond_5
    iget-object v1, p0, Lkke;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 942
    const/4 v1, 0x4

    iget-object v2, p0, Lkke;->d:Ljava/lang/Integer;

    .line 943
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 945
    :cond_6
    iget-object v1, p0, Lkke;->e:Lkig;

    if-eqz v1, :cond_7

    .line 946
    const/4 v1, 0x5

    iget-object v2, p0, Lkke;->e:Lkig;

    .line 947
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 949
    :cond_7
    iget-object v1, p0, Lkke;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 950
    const/4 v1, 0x6

    iget-object v2, p0, Lkke;->f:Ljava/lang/Integer;

    .line 951
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 953
    :cond_8
    return v0
.end method
