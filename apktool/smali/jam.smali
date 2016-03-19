.class public final Ljam;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljam;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljbn;

.field public b:[Ljal;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7247
    invoke-direct {p0}, Llyb;-><init>()V

    .line 8252
    iput-object v1, p0, Ljam;->a:Ljbn;

    .line 8253
    invoke-static {}, Ljal;->d()[Ljal;

    move-result-object v0

    iput-object v0, p0, Ljam;->b:[Ljal;

    .line 8254
    iput-object v1, p0, Ljam;->eD:Llyd;

    .line 8255
    const/4 v0, -0x1

    iput v0, p0, Ljam;->eE:I

    .line 7249
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 8300
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 8301
    sparse-switch v0, :sswitch_data_0

    .line 8305
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8306
    :sswitch_0
    return-object p0

    .line 8311
    :sswitch_1
    iget-object v0, p0, Ljam;->a:Ljbn;

    if-nez v0, :cond_1

    .line 8312
    new-instance v0, Ljbn;

    invoke-direct {v0}, Ljbn;-><init>()V

    iput-object v0, p0, Ljam;->a:Ljbn;

    .line 8314
    :cond_1
    iget-object v0, p0, Ljam;->a:Ljbn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 8318
    :sswitch_2
    const/16 v0, 0x12

    .line 8319
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 8320
    iget-object v0, p0, Ljam;->b:[Ljal;

    if-nez v0, :cond_3

    move v0, v1

    .line 8321
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljal;

    .line 8323
    if-eqz v0, :cond_2

    .line 8324
    iget-object v3, p0, Ljam;->b:[Ljal;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8326
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 8327
    new-instance v3, Ljal;

    invoke-direct {v3}, Ljal;-><init>()V

    aput-object v3, v2, v0

    .line 8328
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 8329
    invoke-virtual {p1}, Llxy;->a()I

    .line 8326
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 8320
    :cond_3
    iget-object v0, p0, Ljam;->b:[Ljal;

    array-length v0, v0

    goto :goto_1

    .line 8332
    :cond_4
    new-instance v3, Ljal;

    invoke-direct {v3}, Ljal;-><init>()V

    aput-object v3, v2, v0

    .line 8333
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 8334
    iput-object v2, p0, Ljam;->b:[Ljal;

    goto :goto_0

    .line 8301
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
    .line 7262
    iget-object v0, p0, Ljam;->a:Ljbn;

    if-eqz v0, :cond_0

    .line 7263
    const/4 v0, 0x1

    iget-object v1, p0, Ljam;->a:Ljbn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 7265
    :cond_0
    iget-object v0, p0, Ljam;->b:[Ljal;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljam;->b:[Ljal;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 7266
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljam;->b:[Ljal;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 7267
    iget-object v1, p0, Ljam;->b:[Ljal;

    aget-object v1, v1, v0

    .line 7268
    if-eqz v1, :cond_1

    .line 7269
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 7266
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7273
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 7274
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 7278
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 7279
    iget-object v1, p0, Ljam;->a:Ljbn;

    if-eqz v1, :cond_0

    .line 7280
    const/4 v1, 0x1

    iget-object v2, p0, Ljam;->a:Ljbn;

    .line 7281
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7283
    :cond_0
    iget-object v1, p0, Ljam;->b:[Ljal;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljam;->b:[Ljal;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 7284
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljam;->b:[Ljal;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 7285
    iget-object v2, p0, Ljam;->b:[Ljal;

    aget-object v2, v2, v0

    .line 7286
    if-eqz v2, :cond_1

    .line 7287
    const/4 v3, 0x2

    .line 7288
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 7284
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 7292
    :cond_3
    return v0
.end method
