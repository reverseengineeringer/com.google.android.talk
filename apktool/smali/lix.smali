.class public final Llix;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llix;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llku;

.field public b:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1892
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2897
    iput-object v1, p0, Llix;->a:Llku;

    .line 2898
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Llix;->b:[I

    .line 2899
    iput-object v1, p0, Llix;->eD:Llyd;

    .line 2900
    const/4 v0, -0x1

    iput v0, p0, Llix;->eE:I

    .line 1894
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2943
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2944
    sparse-switch v0, :sswitch_data_0

    .line 2948
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2949
    :sswitch_0
    return-object p0

    .line 2954
    :sswitch_1
    iget-object v0, p0, Llix;->a:Llku;

    if-nez v0, :cond_1

    .line 2955
    new-instance v0, Llku;

    invoke-direct {v0}, Llku;-><init>()V

    iput-object v0, p0, Llix;->a:Llku;

    .line 2957
    :cond_1
    iget-object v0, p0, Llix;->a:Llku;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2961
    :sswitch_2
    const/16 v0, 0x10

    .line 2962
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 2963
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 2965
    :goto_1
    if-ge v3, v4, :cond_3

    .line 2966
    if-eqz v3, :cond_2

    .line 2967
    invoke-virtual {p1}, Llxy;->a()I

    .line 2969
    :cond_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 2970
    packed-switch v6, :pswitch_data_0

    move v0, v1

    .line 2965
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 2977
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 2981
    :cond_3
    if-eqz v1, :cond_0

    .line 2982
    iget-object v0, p0, Llix;->b:[I

    if-nez v0, :cond_4

    move v0, v2

    .line 2983
    :goto_3
    if-nez v0, :cond_5

    array-length v3, v5

    if-ne v1, v3, :cond_5

    .line 2984
    iput-object v5, p0, Llix;->b:[I

    goto :goto_0

    .line 2982
    :cond_4
    iget-object v0, p0, Llix;->b:[I

    array-length v0, v0

    goto :goto_3

    .line 2986
    :cond_5
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 2987
    if-eqz v0, :cond_6

    .line 2988
    iget-object v4, p0, Llix;->b:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2990
    :cond_6
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2991
    iput-object v3, p0, Llix;->b:[I

    goto :goto_0

    .line 2997
    :sswitch_3
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 2998
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 3001
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 3002
    :goto_4
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_7

    .line 3003
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_4

    .line 3010
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3014
    :cond_7
    if-eqz v0, :cond_b

    .line 3015
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 3016
    iget-object v1, p0, Llix;->b:[I

    if-nez v1, :cond_9

    move v1, v2

    .line 3017
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 3018
    if-eqz v1, :cond_8

    .line 3019
    iget-object v0, p0, Llix;->b:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3021
    :cond_8
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_a

    .line 3022
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 3023
    packed-switch v5, :pswitch_data_2

    goto :goto_6

    .line 3030
    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    .line 3016
    :cond_9
    iget-object v1, p0, Llix;->b:[I

    array-length v1, v1

    goto :goto_5

    .line 3034
    :cond_a
    iput-object v4, p0, Llix;->b:[I

    .line 3036
    :cond_b
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 2944
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x12 -> :sswitch_3
    .end sparse-switch

    .line 2970
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 3003
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 3023
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 1907
    iget-object v0, p0, Llix;->a:Llku;

    if-eqz v0, :cond_0

    .line 1908
    const/4 v0, 0x1

    iget-object v1, p0, Llix;->a:Llku;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1910
    :cond_0
    iget-object v0, p0, Llix;->b:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Llix;->b:[I

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1911
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llix;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1912
    const/4 v1, 0x2

    iget-object v2, p0, Llix;->b:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Llxz;->a(II)V

    .line 1911
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1915
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1916
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1920
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1921
    iget-object v2, p0, Llix;->a:Llku;

    if-eqz v2, :cond_0

    .line 1922
    const/4 v2, 0x1

    iget-object v3, p0, Llix;->a:Llku;

    .line 1923
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1925
    :cond_0
    iget-object v2, p0, Llix;->b:[I

    if-eqz v2, :cond_2

    iget-object v2, p0, Llix;->b:[I

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v1

    .line 1927
    :goto_0
    iget-object v3, p0, Llix;->b:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 1928
    iget-object v3, p0, Llix;->b:[I

    aget v3, v3, v1

    .line 1930
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 1927
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1932
    :cond_1
    add-int/2addr v0, v2

    .line 1933
    iget-object v1, p0, Llix;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 1935
    :cond_2
    return v0
.end method
