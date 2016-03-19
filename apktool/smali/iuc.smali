.class public final Liuc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liuc;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/String;

.field public b:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 865
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1870
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Liuc;->a:[Ljava/lang/String;

    .line 1871
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Liuc;->b:[Ljava/lang/String;

    .line 1872
    const/4 v0, 0x0

    iput-object v0, p0, Liuc;->eD:Llyd;

    .line 1873
    const/4 v0, -0x1

    iput v0, p0, Liuc;->eE:I

    .line 867
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1938
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1939
    sparse-switch v0, :sswitch_data_0

    .line 1943
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1944
    :sswitch_0
    return-object p0

    .line 1949
    :sswitch_1
    const/16 v0, 0xa

    .line 1950
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1951
    iget-object v0, p0, Liuc;->a:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 1952
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 1953
    if-eqz v0, :cond_1

    .line 1954
    iget-object v3, p0, Liuc;->a:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1956
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1957
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1958
    invoke-virtual {p1}, Llxy;->a()I

    .line 1956
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1951
    :cond_2
    iget-object v0, p0, Liuc;->a:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 1961
    :cond_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1962
    iput-object v2, p0, Liuc;->a:[Ljava/lang/String;

    goto :goto_0

    .line 1966
    :sswitch_2
    const/16 v0, 0x12

    .line 1967
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1968
    iget-object v0, p0, Liuc;->b:[Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    .line 1969
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 1970
    if-eqz v0, :cond_4

    .line 1971
    iget-object v3, p0, Liuc;->b:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1973
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1974
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1975
    invoke-virtual {p1}, Llxy;->a()I

    .line 1973
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1968
    :cond_5
    iget-object v0, p0, Liuc;->b:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_3

    .line 1978
    :cond_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1979
    iput-object v2, p0, Liuc;->b:[Ljava/lang/String;

    goto :goto_0

    .line 1939
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 880
    iget-object v0, p0, Liuc;->a:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Liuc;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 881
    :goto_0
    iget-object v2, p0, Liuc;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 882
    iget-object v2, p0, Liuc;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 883
    if-eqz v2, :cond_0

    .line 884
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 881
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 888
    :cond_1
    iget-object v0, p0, Liuc;->b:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Liuc;->b:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 889
    :goto_1
    iget-object v0, p0, Liuc;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 890
    iget-object v0, p0, Liuc;->b:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 891
    if-eqz v0, :cond_2

    .line 892
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Llxz;->a(ILjava/lang/String;)V

    .line 889
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 896
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 897
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 901
    invoke-super {p0}, Llyb;->b()I

    move-result v4

    .line 902
    iget-object v0, p0, Liuc;->a:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Liuc;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    move v2, v1

    move v3, v1

    .line 905
    :goto_0
    iget-object v5, p0, Liuc;->a:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 906
    iget-object v5, p0, Liuc;->a:[Ljava/lang/String;

    aget-object v5, v5, v0

    .line 907
    if-eqz v5, :cond_0

    .line 908
    add-int/lit8 v3, v3, 0x1

    .line 910
    invoke-static {v5}, Llxz;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    .line 905
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 913
    :cond_1
    add-int v0, v4, v2

    .line 914
    mul-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v2

    .line 916
    :goto_1
    iget-object v2, p0, Liuc;->b:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Liuc;->b:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v1

    move v3, v1

    .line 919
    :goto_2
    iget-object v4, p0, Liuc;->b:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 920
    iget-object v4, p0, Liuc;->b:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 921
    if-eqz v4, :cond_2

    .line 922
    add-int/lit8 v3, v3, 0x1

    .line 924
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 919
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 927
    :cond_3
    add-int/2addr v0, v2

    .line 928
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 930
    :cond_4
    return v0

    :cond_5
    move v0, v4

    goto :goto_1
.end method
