.class public final Lkjz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkjz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkii;

.field public b:[Lkgy;

.field public c:[Lkjy;

.field public d:Lkjy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2184
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3189
    iput-object v1, p0, Lkjz;->a:Lkii;

    .line 3190
    invoke-static {}, Lkgy;->d()[Lkgy;

    move-result-object v0

    iput-object v0, p0, Lkjz;->b:[Lkgy;

    .line 3191
    invoke-static {}, Lkjy;->d()[Lkjy;

    move-result-object v0

    iput-object v0, p0, Lkjz;->c:[Lkjy;

    .line 3192
    iput-object v1, p0, Lkjz;->d:Lkjy;

    .line 3193
    iput-object v1, p0, Lkjz;->eD:Llyd;

    .line 3194
    const/4 v0, -0x1

    iput v0, p0, Lkjz;->eE:I

    .line 2186
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3263
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3264
    sparse-switch v0, :sswitch_data_0

    .line 3268
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3269
    :sswitch_0
    return-object p0

    .line 3274
    :sswitch_1
    iget-object v0, p0, Lkjz;->a:Lkii;

    if-nez v0, :cond_1

    .line 3275
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkjz;->a:Lkii;

    .line 3277
    :cond_1
    iget-object v0, p0, Lkjz;->a:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3281
    :sswitch_2
    const/16 v0, 0x12

    .line 3282
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3283
    iget-object v0, p0, Lkjz;->b:[Lkgy;

    if-nez v0, :cond_3

    move v0, v1

    .line 3284
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkgy;

    .line 3286
    if-eqz v0, :cond_2

    .line 3287
    iget-object v3, p0, Lkjz;->b:[Lkgy;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3289
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 3290
    new-instance v3, Lkgy;

    invoke-direct {v3}, Lkgy;-><init>()V

    aput-object v3, v2, v0

    .line 3291
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 3292
    invoke-virtual {p1}, Llxy;->a()I

    .line 3289
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3283
    :cond_3
    iget-object v0, p0, Lkjz;->b:[Lkgy;

    array-length v0, v0

    goto :goto_1

    .line 3295
    :cond_4
    new-instance v3, Lkgy;

    invoke-direct {v3}, Lkgy;-><init>()V

    aput-object v3, v2, v0

    .line 3296
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 3297
    iput-object v2, p0, Lkjz;->b:[Lkgy;

    goto :goto_0

    .line 3301
    :sswitch_3
    const/16 v0, 0x1a

    .line 3302
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3303
    iget-object v0, p0, Lkjz;->c:[Lkjy;

    if-nez v0, :cond_6

    move v0, v1

    .line 3304
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lkjy;

    .line 3306
    if-eqz v0, :cond_5

    .line 3307
    iget-object v3, p0, Lkjz;->c:[Lkjy;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3309
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 3310
    new-instance v3, Lkjy;

    invoke-direct {v3}, Lkjy;-><init>()V

    aput-object v3, v2, v0

    .line 3311
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 3312
    invoke-virtual {p1}, Llxy;->a()I

    .line 3309
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3303
    :cond_6
    iget-object v0, p0, Lkjz;->c:[Lkjy;

    array-length v0, v0

    goto :goto_3

    .line 3315
    :cond_7
    new-instance v3, Lkjy;

    invoke-direct {v3}, Lkjy;-><init>()V

    aput-object v3, v2, v0

    .line 3316
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 3317
    iput-object v2, p0, Lkjz;->c:[Lkjy;

    goto/16 :goto_0

    .line 3321
    :sswitch_4
    iget-object v0, p0, Lkjz;->d:Lkjy;

    if-nez v0, :cond_8

    .line 3322
    new-instance v0, Lkjy;

    invoke-direct {v0}, Lkjy;-><init>()V

    iput-object v0, p0, Lkjz;->d:Lkjy;

    .line 3324
    :cond_8
    iget-object v0, p0, Lkjz;->d:Lkjy;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 3264
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2201
    iget-object v0, p0, Lkjz;->a:Lkii;

    if-eqz v0, :cond_0

    .line 2202
    const/4 v0, 0x1

    iget-object v2, p0, Lkjz;->a:Lkii;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 2204
    :cond_0
    iget-object v0, p0, Lkjz;->b:[Lkgy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkjz;->b:[Lkgy;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 2205
    :goto_0
    iget-object v2, p0, Lkjz;->b:[Lkgy;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 2206
    iget-object v2, p0, Lkjz;->b:[Lkgy;

    aget-object v2, v2, v0

    .line 2207
    if-eqz v2, :cond_1

    .line 2208
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 2205
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2212
    :cond_2
    iget-object v0, p0, Lkjz;->c:[Lkjy;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkjz;->c:[Lkjy;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 2213
    :goto_1
    iget-object v0, p0, Lkjz;->c:[Lkjy;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 2214
    iget-object v0, p0, Lkjz;->c:[Lkjy;

    aget-object v0, v0, v1

    .line 2215
    if-eqz v0, :cond_3

    .line 2216
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 2213
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2220
    :cond_4
    iget-object v0, p0, Lkjz;->d:Lkjy;

    if-eqz v0, :cond_5

    .line 2221
    const/4 v0, 0x4

    iget-object v1, p0, Lkjz;->d:Lkjy;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2223
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2224
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2228
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2229
    iget-object v2, p0, Lkjz;->a:Lkii;

    if-eqz v2, :cond_0

    .line 2230
    const/4 v2, 0x1

    iget-object v3, p0, Lkjz;->a:Lkii;

    .line 2231
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2233
    :cond_0
    iget-object v2, p0, Lkjz;->b:[Lkgy;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lkjz;->b:[Lkgy;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 2234
    :goto_0
    iget-object v3, p0, Lkjz;->b:[Lkgy;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 2235
    iget-object v3, p0, Lkjz;->b:[Lkgy;

    aget-object v3, v3, v0

    .line 2236
    if-eqz v3, :cond_1

    .line 2237
    const/4 v4, 0x2

    .line 2238
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2234
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 2242
    :cond_3
    iget-object v2, p0, Lkjz;->c:[Lkjy;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lkjz;->c:[Lkjy;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 2243
    :goto_1
    iget-object v2, p0, Lkjz;->c:[Lkjy;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 2244
    iget-object v2, p0, Lkjz;->c:[Lkjy;

    aget-object v2, v2, v1

    .line 2245
    if-eqz v2, :cond_4

    .line 2246
    const/4 v3, 0x3

    .line 2247
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2243
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2251
    :cond_5
    iget-object v1, p0, Lkjz;->d:Lkjy;

    if-eqz v1, :cond_6

    .line 2252
    const/4 v1, 0x4

    iget-object v2, p0, Lkjz;->d:Lkjy;

    .line 2253
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2255
    :cond_6
    return v0
.end method
