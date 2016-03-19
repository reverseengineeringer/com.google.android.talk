.class public final Ljne;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljne;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljlq;

.field public b:Ljnf;

.field public c:[Ljlq;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 908
    invoke-direct {p0}, Llyb;-><init>()V

    .line 909
    iput-object v1, p0, Ljne;->a:Ljlq;

    .line 910
    iput-object v1, p0, Ljne;->b:Ljnf;

    .line 911
    invoke-static {}, Ljlq;->d()[Ljlq;

    move-result-object v0

    iput-object v0, p0, Ljne;->c:[Ljlq;

    .line 912
    iput-object v1, p0, Ljne;->eD:Llyd;

    .line 913
    const/4 v0, -0x1

    iput v0, p0, Ljne;->eE:I

    .line 914
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1964
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1965
    sparse-switch v0, :sswitch_data_0

    .line 1969
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1970
    :sswitch_0
    return-object p0

    .line 1975
    :sswitch_1
    iget-object v0, p0, Ljne;->a:Ljlq;

    if-nez v0, :cond_1

    .line 1976
    new-instance v0, Ljlq;

    invoke-direct {v0}, Ljlq;-><init>()V

    iput-object v0, p0, Ljne;->a:Ljlq;

    .line 1978
    :cond_1
    iget-object v0, p0, Ljne;->a:Ljlq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1982
    :sswitch_2
    iget-object v0, p0, Ljne;->b:Ljnf;

    if-nez v0, :cond_2

    .line 1983
    new-instance v0, Ljnf;

    invoke-direct {v0}, Ljnf;-><init>()V

    iput-object v0, p0, Ljne;->b:Ljnf;

    .line 1985
    :cond_2
    iget-object v0, p0, Ljne;->b:Ljnf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1989
    :sswitch_3
    const/16 v0, 0x1a

    .line 1990
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1991
    iget-object v0, p0, Ljne;->c:[Ljlq;

    if-nez v0, :cond_4

    move v0, v1

    .line 1992
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljlq;

    .line 1994
    if-eqz v0, :cond_3

    .line 1995
    iget-object v3, p0, Ljne;->c:[Ljlq;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1997
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 1998
    new-instance v3, Ljlq;

    invoke-direct {v3}, Ljlq;-><init>()V

    aput-object v3, v2, v0

    .line 1999
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2000
    invoke-virtual {p1}, Llxy;->a()I

    .line 1997
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1991
    :cond_4
    iget-object v0, p0, Ljne;->c:[Ljlq;

    array-length v0, v0

    goto :goto_1

    .line 2003
    :cond_5
    new-instance v3, Ljlq;

    invoke-direct {v3}, Ljlq;-><init>()V

    aput-object v3, v2, v0

    .line 2004
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2005
    iput-object v2, p0, Ljne;->c:[Ljlq;

    goto :goto_0

    .line 1965
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
    .line 919
    iget-object v0, p0, Ljne;->a:Ljlq;

    if-eqz v0, :cond_0

    .line 920
    const/4 v0, 0x1

    iget-object v1, p0, Ljne;->a:Ljlq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 922
    :cond_0
    iget-object v0, p0, Ljne;->b:Ljnf;

    if-eqz v0, :cond_1

    .line 923
    const/4 v0, 0x2

    iget-object v1, p0, Ljne;->b:Ljnf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 925
    :cond_1
    iget-object v0, p0, Ljne;->c:[Ljlq;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljne;->c:[Ljlq;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 926
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljne;->c:[Ljlq;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 927
    iget-object v1, p0, Ljne;->c:[Ljlq;

    aget-object v1, v1, v0

    .line 928
    if-eqz v1, :cond_2

    .line 929
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 926
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 933
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 934
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 938
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 939
    iget-object v1, p0, Ljne;->a:Ljlq;

    if-eqz v1, :cond_0

    .line 940
    const/4 v1, 0x1

    iget-object v2, p0, Ljne;->a:Ljlq;

    .line 941
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 943
    :cond_0
    iget-object v1, p0, Ljne;->b:Ljnf;

    if-eqz v1, :cond_1

    .line 944
    const/4 v1, 0x2

    iget-object v2, p0, Ljne;->b:Ljnf;

    .line 945
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 947
    :cond_1
    iget-object v1, p0, Ljne;->c:[Ljlq;

    if-eqz v1, :cond_4

    iget-object v1, p0, Ljne;->c:[Ljlq;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 948
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljne;->c:[Ljlq;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 949
    iget-object v2, p0, Ljne;->c:[Ljlq;

    aget-object v2, v2, v0

    .line 950
    if-eqz v2, :cond_2

    .line 951
    const/4 v3, 0x3

    .line 952
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 948
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 956
    :cond_4
    return v0
.end method
