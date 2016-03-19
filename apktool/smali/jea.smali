.class public final Ljea;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljea;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[I

.field public b:[I

.field public c:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8928
    invoke-direct {p0}, Llyb;-><init>()V

    .line 9933
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Ljea;->a:[I

    .line 9934
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Ljea;->b:[I

    .line 9935
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Ljea;->c:[I

    .line 9936
    const/4 v0, 0x0

    iput-object v0, p0, Ljea;->eD:Llyd;

    .line 9937
    const/4 v0, -0x1

    iput v0, p0, Ljea;->eE:I

    .line 8930
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 10003
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 10004
    sparse-switch v0, :sswitch_data_0

    .line 10008
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10009
    :sswitch_0
    return-object p0

    .line 10014
    :sswitch_1
    const/16 v0, 0x8

    .line 10015
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 10016
    iget-object v0, p0, Ljea;->a:[I

    if-nez v0, :cond_2

    move v0, v1

    .line 10017
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 10018
    if-eqz v0, :cond_1

    .line 10019
    iget-object v3, p0, Ljea;->a:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10021
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 10022
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 10023
    invoke-virtual {p1}, Llxy;->a()I

    .line 10021
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 10016
    :cond_2
    iget-object v0, p0, Ljea;->a:[I

    array-length v0, v0

    goto :goto_1

    .line 10026
    :cond_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 10027
    iput-object v2, p0, Ljea;->a:[I

    goto :goto_0

    .line 10031
    :sswitch_2
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 10032
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 10035
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 10036
    :goto_3
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_4

    .line 10037
    invoke-virtual {p1}, Llxy;->f()I

    .line 10038
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 10040
    :cond_4
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 10041
    iget-object v2, p0, Ljea;->a:[I

    if-nez v2, :cond_6

    move v2, v1

    .line 10042
    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 10043
    if-eqz v2, :cond_5

    .line 10044
    iget-object v4, p0, Ljea;->a:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10046
    :cond_5
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_7

    .line 10047
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    aput v4, v0, v2

    .line 10046
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 10041
    :cond_6
    iget-object v2, p0, Ljea;->a:[I

    array-length v2, v2

    goto :goto_4

    .line 10049
    :cond_7
    iput-object v0, p0, Ljea;->a:[I

    .line 10050
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 10054
    :sswitch_3
    const/16 v0, 0x10

    .line 10055
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 10056
    iget-object v0, p0, Ljea;->b:[I

    if-nez v0, :cond_9

    move v0, v1

    .line 10057
    :goto_6
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 10058
    if-eqz v0, :cond_8

    .line 10059
    iget-object v3, p0, Ljea;->b:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10061
    :cond_8
    :goto_7
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_a

    .line 10062
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 10063
    invoke-virtual {p1}, Llxy;->a()I

    .line 10061
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 10056
    :cond_9
    iget-object v0, p0, Ljea;->b:[I

    array-length v0, v0

    goto :goto_6

    .line 10066
    :cond_a
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 10067
    iput-object v2, p0, Ljea;->b:[I

    goto/16 :goto_0

    .line 10071
    :sswitch_4
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 10072
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 10075
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 10076
    :goto_8
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_b

    .line 10077
    invoke-virtual {p1}, Llxy;->f()I

    .line 10078
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 10080
    :cond_b
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 10081
    iget-object v2, p0, Ljea;->b:[I

    if-nez v2, :cond_d

    move v2, v1

    .line 10082
    :goto_9
    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 10083
    if-eqz v2, :cond_c

    .line 10084
    iget-object v4, p0, Ljea;->b:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10086
    :cond_c
    :goto_a
    array-length v4, v0

    if-ge v2, v4, :cond_e

    .line 10087
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    aput v4, v0, v2

    .line 10086
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 10081
    :cond_d
    iget-object v2, p0, Ljea;->b:[I

    array-length v2, v2

    goto :goto_9

    .line 10089
    :cond_e
    iput-object v0, p0, Ljea;->b:[I

    .line 10090
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 10094
    :sswitch_5
    const/16 v0, 0x18

    .line 10095
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 10096
    iget-object v0, p0, Ljea;->c:[I

    if-nez v0, :cond_10

    move v0, v1

    .line 10097
    :goto_b
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 10098
    if-eqz v0, :cond_f

    .line 10099
    iget-object v3, p0, Ljea;->c:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10101
    :cond_f
    :goto_c
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_11

    .line 10102
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 10103
    invoke-virtual {p1}, Llxy;->a()I

    .line 10101
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 10096
    :cond_10
    iget-object v0, p0, Ljea;->c:[I

    array-length v0, v0

    goto :goto_b

    .line 10106
    :cond_11
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 10107
    iput-object v2, p0, Ljea;->c:[I

    goto/16 :goto_0

    .line 10111
    :sswitch_6
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 10112
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 10115
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 10116
    :goto_d
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_12

    .line 10117
    invoke-virtual {p1}, Llxy;->f()I

    .line 10118
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 10120
    :cond_12
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 10121
    iget-object v2, p0, Ljea;->c:[I

    if-nez v2, :cond_14

    move v2, v1

    .line 10122
    :goto_e
    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 10123
    if-eqz v2, :cond_13

    .line 10124
    iget-object v4, p0, Ljea;->c:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10126
    :cond_13
    :goto_f
    array-length v4, v0

    if-ge v2, v4, :cond_15

    .line 10127
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    aput v4, v0, v2

    .line 10126
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 10121
    :cond_14
    iget-object v2, p0, Ljea;->c:[I

    array-length v2, v2

    goto :goto_e

    .line 10129
    :cond_15
    iput-object v0, p0, Ljea;->c:[I

    .line 10130
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 10004
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_3
        0x12 -> :sswitch_4
        0x18 -> :sswitch_5
        0x1a -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 8944
    iget-object v0, p0, Ljea;->a:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljea;->a:[I

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    .line 8945
    :goto_0
    iget-object v2, p0, Ljea;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 8946
    const/4 v2, 0x1

    iget-object v3, p0, Ljea;->a:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Llxz;->a(II)V

    .line 8945
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8949
    :cond_0
    iget-object v0, p0, Ljea;->b:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljea;->b:[I

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 8950
    :goto_1
    iget-object v2, p0, Ljea;->b:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 8951
    const/4 v2, 0x2

    iget-object v3, p0, Ljea;->b:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Llxz;->a(II)V

    .line 8950
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8954
    :cond_1
    iget-object v0, p0, Ljea;->c:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljea;->c:[I

    array-length v0, v0

    if-lez v0, :cond_2

    .line 8955
    :goto_2
    iget-object v0, p0, Ljea;->c:[I

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 8956
    const/4 v0, 0x3

    iget-object v2, p0, Ljea;->c:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 8955
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 8959
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 8960
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 8964
    invoke-super {p0}, Llyb;->b()I

    move-result v3

    .line 8965
    iget-object v0, p0, Ljea;->a:[I

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljea;->a:[I

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    move v2, v1

    .line 8967
    :goto_0
    iget-object v4, p0, Ljea;->a:[I

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 8968
    iget-object v4, p0, Ljea;->a:[I

    aget v4, v4, v0

    .line 8970
    invoke-static {v4}, Llxz;->e(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 8967
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8972
    :cond_0
    add-int v0, v3, v2

    .line 8973
    iget-object v2, p0, Ljea;->a:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 8975
    :goto_1
    iget-object v2, p0, Ljea;->b:[I

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljea;->b:[I

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v1

    move v3, v1

    .line 8977
    :goto_2
    iget-object v4, p0, Ljea;->b:[I

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 8978
    iget-object v4, p0, Ljea;->b:[I

    aget v4, v4, v2

    .line 8980
    invoke-static {v4}, Llxz;->e(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 8977
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 8982
    :cond_1
    add-int/2addr v0, v3

    .line 8983
    iget-object v2, p0, Ljea;->b:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 8985
    :cond_2
    iget-object v2, p0, Ljea;->c:[I

    if-eqz v2, :cond_4

    iget-object v2, p0, Ljea;->c:[I

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v1

    .line 8987
    :goto_3
    iget-object v3, p0, Ljea;->c:[I

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 8988
    iget-object v3, p0, Ljea;->c:[I

    aget v3, v3, v1

    .line 8990
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 8987
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 8992
    :cond_3
    add-int/2addr v0, v2

    .line 8993
    iget-object v1, p0, Ljea;->c:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 8995
    :cond_4
    return v0

    :cond_5
    move v0, v3

    goto :goto_1
.end method
