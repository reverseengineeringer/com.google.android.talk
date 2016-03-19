.class public final Lkap;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkap;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[I

.field public b:[I

.field public c:Ljava/lang/Boolean;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23898
    invoke-direct {p0}, Llyb;-><init>()V

    .line 24903
    iput-object v1, p0, Lkap;->requestHeader:Lkdo;

    .line 24904
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Lkap;->a:[I

    .line 24905
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Lkap;->b:[I

    .line 24906
    iput-object v1, p0, Lkap;->c:Ljava/lang/Boolean;

    .line 24907
    iput-object v1, p0, Lkap;->eD:Llyd;

    .line 24908
    const/4 v0, -0x1

    iput v0, p0, Lkap;->eE:I

    .line 23900
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 25973
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 25974
    sparse-switch v0, :sswitch_data_0

    .line 25978
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25979
    :sswitch_0
    return-object p0

    .line 25984
    :sswitch_1
    iget-object v0, p0, Lkap;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 25985
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkap;->requestHeader:Lkdo;

    .line 25987
    :cond_1
    iget-object v0, p0, Lkap;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 25991
    :sswitch_2
    const/16 v0, 0x10

    .line 25992
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 25993
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 25995
    :goto_1
    if-ge v3, v4, :cond_3

    .line 25996
    if-eqz v3, :cond_2

    .line 25997
    invoke-virtual {p1}, Llxy;->a()I

    .line 25999
    :cond_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 26000
    packed-switch v6, :pswitch_data_0

    move v0, v1

    .line 25995
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 26023
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 26027
    :cond_3
    if-eqz v1, :cond_0

    .line 26028
    iget-object v0, p0, Lkap;->a:[I

    if-nez v0, :cond_4

    move v0, v2

    .line 26029
    :goto_3
    if-nez v0, :cond_5

    array-length v3, v5

    if-ne v1, v3, :cond_5

    .line 26030
    iput-object v5, p0, Lkap;->a:[I

    goto :goto_0

    .line 26028
    :cond_4
    iget-object v0, p0, Lkap;->a:[I

    array-length v0, v0

    goto :goto_3

    .line 26032
    :cond_5
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 26033
    if-eqz v0, :cond_6

    .line 26034
    iget-object v4, p0, Lkap;->a:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26036
    :cond_6
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26037
    iput-object v3, p0, Lkap;->a:[I

    goto :goto_0

    .line 26043
    :sswitch_3
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 26044
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 26047
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 26048
    :goto_4
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_7

    .line 26049
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_4

    .line 26072
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 26076
    :cond_7
    if-eqz v0, :cond_b

    .line 26077
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 26078
    iget-object v1, p0, Lkap;->a:[I

    if-nez v1, :cond_9

    move v1, v2

    .line 26079
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 26080
    if-eqz v1, :cond_8

    .line 26081
    iget-object v0, p0, Lkap;->a:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26083
    :cond_8
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_a

    .line 26084
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 26085
    packed-switch v5, :pswitch_data_2

    goto :goto_6

    .line 26108
    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    .line 26078
    :cond_9
    iget-object v1, p0, Lkap;->a:[I

    array-length v1, v1

    goto :goto_5

    .line 26112
    :cond_a
    iput-object v4, p0, Lkap;->a:[I

    .line 26114
    :cond_b
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 26118
    :sswitch_4
    const/16 v0, 0x18

    .line 26119
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 26120
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 26122
    :goto_7
    if-ge v3, v4, :cond_d

    .line 26123
    if-eqz v3, :cond_c

    .line 26124
    invoke-virtual {p1}, Llxy;->a()I

    .line 26126
    :cond_c
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 26127
    packed-switch v6, :pswitch_data_3

    move v0, v1

    .line 26122
    :goto_8
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_7

    .line 26150
    :pswitch_3
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_8

    .line 26154
    :cond_d
    if-eqz v1, :cond_0

    .line 26155
    iget-object v0, p0, Lkap;->b:[I

    if-nez v0, :cond_e

    move v0, v2

    .line 26156
    :goto_9
    if-nez v0, :cond_f

    array-length v3, v5

    if-ne v1, v3, :cond_f

    .line 26157
    iput-object v5, p0, Lkap;->b:[I

    goto/16 :goto_0

    .line 26155
    :cond_e
    iget-object v0, p0, Lkap;->b:[I

    array-length v0, v0

    goto :goto_9

    .line 26159
    :cond_f
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 26160
    if-eqz v0, :cond_10

    .line 26161
    iget-object v4, p0, Lkap;->b:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26163
    :cond_10
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26164
    iput-object v3, p0, Lkap;->b:[I

    goto/16 :goto_0

    .line 26170
    :sswitch_5
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 26171
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 26174
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 26175
    :goto_a
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_11

    .line 26176
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_4

    goto :goto_a

    .line 26199
    :pswitch_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 26203
    :cond_11
    if-eqz v0, :cond_15

    .line 26204
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 26205
    iget-object v1, p0, Lkap;->b:[I

    if-nez v1, :cond_13

    move v1, v2

    .line 26206
    :goto_b
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 26207
    if-eqz v1, :cond_12

    .line 26208
    iget-object v0, p0, Lkap;->b:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26210
    :cond_12
    :goto_c
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_14

    .line 26211
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 26212
    packed-switch v5, :pswitch_data_5

    goto :goto_c

    .line 26235
    :pswitch_5
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_c

    .line 26205
    :cond_13
    iget-object v1, p0, Lkap;->b:[I

    array-length v1, v1

    goto :goto_b

    .line 26239
    :cond_14
    iput-object v4, p0, Lkap;->b:[I

    .line 26241
    :cond_15
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 26245
    :sswitch_6
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkap;->c:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 25974
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x12 -> :sswitch_3
        0x18 -> :sswitch_4
        0x1a -> :sswitch_5
        0x20 -> :sswitch_6
    .end sparse-switch

    .line 26000
    :pswitch_data_0
    .packed-switch 0x1
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
    .end packed-switch

    .line 26049
    :pswitch_data_1
    .packed-switch 0x1
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
    .end packed-switch

    .line 26085
    :pswitch_data_2
    .packed-switch 0x1
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

    .line 26127
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 26176
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 26212
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 23915
    iget-object v0, p0, Lkap;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 23916
    const/4 v0, 0x1

    iget-object v2, p0, Lkap;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 23918
    :cond_0
    iget-object v0, p0, Lkap;->a:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkap;->a:[I

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 23919
    :goto_0
    iget-object v2, p0, Lkap;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 23920
    const/4 v2, 0x2

    iget-object v3, p0, Lkap;->a:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Llxz;->a(II)V

    .line 23919
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23923
    :cond_1
    iget-object v0, p0, Lkap;->b:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkap;->b:[I

    array-length v0, v0

    if-lez v0, :cond_2

    .line 23924
    :goto_1
    iget-object v0, p0, Lkap;->b:[I

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 23925
    const/4 v0, 0x3

    iget-object v2, p0, Lkap;->b:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 23924
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 23928
    :cond_2
    iget-object v0, p0, Lkap;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 23929
    const/4 v0, 0x4

    iget-object v1, p0, Lkap;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 23931
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 23932
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 23936
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 23937
    iget-object v1, p0, Lkap;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 23938
    const/4 v1, 0x1

    iget-object v3, p0, Lkap;->requestHeader:Lkdo;

    .line 23939
    invoke-static {v1, v3}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23941
    :cond_0
    iget-object v1, p0, Lkap;->a:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lkap;->a:[I

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v2

    move v3, v2

    .line 23943
    :goto_0
    iget-object v4, p0, Lkap;->a:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 23944
    iget-object v4, p0, Lkap;->a:[I

    aget v4, v4, v1

    .line 23946
    invoke-static {v4}, Llxz;->e(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 23943
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23948
    :cond_1
    add-int/2addr v0, v3

    .line 23949
    iget-object v1, p0, Lkap;->a:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 23951
    :cond_2
    iget-object v1, p0, Lkap;->b:[I

    if-eqz v1, :cond_4

    iget-object v1, p0, Lkap;->b:[I

    array-length v1, v1

    if-lez v1, :cond_4

    move v1, v2

    .line 23953
    :goto_1
    iget-object v3, p0, Lkap;->b:[I

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 23954
    iget-object v3, p0, Lkap;->b:[I

    aget v3, v3, v2

    .line 23956
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 23953
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 23958
    :cond_3
    add-int/2addr v0, v1

    .line 23959
    iget-object v1, p0, Lkap;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 23961
    :cond_4
    iget-object v1, p0, Lkap;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 23962
    const/4 v1, 0x4

    iget-object v2, p0, Lkap;->c:Ljava/lang/Boolean;

    .line 23963
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 23963
    add-int/2addr v0, v1

    .line 23965
    :cond_5
    return v0
.end method
