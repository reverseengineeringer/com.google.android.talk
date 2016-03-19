.class public final Lkew;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkew;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llcf;

.field public b:Ljava/lang/Integer;

.field public c:Lkex;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32214
    invoke-direct {p0}, Llyb;-><init>()V

    .line 33219
    iput-object v0, p0, Lkew;->requestHeader:Lkdo;

    .line 33220
    iput-object v0, p0, Lkew;->a:Llcf;

    .line 33221
    iput-object v0, p0, Lkew;->b:Ljava/lang/Integer;

    .line 33222
    iput-object v0, p0, Lkew;->c:Lkex;

    .line 33223
    iput-object v0, p0, Lkew;->eD:Llyd;

    .line 33224
    const/4 v0, -0x1

    iput v0, p0, Lkew;->eE:I

    .line 32216
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 33273
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 33274
    sparse-switch v0, :sswitch_data_0

    .line 33278
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33279
    :sswitch_0
    return-object p0

    .line 33284
    :sswitch_1
    iget-object v0, p0, Lkew;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 33285
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkew;->requestHeader:Lkdo;

    .line 33287
    :cond_1
    iget-object v0, p0, Lkew;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 33291
    :sswitch_2
    iget-object v0, p0, Lkew;->a:Llcf;

    if-nez v0, :cond_2

    .line 33292
    new-instance v0, Llcf;

    invoke-direct {v0}, Llcf;-><init>()V

    iput-object v0, p0, Lkew;->a:Llcf;

    .line 33294
    :cond_2
    iget-object v0, p0, Lkew;->a:Llcf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 33298
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 33299
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 33303
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkew;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 33309
    :sswitch_4
    iget-object v0, p0, Lkew;->c:Lkex;

    if-nez v0, :cond_3

    .line 33310
    new-instance v0, Lkex;

    invoke-direct {v0}, Lkex;-><init>()V

    iput-object v0, p0, Lkew;->c:Lkex;

    .line 33312
    :cond_3
    iget-object v0, p0, Lkew;->c:Lkex;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 33274
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch

    .line 33299
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 32231
    iget-object v0, p0, Lkew;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 32232
    const/4 v0, 0x1

    iget-object v1, p0, Lkew;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 32234
    :cond_0
    iget-object v0, p0, Lkew;->a:Llcf;

    if-eqz v0, :cond_1

    .line 32235
    const/4 v0, 0x2

    iget-object v1, p0, Lkew;->a:Llcf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 32237
    :cond_1
    iget-object v0, p0, Lkew;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 32238
    const/4 v0, 0x3

    iget-object v1, p0, Lkew;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 32240
    :cond_2
    iget-object v0, p0, Lkew;->c:Lkex;

    if-eqz v0, :cond_3

    .line 32241
    const/4 v0, 0x4

    iget-object v1, p0, Lkew;->c:Lkex;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 32243
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 32244
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 32248
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 32249
    iget-object v1, p0, Lkew;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 32250
    const/4 v1, 0x1

    iget-object v2, p0, Lkew;->requestHeader:Lkdo;

    .line 32251
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32253
    :cond_0
    iget-object v1, p0, Lkew;->a:Llcf;

    if-eqz v1, :cond_1

    .line 32254
    const/4 v1, 0x2

    iget-object v2, p0, Lkew;->a:Llcf;

    .line 32255
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32257
    :cond_1
    iget-object v1, p0, Lkew;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 32258
    const/4 v1, 0x3

    iget-object v2, p0, Lkew;->b:Ljava/lang/Integer;

    .line 32259
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 32261
    :cond_2
    iget-object v1, p0, Lkew;->c:Lkex;

    if-eqz v1, :cond_3

    .line 32262
    const/4 v1, 0x4

    iget-object v2, p0, Lkew;->c:Lkex;

    .line 32263
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32265
    :cond_3
    return v0
.end method
