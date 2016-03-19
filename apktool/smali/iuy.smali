.class public final Liuy;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liuy;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[I

.field public b:Ljava/lang/Integer;

.field public c:Liva;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;

.field public g:Livc;

.field public h:Liux;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1996
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3001
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Liuy;->a:[I

    .line 3002
    iput-object v1, p0, Liuy;->b:Ljava/lang/Integer;

    .line 3003
    iput-object v1, p0, Liuy;->c:Liva;

    .line 3004
    iput-object v1, p0, Liuy;->d:Ljava/lang/Integer;

    .line 3005
    iput-object v1, p0, Liuy;->e:Ljava/lang/Integer;

    .line 3006
    iput-object v1, p0, Liuy;->f:Ljava/lang/Integer;

    .line 3007
    iput-object v1, p0, Liuy;->g:Livc;

    .line 3008
    iput-object v1, p0, Liuy;->h:Liux;

    .line 3009
    iput-object v1, p0, Liuy;->eD:Llyd;

    .line 3010
    const/4 v0, -0x1

    iput v0, p0, Liuy;->eE:I

    .line 1998
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 3095
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3096
    sparse-switch v0, :sswitch_data_0

    .line 3100
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3101
    :sswitch_0
    return-object p0

    .line 3106
    :sswitch_1
    const/16 v0, 0x38

    .line 3107
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 3108
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 3110
    :goto_1
    if-ge v3, v4, :cond_2

    .line 3111
    if-eqz v3, :cond_1

    .line 3112
    invoke-virtual {p1}, Llxy;->a()I

    .line 3114
    :cond_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 3115
    packed-switch v6, :pswitch_data_0

    move v0, v1

    .line 3110
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 3128
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 3132
    :cond_2
    if-eqz v1, :cond_0

    .line 3133
    iget-object v0, p0, Liuy;->a:[I

    if-nez v0, :cond_3

    move v0, v2

    .line 3134
    :goto_3
    if-nez v0, :cond_4

    array-length v3, v5

    if-ne v1, v3, :cond_4

    .line 3135
    iput-object v5, p0, Liuy;->a:[I

    goto :goto_0

    .line 3133
    :cond_3
    iget-object v0, p0, Liuy;->a:[I

    array-length v0, v0

    goto :goto_3

    .line 3137
    :cond_4
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 3138
    if-eqz v0, :cond_5

    .line 3139
    iget-object v4, p0, Liuy;->a:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3141
    :cond_5
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3142
    iput-object v3, p0, Liuy;->a:[I

    goto :goto_0

    .line 3148
    :sswitch_2
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 3149
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 3152
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 3153
    :goto_4
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_6

    .line 3154
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_4

    .line 3167
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3171
    :cond_6
    if-eqz v0, :cond_a

    .line 3172
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 3173
    iget-object v1, p0, Liuy;->a:[I

    if-nez v1, :cond_8

    move v1, v2

    .line 3174
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 3175
    if-eqz v1, :cond_7

    .line 3176
    iget-object v0, p0, Liuy;->a:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3178
    :cond_7
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_9

    .line 3179
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 3180
    packed-switch v5, :pswitch_data_2

    goto :goto_6

    .line 3193
    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    .line 3173
    :cond_8
    iget-object v1, p0, Liuy;->a:[I

    array-length v1, v1

    goto :goto_5

    .line 3197
    :cond_9
    iput-object v4, p0, Liuy;->a:[I

    .line 3199
    :cond_a
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 3203
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3204
    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    .line 3207
    :pswitch_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Liuy;->b:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 3213
    :sswitch_4
    iget-object v0, p0, Liuy;->c:Liva;

    if-nez v0, :cond_b

    .line 3214
    new-instance v0, Liva;

    invoke-direct {v0}, Liva;-><init>()V

    iput-object v0, p0, Liuy;->c:Liva;

    .line 3216
    :cond_b
    iget-object v0, p0, Liuy;->c:Liva;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 3220
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3221
    packed-switch v0, :pswitch_data_4

    goto/16 :goto_0

    .line 3225
    :pswitch_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Liuy;->d:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 3231
    :sswitch_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3232
    packed-switch v0, :pswitch_data_5

    goto/16 :goto_0

    .line 3236
    :pswitch_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Liuy;->e:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 3242
    :sswitch_7
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3243
    packed-switch v0, :pswitch_data_6

    goto/16 :goto_0

    .line 3248
    :pswitch_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Liuy;->f:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 3254
    :sswitch_8
    iget-object v0, p0, Liuy;->g:Livc;

    if-nez v0, :cond_c

    .line 3255
    new-instance v0, Livc;

    invoke-direct {v0}, Livc;-><init>()V

    iput-object v0, p0, Liuy;->g:Livc;

    .line 3257
    :cond_c
    iget-object v0, p0, Liuy;->g:Livc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 3261
    :sswitch_9
    iget-object v0, p0, Liuy;->h:Liux;

    if-nez v0, :cond_d

    .line 3262
    new-instance v0, Liux;

    invoke-direct {v0}, Liux;-><init>()V

    iput-object v0, p0, Liuy;->h:Liux;

    .line 3264
    :cond_d
    iget-object v0, p0, Liuy;->h:Liux;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 3096
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x38 -> :sswitch_1
        0x3a -> :sswitch_2
        0x40 -> :sswitch_3
        0x72 -> :sswitch_4
        0x78 -> :sswitch_5
        0x80 -> :sswitch_6
        0x88 -> :sswitch_7
        0x92 -> :sswitch_8
        0x9a -> :sswitch_9
    .end sparse-switch

    .line 3115
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
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 3154
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
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 3180
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
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 3204
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 3221
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 3232
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 3243
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 2017
    iget-object v0, p0, Liuy;->a:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Liuy;->a:[I

    array-length v0, v0

    if-lez v0, :cond_0

    .line 2018
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Liuy;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2019
    const/4 v1, 0x7

    iget-object v2, p0, Liuy;->a:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Llxz;->a(II)V

    .line 2018
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2022
    :cond_0
    iget-object v0, p0, Liuy;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 2023
    const/16 v0, 0x8

    iget-object v1, p0, Liuy;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2025
    :cond_1
    iget-object v0, p0, Liuy;->c:Liva;

    if-eqz v0, :cond_2

    .line 2026
    const/16 v0, 0xe

    iget-object v1, p0, Liuy;->c:Liva;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2028
    :cond_2
    iget-object v0, p0, Liuy;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 2029
    const/16 v0, 0xf

    iget-object v1, p0, Liuy;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2031
    :cond_3
    iget-object v0, p0, Liuy;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 2032
    const/16 v0, 0x10

    iget-object v1, p0, Liuy;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2034
    :cond_4
    iget-object v0, p0, Liuy;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 2035
    const/16 v0, 0x11

    iget-object v1, p0, Liuy;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2037
    :cond_5
    iget-object v0, p0, Liuy;->g:Livc;

    if-eqz v0, :cond_6

    .line 2038
    const/16 v0, 0x12

    iget-object v1, p0, Liuy;->g:Livc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2040
    :cond_6
    iget-object v0, p0, Liuy;->h:Liux;

    if-eqz v0, :cond_7

    .line 2041
    const/16 v0, 0x13

    iget-object v1, p0, Liuy;->h:Liux;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2043
    :cond_7
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2044
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2048
    invoke-super {p0}, Llyb;->b()I

    move-result v2

    .line 2049
    iget-object v1, p0, Liuy;->a:[I

    if-eqz v1, :cond_8

    iget-object v1, p0, Liuy;->a:[I

    array-length v1, v1

    if-lez v1, :cond_8

    move v1, v0

    .line 2051
    :goto_0
    iget-object v3, p0, Liuy;->a:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 2052
    iget-object v3, p0, Liuy;->a:[I

    aget v3, v3, v0

    .line 2054
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 2051
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2056
    :cond_0
    add-int v0, v2, v1

    .line 2057
    iget-object v1, p0, Liuy;->a:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 2059
    :goto_1
    iget-object v1, p0, Liuy;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 2060
    const/16 v1, 0x8

    iget-object v2, p0, Liuy;->b:Ljava/lang/Integer;

    .line 2061
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2063
    :cond_1
    iget-object v1, p0, Liuy;->c:Liva;

    if-eqz v1, :cond_2

    .line 2064
    const/16 v1, 0xe

    iget-object v2, p0, Liuy;->c:Liva;

    .line 2065
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2067
    :cond_2
    iget-object v1, p0, Liuy;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 2068
    const/16 v1, 0xf

    iget-object v2, p0, Liuy;->d:Ljava/lang/Integer;

    .line 2069
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2071
    :cond_3
    iget-object v1, p0, Liuy;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 2072
    const/16 v1, 0x10

    iget-object v2, p0, Liuy;->e:Ljava/lang/Integer;

    .line 2073
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2075
    :cond_4
    iget-object v1, p0, Liuy;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 2076
    const/16 v1, 0x11

    iget-object v2, p0, Liuy;->f:Ljava/lang/Integer;

    .line 2077
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2079
    :cond_5
    iget-object v1, p0, Liuy;->g:Livc;

    if-eqz v1, :cond_6

    .line 2080
    const/16 v1, 0x12

    iget-object v2, p0, Liuy;->g:Livc;

    .line 2081
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2083
    :cond_6
    iget-object v1, p0, Liuy;->h:Liux;

    if-eqz v1, :cond_7

    .line 2084
    const/16 v1, 0x13

    iget-object v2, p0, Liuy;->h:Liux;

    .line 2085
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2087
    :cond_7
    return v0

    :cond_8
    move v0, v2

    goto :goto_1
.end method
