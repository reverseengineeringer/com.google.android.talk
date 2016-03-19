.class public final Lkdw;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkdw;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljzr;

.field public b:[Ljzo;

.field public c:[Ljxi;

.field public d:Lkbi;

.field public e:Lkcd;

.field public f:Ljzs;

.field public g:Lkbs;

.field public h:Ljzy;

.field public i:Lkff;

.field public j:[B

.field public k:Ljava/lang/Long;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7156
    invoke-direct {p0}, Llyb;-><init>()V

    .line 8161
    iput-object v1, p0, Lkdw;->requestHeader:Lkdo;

    .line 8162
    iput-object v1, p0, Lkdw;->a:Ljzr;

    .line 8163
    invoke-static {}, Ljzo;->d()[Ljzo;

    move-result-object v0

    iput-object v0, p0, Lkdw;->b:[Ljzo;

    .line 8164
    invoke-static {}, Ljxi;->d()[Ljxi;

    move-result-object v0

    iput-object v0, p0, Lkdw;->c:[Ljxi;

    .line 8165
    iput-object v1, p0, Lkdw;->d:Lkbi;

    .line 8166
    iput-object v1, p0, Lkdw;->e:Lkcd;

    .line 8167
    iput-object v1, p0, Lkdw;->f:Ljzs;

    .line 8168
    iput-object v1, p0, Lkdw;->g:Lkbs;

    .line 8169
    iput-object v1, p0, Lkdw;->h:Ljzy;

    .line 8170
    iput-object v1, p0, Lkdw;->i:Lkff;

    .line 8171
    iput-object v1, p0, Lkdw;->j:[B

    .line 8172
    iput-object v1, p0, Lkdw;->k:Ljava/lang/Long;

    .line 8173
    iput-object v1, p0, Lkdw;->eD:Llyd;

    .line 8174
    const/4 v0, -0x1

    iput v0, p0, Lkdw;->eE:I

    .line 7158
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 8299
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 8300
    sparse-switch v0, :sswitch_data_0

    .line 8304
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8305
    :sswitch_0
    return-object p0

    .line 8310
    :sswitch_1
    iget-object v0, p0, Lkdw;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 8311
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkdw;->requestHeader:Lkdo;

    .line 8313
    :cond_1
    iget-object v0, p0, Lkdw;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 8317
    :sswitch_2
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Lkdw;->j:[B

    goto :goto_0

    .line 8321
    :sswitch_3
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkdw;->k:Ljava/lang/Long;

    goto :goto_0

    .line 8325
    :sswitch_4
    const/16 v0, 0x2a

    .line 8326
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 8327
    iget-object v0, p0, Lkdw;->b:[Ljzo;

    if-nez v0, :cond_3

    move v0, v1

    .line 8328
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljzo;

    .line 8330
    if-eqz v0, :cond_2

    .line 8331
    iget-object v3, p0, Lkdw;->b:[Ljzo;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8333
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 8334
    new-instance v3, Ljzo;

    invoke-direct {v3}, Ljzo;-><init>()V

    aput-object v3, v2, v0

    .line 8335
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 8336
    invoke-virtual {p1}, Llxy;->a()I

    .line 8333
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 8327
    :cond_3
    iget-object v0, p0, Lkdw;->b:[Ljzo;

    array-length v0, v0

    goto :goto_1

    .line 8339
    :cond_4
    new-instance v3, Ljzo;

    invoke-direct {v3}, Ljzo;-><init>()V

    aput-object v3, v2, v0

    .line 8340
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 8341
    iput-object v2, p0, Lkdw;->b:[Ljzo;

    goto :goto_0

    .line 8345
    :sswitch_5
    iget-object v0, p0, Lkdw;->e:Lkcd;

    if-nez v0, :cond_5

    .line 8346
    new-instance v0, Lkcd;

    invoke-direct {v0}, Lkcd;-><init>()V

    iput-object v0, p0, Lkdw;->e:Lkcd;

    .line 8348
    :cond_5
    iget-object v0, p0, Lkdw;->e:Lkcd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 8352
    :sswitch_6
    iget-object v0, p0, Lkdw;->f:Ljzs;

    if-nez v0, :cond_6

    .line 8353
    new-instance v0, Ljzs;

    invoke-direct {v0}, Ljzs;-><init>()V

    iput-object v0, p0, Lkdw;->f:Ljzs;

    .line 8355
    :cond_6
    iget-object v0, p0, Lkdw;->f:Ljzs;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 8359
    :sswitch_7
    iget-object v0, p0, Lkdw;->a:Ljzr;

    if-nez v0, :cond_7

    .line 8360
    new-instance v0, Ljzr;

    invoke-direct {v0}, Ljzr;-><init>()V

    iput-object v0, p0, Lkdw;->a:Ljzr;

    .line 8362
    :cond_7
    iget-object v0, p0, Lkdw;->a:Ljzr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 8366
    :sswitch_8
    iget-object v0, p0, Lkdw;->d:Lkbi;

    if-nez v0, :cond_8

    .line 8367
    new-instance v0, Lkbi;

    invoke-direct {v0}, Lkbi;-><init>()V

    iput-object v0, p0, Lkdw;->d:Lkbi;

    .line 8369
    :cond_8
    iget-object v0, p0, Lkdw;->d:Lkbi;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 8373
    :sswitch_9
    iget-object v0, p0, Lkdw;->g:Lkbs;

    if-nez v0, :cond_9

    .line 8374
    new-instance v0, Lkbs;

    invoke-direct {v0}, Lkbs;-><init>()V

    iput-object v0, p0, Lkdw;->g:Lkbs;

    .line 8376
    :cond_9
    iget-object v0, p0, Lkdw;->g:Lkbs;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 8380
    :sswitch_a
    iget-object v0, p0, Lkdw;->h:Ljzy;

    if-nez v0, :cond_a

    .line 8381
    new-instance v0, Ljzy;

    invoke-direct {v0}, Ljzy;-><init>()V

    iput-object v0, p0, Lkdw;->h:Ljzy;

    .line 8383
    :cond_a
    iget-object v0, p0, Lkdw;->h:Ljzy;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 8387
    :sswitch_b
    const/16 v0, 0x62

    .line 8388
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 8389
    iget-object v0, p0, Lkdw;->c:[Ljxi;

    if-nez v0, :cond_c

    move v0, v1

    .line 8390
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljxi;

    .line 8392
    if-eqz v0, :cond_b

    .line 8393
    iget-object v3, p0, Lkdw;->c:[Ljxi;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8395
    :cond_b
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_d

    .line 8396
    new-instance v3, Ljxi;

    invoke-direct {v3}, Ljxi;-><init>()V

    aput-object v3, v2, v0

    .line 8397
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 8398
    invoke-virtual {p1}, Llxy;->a()I

    .line 8395
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 8389
    :cond_c
    iget-object v0, p0, Lkdw;->c:[Ljxi;

    array-length v0, v0

    goto :goto_3

    .line 8401
    :cond_d
    new-instance v3, Ljxi;

    invoke-direct {v3}, Ljxi;-><init>()V

    aput-object v3, v2, v0

    .line 8402
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 8403
    iput-object v2, p0, Lkdw;->c:[Ljxi;

    goto/16 :goto_0

    .line 8407
    :sswitch_c
    iget-object v0, p0, Lkdw;->i:Lkff;

    if-nez v0, :cond_e

    .line 8408
    new-instance v0, Lkff;

    invoke-direct {v0}, Lkff;-><init>()V

    iput-object v0, p0, Lkdw;->i:Lkff;

    .line 8410
    :cond_e
    iget-object v0, p0, Lkdw;->i:Lkff;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 8300
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x2a -> :sswitch_4
        0x32 -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
        0x4a -> :sswitch_8
        0x52 -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
        0x6a -> :sswitch_c
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 7181
    iget-object v0, p0, Lkdw;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 7182
    const/4 v0, 0x1

    iget-object v2, p0, Lkdw;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 7184
    :cond_0
    iget-object v0, p0, Lkdw;->j:[B

    if-eqz v0, :cond_1

    .line 7185
    const/4 v0, 0x2

    iget-object v2, p0, Lkdw;->j:[B

    invoke-virtual {p1, v0, v2}, Llxz;->a(I[B)V

    .line 7187
    :cond_1
    iget-object v0, p0, Lkdw;->k:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 7188
    const/4 v0, 0x3

    iget-object v2, p0, Lkdw;->k:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 7190
    :cond_2
    iget-object v0, p0, Lkdw;->b:[Ljzo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkdw;->b:[Ljzo;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 7191
    :goto_0
    iget-object v2, p0, Lkdw;->b:[Ljzo;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 7192
    iget-object v2, p0, Lkdw;->b:[Ljzo;

    aget-object v2, v2, v0

    .line 7193
    if-eqz v2, :cond_3

    .line 7194
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 7191
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7198
    :cond_4
    iget-object v0, p0, Lkdw;->e:Lkcd;

    if-eqz v0, :cond_5

    .line 7199
    const/4 v0, 0x6

    iget-object v2, p0, Lkdw;->e:Lkcd;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 7201
    :cond_5
    iget-object v0, p0, Lkdw;->f:Ljzs;

    if-eqz v0, :cond_6

    .line 7202
    const/4 v0, 0x7

    iget-object v2, p0, Lkdw;->f:Ljzs;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 7204
    :cond_6
    iget-object v0, p0, Lkdw;->a:Ljzr;

    if-eqz v0, :cond_7

    .line 7205
    const/16 v0, 0x8

    iget-object v2, p0, Lkdw;->a:Ljzr;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 7207
    :cond_7
    iget-object v0, p0, Lkdw;->d:Lkbi;

    if-eqz v0, :cond_8

    .line 7208
    const/16 v0, 0x9

    iget-object v2, p0, Lkdw;->d:Lkbi;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 7210
    :cond_8
    iget-object v0, p0, Lkdw;->g:Lkbs;

    if-eqz v0, :cond_9

    .line 7211
    const/16 v0, 0xa

    iget-object v2, p0, Lkdw;->g:Lkbs;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 7213
    :cond_9
    iget-object v0, p0, Lkdw;->h:Ljzy;

    if-eqz v0, :cond_a

    .line 7214
    const/16 v0, 0xb

    iget-object v2, p0, Lkdw;->h:Ljzy;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 7216
    :cond_a
    iget-object v0, p0, Lkdw;->c:[Ljxi;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lkdw;->c:[Ljxi;

    array-length v0, v0

    if-lez v0, :cond_c

    .line 7217
    :goto_1
    iget-object v0, p0, Lkdw;->c:[Ljxi;

    array-length v0, v0

    if-ge v1, v0, :cond_c

    .line 7218
    iget-object v0, p0, Lkdw;->c:[Ljxi;

    aget-object v0, v0, v1

    .line 7219
    if-eqz v0, :cond_b

    .line 7220
    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 7217
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7224
    :cond_c
    iget-object v0, p0, Lkdw;->i:Lkff;

    if-eqz v0, :cond_d

    .line 7225
    const/16 v0, 0xd

    iget-object v1, p0, Lkdw;->i:Lkff;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 7227
    :cond_d
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 7228
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 7232
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 7233
    iget-object v2, p0, Lkdw;->requestHeader:Lkdo;

    if-eqz v2, :cond_0

    .line 7234
    const/4 v2, 0x1

    iget-object v3, p0, Lkdw;->requestHeader:Lkdo;

    .line 7235
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7237
    :cond_0
    iget-object v2, p0, Lkdw;->j:[B

    if-eqz v2, :cond_1

    .line 7238
    const/4 v2, 0x2

    iget-object v3, p0, Lkdw;->j:[B

    .line 7239
    invoke-static {v2, v3}, Llxz;->b(I[B)I

    move-result v2

    add-int/2addr v0, v2

    .line 7241
    :cond_1
    iget-object v2, p0, Lkdw;->k:Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 7242
    const/4 v2, 0x3

    iget-object v3, p0, Lkdw;->k:Ljava/lang/Long;

    .line 7243
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 7245
    :cond_2
    iget-object v2, p0, Lkdw;->b:[Ljzo;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lkdw;->b:[Ljzo;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    .line 7246
    :goto_0
    iget-object v3, p0, Lkdw;->b:[Ljzo;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 7247
    iget-object v3, p0, Lkdw;->b:[Ljzo;

    aget-object v3, v3, v0

    .line 7248
    if-eqz v3, :cond_3

    .line 7249
    const/4 v4, 0x5

    .line 7250
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 7246
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 7254
    :cond_5
    iget-object v2, p0, Lkdw;->e:Lkcd;

    if-eqz v2, :cond_6

    .line 7255
    const/4 v2, 0x6

    iget-object v3, p0, Lkdw;->e:Lkcd;

    .line 7256
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7258
    :cond_6
    iget-object v2, p0, Lkdw;->f:Ljzs;

    if-eqz v2, :cond_7

    .line 7259
    const/4 v2, 0x7

    iget-object v3, p0, Lkdw;->f:Ljzs;

    .line 7260
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7262
    :cond_7
    iget-object v2, p0, Lkdw;->a:Ljzr;

    if-eqz v2, :cond_8

    .line 7263
    const/16 v2, 0x8

    iget-object v3, p0, Lkdw;->a:Ljzr;

    .line 7264
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7266
    :cond_8
    iget-object v2, p0, Lkdw;->d:Lkbi;

    if-eqz v2, :cond_9

    .line 7267
    const/16 v2, 0x9

    iget-object v3, p0, Lkdw;->d:Lkbi;

    .line 7268
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7270
    :cond_9
    iget-object v2, p0, Lkdw;->g:Lkbs;

    if-eqz v2, :cond_a

    .line 7271
    const/16 v2, 0xa

    iget-object v3, p0, Lkdw;->g:Lkbs;

    .line 7272
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7274
    :cond_a
    iget-object v2, p0, Lkdw;->h:Ljzy;

    if-eqz v2, :cond_b

    .line 7275
    const/16 v2, 0xb

    iget-object v3, p0, Lkdw;->h:Ljzy;

    .line 7276
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7278
    :cond_b
    iget-object v2, p0, Lkdw;->c:[Ljxi;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lkdw;->c:[Ljxi;

    array-length v2, v2

    if-lez v2, :cond_d

    .line 7279
    :goto_1
    iget-object v2, p0, Lkdw;->c:[Ljxi;

    array-length v2, v2

    if-ge v1, v2, :cond_d

    .line 7280
    iget-object v2, p0, Lkdw;->c:[Ljxi;

    aget-object v2, v2, v1

    .line 7281
    if-eqz v2, :cond_c

    .line 7282
    const/16 v3, 0xc

    .line 7283
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7279
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7287
    :cond_d
    iget-object v1, p0, Lkdw;->i:Lkff;

    if-eqz v1, :cond_e

    .line 7288
    const/16 v1, 0xd

    iget-object v2, p0, Lkdw;->i:Lkff;

    .line 7289
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7291
    :cond_e
    return v0
.end method
