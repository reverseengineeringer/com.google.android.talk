.class public final Ljan;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljan;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2217
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3222
    iput-object v0, p0, Ljan;->a:Ljava/lang/Integer;

    .line 3223
    iput-object v0, p0, Ljan;->b:Ljava/lang/Integer;

    .line 3224
    iput-object v0, p0, Ljan;->c:Ljava/lang/Integer;

    .line 3225
    iput-object v0, p0, Ljan;->d:Ljava/lang/String;

    .line 3226
    iput-object v0, p0, Ljan;->eD:Llyd;

    .line 3227
    const/4 v0, -0x1

    iput v0, p0, Ljan;->eE:I

    .line 2219
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3276
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3277
    sparse-switch v0, :sswitch_data_0

    .line 3281
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3282
    :sswitch_0
    return-object p0

    .line 3287
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljan;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 3291
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljan;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 3295
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljan;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 3299
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljan;->d:Ljava/lang/String;

    goto :goto_0

    .line 3277
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2234
    iget-object v0, p0, Ljan;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2235
    const/4 v0, 0x1

    iget-object v1, p0, Ljan;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2237
    :cond_0
    iget-object v0, p0, Ljan;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 2238
    const/4 v0, 0x2

    iget-object v1, p0, Ljan;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2240
    :cond_1
    iget-object v0, p0, Ljan;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 2241
    const/4 v0, 0x3

    iget-object v1, p0, Ljan;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2243
    :cond_2
    iget-object v0, p0, Ljan;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2244
    const/4 v0, 0x4

    iget-object v1, p0, Ljan;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2246
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2247
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2251
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2252
    iget-object v1, p0, Ljan;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 2253
    const/4 v1, 0x1

    iget-object v2, p0, Ljan;->a:Ljava/lang/Integer;

    .line 2254
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2256
    :cond_0
    iget-object v1, p0, Ljan;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 2257
    const/4 v1, 0x2

    iget-object v2, p0, Ljan;->b:Ljava/lang/Integer;

    .line 2258
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2260
    :cond_1
    iget-object v1, p0, Ljan;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 2261
    const/4 v1, 0x3

    iget-object v2, p0, Ljan;->c:Ljava/lang/Integer;

    .line 2262
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2264
    :cond_2
    iget-object v1, p0, Ljan;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 2265
    const/4 v1, 0x4

    iget-object v2, p0, Ljan;->d:Ljava/lang/String;

    .line 2266
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2268
    :cond_3
    return v0
.end method
