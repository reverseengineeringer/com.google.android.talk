.class public final Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewGravitySet;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewGravitySet;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 947
    invoke-direct {p0}, Llyb;-><init>()V

    .line 948
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewGravitySet;->a:[I

    .line 949
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewGravitySet;->eD:Llyd;

    .line 950
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewGravitySet;->eE:I

    .line 951
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1985
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1986
    sparse-switch v0, :sswitch_data_0

    .line 1990
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1991
    :sswitch_0
    return-object p0

    .line 1996
    :sswitch_1
    const/16 v0, 0x8

    .line 1997
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 1998
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 2000
    :goto_1
    if-ge v3, v4, :cond_2

    .line 2001
    if-eqz v3, :cond_1

    .line 2002
    invoke-virtual {p1}, Llxy;->a()I

    .line 2004
    :cond_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 2005
    packed-switch v6, :pswitch_data_0

    move v0, v1

    .line 2000
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 2016
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 2020
    :cond_2
    if-eqz v1, :cond_0

    .line 2021
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewGravitySet;->a:[I

    if-nez v0, :cond_3

    move v0, v2

    .line 2022
    :goto_3
    if-nez v0, :cond_4

    array-length v3, v5

    if-ne v1, v3, :cond_4

    .line 2023
    iput-object v5, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewGravitySet;->a:[I

    goto :goto_0

    .line 2021
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewGravitySet;->a:[I

    array-length v0, v0

    goto :goto_3

    .line 2025
    :cond_4
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 2026
    if-eqz v0, :cond_5

    .line 2027
    iget-object v4, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewGravitySet;->a:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2029
    :cond_5
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2030
    iput-object v3, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewGravitySet;->a:[I

    goto :goto_0

    .line 2036
    :sswitch_2
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 2037
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 2040
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 2041
    :goto_4
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_6

    .line 2042
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_4

    .line 2053
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2057
    :cond_6
    if-eqz v0, :cond_a

    .line 2058
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 2059
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewGravitySet;->a:[I

    if-nez v1, :cond_8

    move v1, v2

    .line 2060
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 2061
    if-eqz v1, :cond_7

    .line 2062
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewGravitySet;->a:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2064
    :cond_7
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_9

    .line 2065
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 2066
    packed-switch v5, :pswitch_data_2

    goto :goto_6

    .line 2077
    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    .line 2059
    :cond_8
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewGravitySet;->a:[I

    array-length v1, v1

    goto :goto_5

    .line 2081
    :cond_9
    iput-object v4, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewGravitySet;->a:[I

    .line 2083
    :cond_a
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 1986
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch

    .line 2005
    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    .line 2042
    :pswitch_data_1
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
    .end packed-switch

    .line 2066
    :pswitch_data_2
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
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 956
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewGravitySet;->a:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewGravitySet;->a:[I

    array-length v0, v0

    if-lez v0, :cond_0

    .line 957
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewGravitySet;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 958
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewGravitySet;->a:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Llxz;->a(II)V

    .line 957
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 961
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 962
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 966
    invoke-super {p0}, Llyb;->b()I

    move-result v2

    .line 967
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewGravitySet;->a:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewGravitySet;->a:[I

    array-length v1, v1

    if-lez v1, :cond_1

    move v1, v0

    .line 969
    :goto_0
    iget-object v3, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewGravitySet;->a:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 970
    iget-object v3, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewGravitySet;->a:[I

    aget v3, v3, v0

    .line 972
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 969
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 974
    :cond_0
    add-int v0, v2, v1

    .line 975
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewGravitySet;->a:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 977
    :goto_1
    return v0

    :cond_1
    move v0, v2

    goto :goto_1
.end method
