.class public final Lkdt;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkdt;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Boolean;

.field public f:[I

.field public g:[[B

.field public h:Ljava/lang/Boolean;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28085
    invoke-direct {p0}, Llyb;-><init>()V

    .line 29090
    iput-object v1, p0, Lkdt;->requestHeader:Lkdo;

    .line 29091
    iput-object v1, p0, Lkdt;->a:Ljava/lang/String;

    .line 29092
    iput-object v1, p0, Lkdt;->b:Ljava/lang/Integer;

    .line 29093
    iput-object v1, p0, Lkdt;->c:Ljava/lang/Integer;

    .line 29094
    iput-object v1, p0, Lkdt;->d:Ljava/lang/Boolean;

    .line 29095
    iput-object v1, p0, Lkdt;->e:Ljava/lang/Boolean;

    .line 29096
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Lkdt;->f:[I

    .line 29097
    sget-object v0, Llyo;->g:[[B

    iput-object v0, p0, Lkdt;->g:[[B

    .line 29098
    iput-object v1, p0, Lkdt;->h:Ljava/lang/Boolean;

    .line 29099
    iput-object v1, p0, Lkdt;->eD:Llyd;

    .line 29100
    const/4 v0, -0x1

    iput v0, p0, Lkdt;->eE:I

    .line 28087
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 32207
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 32208
    sparse-switch v0, :sswitch_data_0

    .line 32212
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32213
    :sswitch_0
    return-object p0

    .line 32218
    :sswitch_1
    iget-object v0, p0, Lkdt;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 32219
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkdt;->requestHeader:Lkdo;

    .line 32221
    :cond_1
    iget-object v0, p0, Lkdt;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 32225
    :sswitch_2
    const/16 v0, 0x12

    .line 32226
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 32227
    iget-object v0, p0, Lkdt;->g:[[B

    if-nez v0, :cond_3

    move v0, v1

    .line 32228
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [[B

    .line 32229
    if-eqz v0, :cond_2

    .line 32230
    iget-object v3, p0, Lkdt;->g:[[B

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32232
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 32233
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v3

    aput-object v3, v2, v0

    .line 32234
    invoke-virtual {p1}, Llxy;->a()I

    .line 32232
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 32227
    :cond_3
    iget-object v0, p0, Lkdt;->g:[[B

    array-length v0, v0

    goto :goto_1

    .line 32237
    :cond_4
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v3

    aput-object v3, v2, v0

    .line 32238
    iput-object v2, p0, Lkdt;->g:[[B

    goto :goto_0

    .line 32242
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkdt;->a:Ljava/lang/String;

    goto :goto_0

    .line 32246
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkdt;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 32250
    :sswitch_5
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkdt;->h:Ljava/lang/Boolean;

    goto :goto_0

    .line 32254
    :sswitch_6
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkdt;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 32258
    :sswitch_7
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkdt;->e:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 32262
    :sswitch_8
    const/16 v0, 0x40

    .line 32263
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 32264
    new-array v5, v4, [I

    move v3, v1

    move v2, v1

    .line 32266
    :goto_3
    if-ge v3, v4, :cond_6

    .line 32267
    if-eqz v3, :cond_5

    .line 32268
    invoke-virtual {p1}, Llxy;->a()I

    .line 32270
    :cond_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 32271
    packed-switch v6, :pswitch_data_0

    move v0, v2

    .line 32266
    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_3

    .line 32275
    :pswitch_0
    add-int/lit8 v0, v2, 0x1

    aput v6, v5, v2

    goto :goto_4

    .line 32279
    :cond_6
    if-eqz v2, :cond_0

    .line 32280
    iget-object v0, p0, Lkdt;->f:[I

    if-nez v0, :cond_7

    move v0, v1

    .line 32281
    :goto_5
    if-nez v0, :cond_8

    array-length v3, v5

    if-ne v2, v3, :cond_8

    .line 32282
    iput-object v5, p0, Lkdt;->f:[I

    goto/16 :goto_0

    .line 32280
    :cond_7
    iget-object v0, p0, Lkdt;->f:[I

    array-length v0, v0

    goto :goto_5

    .line 32284
    :cond_8
    add-int v3, v0, v2

    new-array v3, v3, [I

    .line 32285
    if-eqz v0, :cond_9

    .line 32286
    iget-object v4, p0, Lkdt;->f:[I

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32288
    :cond_9
    invoke-static {v5, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32289
    iput-object v3, p0, Lkdt;->f:[I

    goto/16 :goto_0

    .line 32295
    :sswitch_9
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 32296
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 32299
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 32300
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_a

    .line 32301
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_6

    .line 32305
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 32309
    :cond_a
    if-eqz v0, :cond_e

    .line 32310
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 32311
    iget-object v2, p0, Lkdt;->f:[I

    if-nez v2, :cond_c

    move v2, v1

    .line 32312
    :goto_7
    add-int/2addr v0, v2

    new-array v4, v0, [I

    .line 32313
    if-eqz v2, :cond_b

    .line 32314
    iget-object v0, p0, Lkdt;->f:[I

    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32316
    :cond_b
    :goto_8
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_d

    .line 32317
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 32318
    packed-switch v5, :pswitch_data_2

    goto :goto_8

    .line 32322
    :pswitch_2
    add-int/lit8 v0, v2, 0x1

    aput v5, v4, v2

    move v2, v0

    goto :goto_8

    .line 32311
    :cond_c
    iget-object v2, p0, Lkdt;->f:[I

    array-length v2, v2

    goto :goto_7

    .line 32326
    :cond_d
    iput-object v4, p0, Lkdt;->f:[I

    .line 32328
    :cond_e
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 32332
    :sswitch_a
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkdt;->c:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 32208
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x42 -> :sswitch_9
        0x48 -> :sswitch_a
    .end sparse-switch

    .line 32271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 32301
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 32318
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 28107
    iget-object v0, p0, Lkdt;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 28108
    const/4 v0, 0x1

    iget-object v2, p0, Lkdt;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 28110
    :cond_0
    iget-object v0, p0, Lkdt;->g:[[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkdt;->g:[[B

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 28111
    :goto_0
    iget-object v2, p0, Lkdt;->g:[[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 28112
    iget-object v2, p0, Lkdt;->g:[[B

    aget-object v2, v2, v0

    .line 28113
    if-eqz v2, :cond_1

    .line 28114
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->a(I[B)V

    .line 28111
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28118
    :cond_2
    iget-object v0, p0, Lkdt;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 28119
    const/4 v0, 0x3

    iget-object v2, p0, Lkdt;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 28121
    :cond_3
    iget-object v0, p0, Lkdt;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 28122
    const/4 v0, 0x4

    iget-object v2, p0, Lkdt;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 28124
    :cond_4
    iget-object v0, p0, Lkdt;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 28125
    const/4 v0, 0x5

    iget-object v2, p0, Lkdt;->h:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 28127
    :cond_5
    iget-object v0, p0, Lkdt;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 28128
    const/4 v0, 0x6

    iget-object v2, p0, Lkdt;->d:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 28130
    :cond_6
    iget-object v0, p0, Lkdt;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 28131
    const/4 v0, 0x7

    iget-object v2, p0, Lkdt;->e:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 28133
    :cond_7
    iget-object v0, p0, Lkdt;->f:[I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lkdt;->f:[I

    array-length v0, v0

    if-lez v0, :cond_8

    .line 28134
    :goto_1
    iget-object v0, p0, Lkdt;->f:[I

    array-length v0, v0

    if-ge v1, v0, :cond_8

    .line 28135
    const/16 v0, 0x8

    iget-object v2, p0, Lkdt;->f:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 28134
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 28138
    :cond_8
    iget-object v0, p0, Lkdt;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 28139
    const/16 v0, 0x9

    iget-object v1, p0, Lkdt;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 28141
    :cond_9
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 28142
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 28146
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 28147
    iget-object v1, p0, Lkdt;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 28148
    const/4 v1, 0x1

    iget-object v3, p0, Lkdt;->requestHeader:Lkdo;

    .line 28149
    invoke-static {v1, v3}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28151
    :cond_0
    iget-object v1, p0, Lkdt;->g:[[B

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkdt;->g:[[B

    array-length v1, v1

    if-lez v1, :cond_3

    move v1, v2

    move v3, v2

    move v4, v2

    .line 28154
    :goto_0
    iget-object v5, p0, Lkdt;->g:[[B

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 28155
    iget-object v5, p0, Lkdt;->g:[[B

    aget-object v5, v5, v1

    .line 28156
    if-eqz v5, :cond_1

    .line 28157
    add-int/lit8 v4, v4, 0x1

    .line 28159
    invoke-static {v5}, Llxz;->a([B)I

    move-result v5

    add-int/2addr v3, v5

    .line 28154
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28162
    :cond_2
    add-int/2addr v0, v3

    .line 28163
    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    .line 28165
    :cond_3
    iget-object v1, p0, Lkdt;->a:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 28166
    const/4 v1, 0x3

    iget-object v3, p0, Lkdt;->a:Ljava/lang/String;

    .line 28167
    invoke-static {v1, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28169
    :cond_4
    iget-object v1, p0, Lkdt;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 28170
    const/4 v1, 0x4

    iget-object v3, p0, Lkdt;->b:Ljava/lang/Integer;

    .line 28171
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 28173
    :cond_5
    iget-object v1, p0, Lkdt;->h:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 28174
    const/4 v1, 0x5

    iget-object v3, p0, Lkdt;->h:Ljava/lang/Boolean;

    .line 28175
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 28175
    add-int/2addr v0, v1

    .line 28177
    :cond_6
    iget-object v1, p0, Lkdt;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    .line 28178
    const/4 v1, 0x6

    iget-object v3, p0, Lkdt;->d:Ljava/lang/Boolean;

    .line 28179
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 28179
    add-int/2addr v0, v1

    .line 28181
    :cond_7
    iget-object v1, p0, Lkdt;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 28182
    const/4 v1, 0x7

    iget-object v3, p0, Lkdt;->e:Ljava/lang/Boolean;

    .line 28183
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 28183
    add-int/2addr v0, v1

    .line 28185
    :cond_8
    iget-object v1, p0, Lkdt;->f:[I

    if-eqz v1, :cond_a

    iget-object v1, p0, Lkdt;->f:[I

    array-length v1, v1

    if-lez v1, :cond_a

    move v1, v2

    .line 28187
    :goto_1
    iget-object v3, p0, Lkdt;->f:[I

    array-length v3, v3

    if-ge v2, v3, :cond_9

    .line 28188
    iget-object v3, p0, Lkdt;->f:[I

    aget v3, v3, v2

    .line 28190
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 28187
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 28192
    :cond_9
    add-int/2addr v0, v1

    .line 28193
    iget-object v1, p0, Lkdt;->f:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 28195
    :cond_a
    iget-object v1, p0, Lkdt;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    .line 28196
    const/16 v1, 0x9

    iget-object v2, p0, Lkdt;->c:Ljava/lang/Integer;

    .line 28197
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 28199
    :cond_b
    return v0
.end method
