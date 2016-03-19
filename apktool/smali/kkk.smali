.class public final Lkkk;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkkk;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkii;

.field public b:[Lkix;

.field public c:[Lkkj;

.field public d:Lkkj;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1173
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2178
    iput-object v1, p0, Lkkk;->a:Lkii;

    .line 2179
    invoke-static {}, Lkix;->d()[Lkix;

    move-result-object v0

    iput-object v0, p0, Lkkk;->b:[Lkix;

    .line 2180
    invoke-static {}, Lkkj;->d()[Lkkj;

    move-result-object v0

    iput-object v0, p0, Lkkk;->c:[Lkkj;

    .line 2181
    iput-object v1, p0, Lkkk;->d:Lkkj;

    .line 2182
    iput-object v1, p0, Lkkk;->eD:Llyd;

    .line 2183
    const/4 v0, -0x1

    iput v0, p0, Lkkk;->eE:I

    .line 1175
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2252
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2253
    sparse-switch v0, :sswitch_data_0

    .line 2257
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2258
    :sswitch_0
    return-object p0

    .line 2263
    :sswitch_1
    iget-object v0, p0, Lkkk;->a:Lkii;

    if-nez v0, :cond_1

    .line 2264
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkkk;->a:Lkii;

    .line 2266
    :cond_1
    iget-object v0, p0, Lkkk;->a:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2270
    :sswitch_2
    const/16 v0, 0x12

    .line 2271
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2272
    iget-object v0, p0, Lkkk;->b:[Lkix;

    if-nez v0, :cond_3

    move v0, v1

    .line 2273
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkix;

    .line 2275
    if-eqz v0, :cond_2

    .line 2276
    iget-object v3, p0, Lkkk;->b:[Lkix;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2278
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 2279
    new-instance v3, Lkix;

    invoke-direct {v3}, Lkix;-><init>()V

    aput-object v3, v2, v0

    .line 2280
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2281
    invoke-virtual {p1}, Llxy;->a()I

    .line 2278
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2272
    :cond_3
    iget-object v0, p0, Lkkk;->b:[Lkix;

    array-length v0, v0

    goto :goto_1

    .line 2284
    :cond_4
    new-instance v3, Lkix;

    invoke-direct {v3}, Lkix;-><init>()V

    aput-object v3, v2, v0

    .line 2285
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2286
    iput-object v2, p0, Lkkk;->b:[Lkix;

    goto :goto_0

    .line 2290
    :sswitch_3
    const/16 v0, 0x1a

    .line 2291
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2292
    iget-object v0, p0, Lkkk;->c:[Lkkj;

    if-nez v0, :cond_6

    move v0, v1

    .line 2293
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lkkj;

    .line 2295
    if-eqz v0, :cond_5

    .line 2296
    iget-object v3, p0, Lkkk;->c:[Lkkj;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2298
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 2299
    new-instance v3, Lkkj;

    invoke-direct {v3}, Lkkj;-><init>()V

    aput-object v3, v2, v0

    .line 2300
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2301
    invoke-virtual {p1}, Llxy;->a()I

    .line 2298
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2292
    :cond_6
    iget-object v0, p0, Lkkk;->c:[Lkkj;

    array-length v0, v0

    goto :goto_3

    .line 2304
    :cond_7
    new-instance v3, Lkkj;

    invoke-direct {v3}, Lkkj;-><init>()V

    aput-object v3, v2, v0

    .line 2305
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2306
    iput-object v2, p0, Lkkk;->c:[Lkkj;

    goto/16 :goto_0

    .line 2310
    :sswitch_4
    iget-object v0, p0, Lkkk;->d:Lkkj;

    if-nez v0, :cond_8

    .line 2311
    new-instance v0, Lkkj;

    invoke-direct {v0}, Lkkj;-><init>()V

    iput-object v0, p0, Lkkk;->d:Lkkj;

    .line 2313
    :cond_8
    iget-object v0, p0, Lkkk;->d:Lkkj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2253
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

    .line 1190
    iget-object v0, p0, Lkkk;->a:Lkii;

    if-eqz v0, :cond_0

    .line 1191
    const/4 v0, 0x1

    iget-object v2, p0, Lkkk;->a:Lkii;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 1193
    :cond_0
    iget-object v0, p0, Lkkk;->b:[Lkix;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkkk;->b:[Lkix;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 1194
    :goto_0
    iget-object v2, p0, Lkkk;->b:[Lkix;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1195
    iget-object v2, p0, Lkkk;->b:[Lkix;

    aget-object v2, v2, v0

    .line 1196
    if-eqz v2, :cond_1

    .line 1197
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 1194
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1201
    :cond_2
    iget-object v0, p0, Lkkk;->c:[Lkkj;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkkk;->c:[Lkkj;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 1202
    :goto_1
    iget-object v0, p0, Lkkk;->c:[Lkkj;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 1203
    iget-object v0, p0, Lkkk;->c:[Lkkj;

    aget-object v0, v0, v1

    .line 1204
    if-eqz v0, :cond_3

    .line 1205
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 1202
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1209
    :cond_4
    iget-object v0, p0, Lkkk;->d:Lkkj;

    if-eqz v0, :cond_5

    .line 1210
    const/4 v0, 0x4

    iget-object v1, p0, Lkkk;->d:Lkkj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1212
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1213
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1217
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1218
    iget-object v2, p0, Lkkk;->a:Lkii;

    if-eqz v2, :cond_0

    .line 1219
    const/4 v2, 0x1

    iget-object v3, p0, Lkkk;->a:Lkii;

    .line 1220
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1222
    :cond_0
    iget-object v2, p0, Lkkk;->b:[Lkix;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lkkk;->b:[Lkix;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 1223
    :goto_0
    iget-object v3, p0, Lkkk;->b:[Lkix;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 1224
    iget-object v3, p0, Lkkk;->b:[Lkix;

    aget-object v3, v3, v0

    .line 1225
    if-eqz v3, :cond_1

    .line 1226
    const/4 v4, 0x2

    .line 1227
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1223
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1231
    :cond_3
    iget-object v2, p0, Lkkk;->c:[Lkkj;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lkkk;->c:[Lkkj;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 1232
    :goto_1
    iget-object v2, p0, Lkkk;->c:[Lkkj;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 1233
    iget-object v2, p0, Lkkk;->c:[Lkkj;

    aget-object v2, v2, v1

    .line 1234
    if-eqz v2, :cond_4

    .line 1235
    const/4 v3, 0x3

    .line 1236
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1232
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1240
    :cond_5
    iget-object v1, p0, Lkkk;->d:Lkkj;

    if-eqz v1, :cond_6

    .line 1241
    const/4 v1, 0x4

    iget-object v2, p0, Lkkk;->d:Lkkj;

    .line 1242
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1244
    :cond_6
    return v0
.end method
