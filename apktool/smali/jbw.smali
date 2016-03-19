.class public final Ljbw;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljbw;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljbn;

.field public b:[Ljbv;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5180
    invoke-direct {p0}, Llyb;-><init>()V

    .line 6185
    iput-object v1, p0, Ljbw;->a:Ljbn;

    .line 6186
    invoke-static {}, Ljbv;->d()[Ljbv;

    move-result-object v0

    iput-object v0, p0, Ljbw;->b:[Ljbv;

    .line 6187
    iput-object v1, p0, Ljbw;->eD:Llyd;

    .line 6188
    const/4 v0, -0x1

    iput v0, p0, Ljbw;->eE:I

    .line 5182
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 6233
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 6234
    sparse-switch v0, :sswitch_data_0

    .line 6238
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6239
    :sswitch_0
    return-object p0

    .line 6244
    :sswitch_1
    iget-object v0, p0, Ljbw;->a:Ljbn;

    if-nez v0, :cond_1

    .line 6245
    new-instance v0, Ljbn;

    invoke-direct {v0}, Ljbn;-><init>()V

    iput-object v0, p0, Ljbw;->a:Ljbn;

    .line 6247
    :cond_1
    iget-object v0, p0, Ljbw;->a:Ljbn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6251
    :sswitch_2
    const/16 v0, 0x12

    .line 6252
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 6253
    iget-object v0, p0, Ljbw;->b:[Ljbv;

    if-nez v0, :cond_3

    move v0, v1

    .line 6254
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljbv;

    .line 6256
    if-eqz v0, :cond_2

    .line 6257
    iget-object v3, p0, Ljbw;->b:[Ljbv;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6259
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 6260
    new-instance v3, Ljbv;

    invoke-direct {v3}, Ljbv;-><init>()V

    aput-object v3, v2, v0

    .line 6261
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 6262
    invoke-virtual {p1}, Llxy;->a()I

    .line 6259
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6253
    :cond_3
    iget-object v0, p0, Ljbw;->b:[Ljbv;

    array-length v0, v0

    goto :goto_1

    .line 6265
    :cond_4
    new-instance v3, Ljbv;

    invoke-direct {v3}, Ljbv;-><init>()V

    aput-object v3, v2, v0

    .line 6266
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 6267
    iput-object v2, p0, Ljbw;->b:[Ljbv;

    goto :goto_0

    .line 6234
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
    .line 5195
    iget-object v0, p0, Ljbw;->a:Ljbn;

    if-eqz v0, :cond_0

    .line 5196
    const/4 v0, 0x1

    iget-object v1, p0, Ljbw;->a:Ljbn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 5198
    :cond_0
    iget-object v0, p0, Ljbw;->b:[Ljbv;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljbw;->b:[Ljbv;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 5199
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljbw;->b:[Ljbv;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 5200
    iget-object v1, p0, Ljbw;->b:[Ljbv;

    aget-object v1, v1, v0

    .line 5201
    if-eqz v1, :cond_1

    .line 5202
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 5199
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5206
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 5207
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 5211
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 5212
    iget-object v1, p0, Ljbw;->a:Ljbn;

    if-eqz v1, :cond_0

    .line 5213
    const/4 v1, 0x1

    iget-object v2, p0, Ljbw;->a:Ljbn;

    .line 5214
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5216
    :cond_0
    iget-object v1, p0, Ljbw;->b:[Ljbv;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljbw;->b:[Ljbv;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 5217
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljbw;->b:[Ljbv;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 5218
    iget-object v2, p0, Ljbw;->b:[Ljbv;

    aget-object v2, v2, v0

    .line 5219
    if-eqz v2, :cond_1

    .line 5220
    const/4 v3, 0x2

    .line 5221
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 5217
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 5225
    :cond_3
    return v0
.end method
