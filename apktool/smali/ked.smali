.class public final Lked;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lked;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljxg;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37236
    invoke-direct {p0}, Llyb;-><init>()V

    .line 38241
    iput-object v1, p0, Lked;->responseHeader:Lkdp;

    .line 38242
    invoke-static {}, Ljxg;->d()[Ljxg;

    move-result-object v0

    iput-object v0, p0, Lked;->a:[Ljxg;

    .line 38243
    iput-object v1, p0, Lked;->eD:Llyd;

    .line 38244
    const/4 v0, -0x1

    iput v0, p0, Lked;->eE:I

    .line 37238
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 38289
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 38290
    sparse-switch v0, :sswitch_data_0

    .line 38294
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38295
    :sswitch_0
    return-object p0

    .line 38300
    :sswitch_1
    const/16 v0, 0xa

    .line 38301
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 38302
    iget-object v0, p0, Lked;->a:[Ljxg;

    if-nez v0, :cond_2

    move v0, v1

    .line 38303
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljxg;

    .line 38305
    if-eqz v0, :cond_1

    .line 38306
    iget-object v3, p0, Lked;->a:[Ljxg;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38308
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 38309
    new-instance v3, Ljxg;

    invoke-direct {v3}, Ljxg;-><init>()V

    aput-object v3, v2, v0

    .line 38310
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 38311
    invoke-virtual {p1}, Llxy;->a()I

    .line 38308
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 38302
    :cond_2
    iget-object v0, p0, Lked;->a:[Ljxg;

    array-length v0, v0

    goto :goto_1

    .line 38314
    :cond_3
    new-instance v3, Ljxg;

    invoke-direct {v3}, Ljxg;-><init>()V

    aput-object v3, v2, v0

    .line 38315
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 38316
    iput-object v2, p0, Lked;->a:[Ljxg;

    goto :goto_0

    .line 38320
    :sswitch_2
    iget-object v0, p0, Lked;->responseHeader:Lkdp;

    if-nez v0, :cond_4

    .line 38321
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lked;->responseHeader:Lkdp;

    .line 38323
    :cond_4
    iget-object v0, p0, Lked;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 38290
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 37251
    iget-object v0, p0, Lked;->a:[Ljxg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lked;->a:[Ljxg;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 37252
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lked;->a:[Ljxg;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 37253
    iget-object v1, p0, Lked;->a:[Ljxg;

    aget-object v1, v1, v0

    .line 37254
    if-eqz v1, :cond_0

    .line 37255
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 37252
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37259
    :cond_1
    iget-object v0, p0, Lked;->responseHeader:Lkdp;

    if-eqz v0, :cond_2

    .line 37260
    const/4 v0, 0x2

    iget-object v1, p0, Lked;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 37262
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 37263
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 37267
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 37268
    iget-object v0, p0, Lked;->a:[Ljxg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lked;->a:[Ljxg;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 37269
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lked;->a:[Ljxg;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 37270
    iget-object v2, p0, Lked;->a:[Ljxg;

    aget-object v2, v2, v0

    .line 37271
    if-eqz v2, :cond_0

    .line 37272
    const/4 v3, 0x1

    .line 37273
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 37269
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37277
    :cond_1
    iget-object v0, p0, Lked;->responseHeader:Lkdp;

    if-eqz v0, :cond_2

    .line 37278
    const/4 v0, 0x2

    iget-object v2, p0, Lked;->responseHeader:Lkdp;

    .line 37279
    invoke-static {v0, v2}, Llxz;->d(ILlyi;)I

    move-result v0

    add-int/2addr v1, v0

    .line 37281
    :cond_2
    return v1
.end method
