.class public final Lkbr;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkbr;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lkbr;


# instance fields
.field public a:Ljxw;

.field public b:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13205
    invoke-direct {p0}, Llyb;-><init>()V

    .line 14210
    iput-object v1, p0, Lkbr;->a:Ljxw;

    .line 14211
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Lkbr;->b:[Ljava/lang/String;

    .line 14212
    iput-object v1, p0, Lkbr;->eD:Llyd;

    .line 14213
    const/4 v0, -0x1

    iput v0, p0, Lkbr;->eE:I

    .line 13207
    return-void
.end method

.method public static d()[Lkbr;
    .locals 2

    .prologue
    .line 13186
    sget-object v0, Lkbr;->c:[Lkbr;

    if-nez v0, :cond_1

    .line 13187
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 13189
    :try_start_0
    sget-object v0, Lkbr;->c:[Lkbr;

    if-nez v0, :cond_0

    .line 13190
    const/4 v0, 0x0

    new-array v0, v0, [Lkbr;

    sput-object v0, Lkbr;->c:[Lkbr;

    .line 13192
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13194
    :cond_1
    sget-object v0, Lkbr;->c:[Lkbr;

    return-object v0

    .line 13192
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 14263
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 14264
    sparse-switch v0, :sswitch_data_0

    .line 14268
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14269
    :sswitch_0
    return-object p0

    .line 14274
    :sswitch_1
    iget-object v0, p0, Lkbr;->a:Ljxw;

    if-nez v0, :cond_1

    .line 14275
    new-instance v0, Ljxw;

    invoke-direct {v0}, Ljxw;-><init>()V

    iput-object v0, p0, Lkbr;->a:Ljxw;

    .line 14277
    :cond_1
    iget-object v0, p0, Lkbr;->a:Ljxw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 14281
    :sswitch_2
    const/16 v0, 0x22

    .line 14282
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 14283
    iget-object v0, p0, Lkbr;->b:[Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    .line 14284
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 14285
    if-eqz v0, :cond_2

    .line 14286
    iget-object v3, p0, Lkbr;->b:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14288
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 14289
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 14290
    invoke-virtual {p1}, Llxy;->a()I

    .line 14288
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 14283
    :cond_3
    iget-object v0, p0, Lkbr;->b:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 14293
    :cond_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 14294
    iput-object v2, p0, Lkbr;->b:[Ljava/lang/String;

    goto :goto_0

    .line 14264
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x22 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 13220
    iget-object v0, p0, Lkbr;->a:Ljxw;

    if-eqz v0, :cond_0

    .line 13221
    const/4 v0, 0x2

    iget-object v1, p0, Lkbr;->a:Ljxw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 13223
    :cond_0
    iget-object v0, p0, Lkbr;->b:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkbr;->b:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 13224
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkbr;->b:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 13225
    iget-object v1, p0, Lkbr;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 13226
    if-eqz v1, :cond_1

    .line 13227
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 13224
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13231
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 13232
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 13236
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 13237
    iget-object v2, p0, Lkbr;->a:Ljxw;

    if-eqz v2, :cond_0

    .line 13238
    const/4 v2, 0x2

    iget-object v3, p0, Lkbr;->a:Ljxw;

    .line 13239
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13241
    :cond_0
    iget-object v2, p0, Lkbr;->b:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lkbr;->b:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v1

    move v3, v1

    .line 13244
    :goto_0
    iget-object v4, p0, Lkbr;->b:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 13245
    iget-object v4, p0, Lkbr;->b:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 13246
    if-eqz v4, :cond_1

    .line 13247
    add-int/lit8 v3, v3, 0x1

    .line 13249
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 13244
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13252
    :cond_2
    add-int/2addr v0, v2

    .line 13253
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 13255
    :cond_3
    return v0
.end method
