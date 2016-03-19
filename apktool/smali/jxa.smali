.class public final Ljxa;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljxa;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljxb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36225
    invoke-direct {p0}, Llyb;-><init>()V

    .line 37230
    invoke-static {}, Ljxb;->d()[Ljxb;

    move-result-object v0

    iput-object v0, p0, Ljxa;->a:[Ljxb;

    .line 37231
    const/4 v0, 0x0

    iput-object v0, p0, Ljxa;->eD:Llyd;

    .line 37232
    const/4 v0, -0x1

    iput v0, p0, Ljxa;->eE:I

    .line 36227
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 37270
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 37271
    sparse-switch v0, :sswitch_data_0

    .line 37275
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37276
    :sswitch_0
    return-object p0

    .line 37281
    :sswitch_1
    const/16 v0, 0xa

    .line 37282
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 37283
    iget-object v0, p0, Ljxa;->a:[Ljxb;

    if-nez v0, :cond_2

    move v0, v1

    .line 37284
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljxb;

    .line 37286
    if-eqz v0, :cond_1

    .line 37287
    iget-object v3, p0, Ljxa;->a:[Ljxb;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37289
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 37290
    new-instance v3, Ljxb;

    invoke-direct {v3}, Ljxb;-><init>()V

    aput-object v3, v2, v0

    .line 37291
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 37292
    invoke-virtual {p1}, Llxy;->a()I

    .line 37289
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 37283
    :cond_2
    iget-object v0, p0, Ljxa;->a:[Ljxb;

    array-length v0, v0

    goto :goto_1

    .line 37295
    :cond_3
    new-instance v3, Ljxb;

    invoke-direct {v3}, Ljxb;-><init>()V

    aput-object v3, v2, v0

    .line 37296
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 37297
    iput-object v2, p0, Ljxa;->a:[Ljxb;

    goto :goto_0

    .line 37271
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 36239
    iget-object v0, p0, Ljxa;->a:[Ljxb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljxa;->a:[Ljxb;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 36240
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljxa;->a:[Ljxb;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 36241
    iget-object v1, p0, Ljxa;->a:[Ljxb;

    aget-object v1, v1, v0

    .line 36242
    if-eqz v1, :cond_0

    .line 36243
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 36240
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36247
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 36248
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 36252
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 36253
    iget-object v0, p0, Ljxa;->a:[Ljxb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljxa;->a:[Ljxb;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 36254
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljxa;->a:[Ljxb;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 36255
    iget-object v2, p0, Ljxa;->a:[Ljxb;

    aget-object v2, v2, v0

    .line 36256
    if-eqz v2, :cond_0

    .line 36257
    const/4 v3, 0x1

    .line 36258
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 36254
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36262
    :cond_1
    return v1
.end method
