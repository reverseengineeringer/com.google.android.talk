.class public final Lmka;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmka;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmmm;

.field public b:[Lmjy;

.field public c:Lmmg;

.field public d:Lmks;

.field public e:Lmiq;

.field public f:Lmmb;

.field public g:Lmla;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 889
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1894
    iput-object v1, p0, Lmka;->a:Lmmm;

    .line 1895
    invoke-static {}, Lmjy;->d()[Lmjy;

    move-result-object v0

    iput-object v0, p0, Lmka;->b:[Lmjy;

    .line 1896
    iput-object v1, p0, Lmka;->c:Lmmg;

    .line 1897
    iput-object v1, p0, Lmka;->d:Lmks;

    .line 1898
    iput-object v1, p0, Lmka;->e:Lmiq;

    .line 1899
    iput-object v1, p0, Lmka;->f:Lmmb;

    .line 1900
    iput-object v1, p0, Lmka;->g:Lmla;

    .line 1901
    iput-object v1, p0, Lmka;->h:Ljava/lang/String;

    .line 1902
    iput-object v1, p0, Lmka;->eD:Llyd;

    .line 1903
    const/4 v0, -0x1

    iput v0, p0, Lmka;->eE:I

    .line 891
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1990
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1991
    sparse-switch v0, :sswitch_data_0

    .line 1995
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1996
    :sswitch_0
    return-object p0

    .line 2001
    :sswitch_1
    const/16 v0, 0xa

    .line 2002
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2003
    iget-object v0, p0, Lmka;->b:[Lmjy;

    if-nez v0, :cond_2

    move v0, v1

    .line 2004
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmjy;

    .line 2006
    if-eqz v0, :cond_1

    .line 2007
    iget-object v3, p0, Lmka;->b:[Lmjy;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2009
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2010
    new-instance v3, Lmjy;

    invoke-direct {v3}, Lmjy;-><init>()V

    aput-object v3, v2, v0

    .line 2011
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2012
    invoke-virtual {p1}, Llxy;->a()I

    .line 2009
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2003
    :cond_2
    iget-object v0, p0, Lmka;->b:[Lmjy;

    array-length v0, v0

    goto :goto_1

    .line 2015
    :cond_3
    new-instance v3, Lmjy;

    invoke-direct {v3}, Lmjy;-><init>()V

    aput-object v3, v2, v0

    .line 2016
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2017
    iput-object v2, p0, Lmka;->b:[Lmjy;

    goto :goto_0

    .line 2021
    :sswitch_2
    iget-object v0, p0, Lmka;->c:Lmmg;

    if-nez v0, :cond_4

    .line 2022
    new-instance v0, Lmmg;

    invoke-direct {v0}, Lmmg;-><init>()V

    iput-object v0, p0, Lmka;->c:Lmmg;

    .line 2024
    :cond_4
    iget-object v0, p0, Lmka;->c:Lmmg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2028
    :sswitch_3
    iget-object v0, p0, Lmka;->a:Lmmm;

    if-nez v0, :cond_5

    .line 2029
    new-instance v0, Lmmm;

    invoke-direct {v0}, Lmmm;-><init>()V

    iput-object v0, p0, Lmka;->a:Lmmm;

    .line 2031
    :cond_5
    iget-object v0, p0, Lmka;->a:Lmmm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2035
    :sswitch_4
    iget-object v0, p0, Lmka;->d:Lmks;

    if-nez v0, :cond_6

    .line 2036
    new-instance v0, Lmks;

    invoke-direct {v0}, Lmks;-><init>()V

    iput-object v0, p0, Lmka;->d:Lmks;

    .line 2038
    :cond_6
    iget-object v0, p0, Lmka;->d:Lmks;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2042
    :sswitch_5
    iget-object v0, p0, Lmka;->e:Lmiq;

    if-nez v0, :cond_7

    .line 2043
    new-instance v0, Lmiq;

    invoke-direct {v0}, Lmiq;-><init>()V

    iput-object v0, p0, Lmka;->e:Lmiq;

    .line 2045
    :cond_7
    iget-object v0, p0, Lmka;->e:Lmiq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2049
    :sswitch_6
    iget-object v0, p0, Lmka;->f:Lmmb;

    if-nez v0, :cond_8

    .line 2050
    new-instance v0, Lmmb;

    invoke-direct {v0}, Lmmb;-><init>()V

    iput-object v0, p0, Lmka;->f:Lmmb;

    .line 2052
    :cond_8
    iget-object v0, p0, Lmka;->f:Lmmb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2056
    :sswitch_7
    iget-object v0, p0, Lmka;->g:Lmla;

    if-nez v0, :cond_9

    .line 2057
    new-instance v0, Lmla;

    invoke-direct {v0}, Lmla;-><init>()V

    iput-object v0, p0, Lmka;->g:Lmla;

    .line 2059
    :cond_9
    iget-object v0, p0, Lmka;->g:Lmla;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2063
    :sswitch_8
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmka;->h:Ljava/lang/String;

    goto/16 :goto_0

    .line 1991
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 910
    iget-object v0, p0, Lmka;->b:[Lmjy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmka;->b:[Lmjy;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 911
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmka;->b:[Lmjy;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 912
    iget-object v1, p0, Lmka;->b:[Lmjy;

    aget-object v1, v1, v0

    .line 913
    if-eqz v1, :cond_0

    .line 914
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 911
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 918
    :cond_1
    iget-object v0, p0, Lmka;->c:Lmmg;

    if-eqz v0, :cond_2

    .line 919
    const/4 v0, 0x2

    iget-object v1, p0, Lmka;->c:Lmmg;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 921
    :cond_2
    iget-object v0, p0, Lmka;->a:Lmmm;

    if-eqz v0, :cond_3

    .line 922
    const/4 v0, 0x3

    iget-object v1, p0, Lmka;->a:Lmmm;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 924
    :cond_3
    iget-object v0, p0, Lmka;->d:Lmks;

    if-eqz v0, :cond_4

    .line 925
    const/4 v0, 0x4

    iget-object v1, p0, Lmka;->d:Lmks;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 927
    :cond_4
    iget-object v0, p0, Lmka;->e:Lmiq;

    if-eqz v0, :cond_5

    .line 928
    const/4 v0, 0x5

    iget-object v1, p0, Lmka;->e:Lmiq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 930
    :cond_5
    iget-object v0, p0, Lmka;->f:Lmmb;

    if-eqz v0, :cond_6

    .line 931
    const/4 v0, 0x6

    iget-object v1, p0, Lmka;->f:Lmmb;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 933
    :cond_6
    iget-object v0, p0, Lmka;->g:Lmla;

    if-eqz v0, :cond_7

    .line 934
    const/4 v0, 0x7

    iget-object v1, p0, Lmka;->g:Lmla;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 936
    :cond_7
    iget-object v0, p0, Lmka;->h:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 937
    const/16 v0, 0x8

    iget-object v1, p0, Lmka;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 939
    :cond_8
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 940
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 944
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 945
    iget-object v0, p0, Lmka;->b:[Lmjy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmka;->b:[Lmjy;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 946
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lmka;->b:[Lmjy;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 947
    iget-object v2, p0, Lmka;->b:[Lmjy;

    aget-object v2, v2, v0

    .line 948
    if-eqz v2, :cond_0

    .line 949
    const/4 v3, 0x1

    .line 950
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 946
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 954
    :cond_1
    iget-object v0, p0, Lmka;->c:Lmmg;

    if-eqz v0, :cond_2

    .line 955
    const/4 v0, 0x2

    iget-object v2, p0, Lmka;->c:Lmmg;

    .line 956
    invoke-static {v0, v2}, Llxz;->d(ILlyi;)I

    move-result v0

    add-int/2addr v1, v0

    .line 958
    :cond_2
    iget-object v0, p0, Lmka;->a:Lmmm;

    if-eqz v0, :cond_3

    .line 959
    const/4 v0, 0x3

    iget-object v2, p0, Lmka;->a:Lmmm;

    .line 960
    invoke-static {v0, v2}, Llxz;->d(ILlyi;)I

    move-result v0

    add-int/2addr v1, v0

    .line 962
    :cond_3
    iget-object v0, p0, Lmka;->d:Lmks;

    if-eqz v0, :cond_4

    .line 963
    const/4 v0, 0x4

    iget-object v2, p0, Lmka;->d:Lmks;

    .line 964
    invoke-static {v0, v2}, Llxz;->d(ILlyi;)I

    move-result v0

    add-int/2addr v1, v0

    .line 966
    :cond_4
    iget-object v0, p0, Lmka;->e:Lmiq;

    if-eqz v0, :cond_5

    .line 967
    const/4 v0, 0x5

    iget-object v2, p0, Lmka;->e:Lmiq;

    .line 968
    invoke-static {v0, v2}, Llxz;->d(ILlyi;)I

    move-result v0

    add-int/2addr v1, v0

    .line 970
    :cond_5
    iget-object v0, p0, Lmka;->f:Lmmb;

    if-eqz v0, :cond_6

    .line 971
    const/4 v0, 0x6

    iget-object v2, p0, Lmka;->f:Lmmb;

    .line 972
    invoke-static {v0, v2}, Llxz;->d(ILlyi;)I

    move-result v0

    add-int/2addr v1, v0

    .line 974
    :cond_6
    iget-object v0, p0, Lmka;->g:Lmla;

    if-eqz v0, :cond_7

    .line 975
    const/4 v0, 0x7

    iget-object v2, p0, Lmka;->g:Lmla;

    .line 976
    invoke-static {v0, v2}, Llxz;->d(ILlyi;)I

    move-result v0

    add-int/2addr v1, v0

    .line 978
    :cond_7
    iget-object v0, p0, Lmka;->h:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 979
    const/16 v0, 0x8

    iget-object v2, p0, Lmka;->h:Ljava/lang/String;

    .line 980
    invoke-static {v0, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 982
    :cond_8
    return v1
.end method
