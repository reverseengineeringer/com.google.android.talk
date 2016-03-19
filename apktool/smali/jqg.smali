.class public final Ljqg;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljqg;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[Ljava/lang/String;

.field public c:Ljqi;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1246
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2251
    iput-object v1, p0, Ljqg;->a:Ljava/lang/Integer;

    .line 2252
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Ljqg;->b:[Ljava/lang/String;

    .line 2253
    iput-object v1, p0, Ljqg;->c:Ljqi;

    .line 2254
    iput-object v1, p0, Ljqg;->eD:Llyd;

    .line 2255
    const/4 v0, -0x1

    iput v0, p0, Ljqg;->eE:I

    .line 1248
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2312
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2313
    sparse-switch v0, :sswitch_data_0

    .line 2317
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2318
    :sswitch_0
    return-object p0

    .line 2323
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2324
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2328
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljqg;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 2334
    :sswitch_2
    const/16 v0, 0x12

    .line 2335
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2336
    iget-object v0, p0, Ljqg;->b:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 2337
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 2338
    if-eqz v0, :cond_1

    .line 2339
    iget-object v3, p0, Ljqg;->b:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2341
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2342
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2343
    invoke-virtual {p1}, Llxy;->a()I

    .line 2341
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2336
    :cond_2
    iget-object v0, p0, Ljqg;->b:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 2346
    :cond_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2347
    iput-object v2, p0, Ljqg;->b:[Ljava/lang/String;

    goto :goto_0

    .line 2351
    :sswitch_3
    iget-object v0, p0, Ljqg;->c:Ljqi;

    if-nez v0, :cond_4

    .line 2352
    new-instance v0, Ljqi;

    invoke-direct {v0}, Ljqi;-><init>()V

    iput-object v0, p0, Ljqg;->c:Ljqi;

    .line 2354
    :cond_4
    iget-object v0, p0, Ljqg;->c:Ljqi;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2313
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    .line 2324
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 1262
    iget-object v0, p0, Ljqg;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1263
    const/4 v0, 0x1

    iget-object v1, p0, Ljqg;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1265
    :cond_0
    iget-object v0, p0, Ljqg;->b:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljqg;->b:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 1266
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljqg;->b:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1267
    iget-object v1, p0, Ljqg;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 1268
    if-eqz v1, :cond_1

    .line 1269
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1266
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1273
    :cond_2
    iget-object v0, p0, Ljqg;->c:Ljqi;

    if-eqz v0, :cond_3

    .line 1274
    const/4 v0, 0x3

    iget-object v1, p0, Ljqg;->c:Ljqi;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1276
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1277
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1281
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1282
    iget-object v2, p0, Ljqg;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 1283
    const/4 v2, 0x1

    iget-object v3, p0, Ljqg;->a:Ljava/lang/Integer;

    .line 1284
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1286
    :cond_0
    iget-object v2, p0, Ljqg;->b:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljqg;->b:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v1

    move v3, v1

    .line 1289
    :goto_0
    iget-object v4, p0, Ljqg;->b:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 1290
    iget-object v4, p0, Ljqg;->b:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 1291
    if-eqz v4, :cond_1

    .line 1292
    add-int/lit8 v3, v3, 0x1

    .line 1294
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1289
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1297
    :cond_2
    add-int/2addr v0, v2

    .line 1298
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 1300
    :cond_3
    iget-object v1, p0, Ljqg;->c:Ljqi;

    if-eqz v1, :cond_4

    .line 1301
    const/4 v1, 0x3

    iget-object v2, p0, Ljqg;->c:Ljqi;

    .line 1302
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1304
    :cond_4
    return v0
.end method
