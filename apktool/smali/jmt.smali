.class public final Ljmt;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljmt;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljpc;

.field public b:Ljmu;

.field public c:[Ljpc;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 942
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1947
    iput-object v1, p0, Ljmt;->a:Ljpc;

    .line 1948
    iput-object v1, p0, Ljmt;->b:Ljmu;

    .line 1949
    invoke-static {}, Ljpc;->d()[Ljpc;

    move-result-object v0

    iput-object v0, p0, Ljmt;->c:[Ljpc;

    .line 1950
    iput-object v1, p0, Ljmt;->eD:Llyd;

    .line 1951
    const/4 v0, -0x1

    iput v0, p0, Ljmt;->eE:I

    .line 944
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2003
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2004
    sparse-switch v0, :sswitch_data_0

    .line 2008
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2009
    :sswitch_0
    return-object p0

    .line 2014
    :sswitch_1
    iget-object v0, p0, Ljmt;->a:Ljpc;

    if-nez v0, :cond_1

    .line 2015
    new-instance v0, Ljpc;

    invoke-direct {v0}, Ljpc;-><init>()V

    iput-object v0, p0, Ljmt;->a:Ljpc;

    .line 2017
    :cond_1
    iget-object v0, p0, Ljmt;->a:Ljpc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2021
    :sswitch_2
    iget-object v0, p0, Ljmt;->b:Ljmu;

    if-nez v0, :cond_2

    .line 2022
    new-instance v0, Ljmu;

    invoke-direct {v0}, Ljmu;-><init>()V

    iput-object v0, p0, Ljmt;->b:Ljmu;

    .line 2024
    :cond_2
    iget-object v0, p0, Ljmt;->b:Ljmu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2028
    :sswitch_3
    const/16 v0, 0x1a

    .line 2029
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2030
    iget-object v0, p0, Ljmt;->c:[Ljpc;

    if-nez v0, :cond_4

    move v0, v1

    .line 2031
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljpc;

    .line 2033
    if-eqz v0, :cond_3

    .line 2034
    iget-object v3, p0, Ljmt;->c:[Ljpc;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2036
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 2037
    new-instance v3, Ljpc;

    invoke-direct {v3}, Ljpc;-><init>()V

    aput-object v3, v2, v0

    .line 2038
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2039
    invoke-virtual {p1}, Llxy;->a()I

    .line 2036
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2030
    :cond_4
    iget-object v0, p0, Ljmt;->c:[Ljpc;

    array-length v0, v0

    goto :goto_1

    .line 2042
    :cond_5
    new-instance v3, Ljpc;

    invoke-direct {v3}, Ljpc;-><init>()V

    aput-object v3, v2, v0

    .line 2043
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2044
    iput-object v2, p0, Ljmt;->c:[Ljpc;

    goto :goto_0

    .line 2004
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 958
    iget-object v0, p0, Ljmt;->a:Ljpc;

    if-eqz v0, :cond_0

    .line 959
    const/4 v0, 0x1

    iget-object v1, p0, Ljmt;->a:Ljpc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 961
    :cond_0
    iget-object v0, p0, Ljmt;->b:Ljmu;

    if-eqz v0, :cond_1

    .line 962
    const/4 v0, 0x2

    iget-object v1, p0, Ljmt;->b:Ljmu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 964
    :cond_1
    iget-object v0, p0, Ljmt;->c:[Ljpc;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljmt;->c:[Ljpc;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 965
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljmt;->c:[Ljpc;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 966
    iget-object v1, p0, Ljmt;->c:[Ljpc;

    aget-object v1, v1, v0

    .line 967
    if-eqz v1, :cond_2

    .line 968
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 965
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 972
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 973
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 977
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 978
    iget-object v1, p0, Ljmt;->a:Ljpc;

    if-eqz v1, :cond_0

    .line 979
    const/4 v1, 0x1

    iget-object v2, p0, Ljmt;->a:Ljpc;

    .line 980
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 982
    :cond_0
    iget-object v1, p0, Ljmt;->b:Ljmu;

    if-eqz v1, :cond_1

    .line 983
    const/4 v1, 0x2

    iget-object v2, p0, Ljmt;->b:Ljmu;

    .line 984
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 986
    :cond_1
    iget-object v1, p0, Ljmt;->c:[Ljpc;

    if-eqz v1, :cond_4

    iget-object v1, p0, Ljmt;->c:[Ljpc;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 987
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljmt;->c:[Ljpc;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 988
    iget-object v2, p0, Ljmt;->c:[Ljpc;

    aget-object v2, v2, v0

    .line 989
    if-eqz v2, :cond_2

    .line 990
    const/4 v3, 0x3

    .line 991
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 987
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 995
    :cond_4
    return v0
.end method
