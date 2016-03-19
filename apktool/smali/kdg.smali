.class public final Lkdg;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkdg;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Integer;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17236
    invoke-direct {p0}, Llyb;-><init>()V

    .line 18241
    iput-object v0, p0, Lkdg;->responseHeader:Lkdp;

    .line 18242
    iput-object v0, p0, Lkdg;->a:Ljava/lang/Integer;

    .line 18243
    iput-object v0, p0, Lkdg;->b:Ljava/lang/String;

    .line 18244
    iput-object v0, p0, Lkdg;->c:Ljava/lang/String;

    .line 18245
    iput-object v0, p0, Lkdg;->d:Ljava/lang/String;

    .line 18246
    iput-object v0, p0, Lkdg;->e:Ljava/lang/Integer;

    .line 18247
    iput-object v0, p0, Lkdg;->eD:Llyd;

    .line 18248
    const/4 v0, -0x1

    iput v0, p0, Lkdg;->eE:I

    .line 17238
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 18311
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 18312
    sparse-switch v0, :sswitch_data_0

    .line 18316
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18317
    :sswitch_0
    return-object p0

    .line 18322
    :sswitch_1
    iget-object v0, p0, Lkdg;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 18323
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkdg;->responseHeader:Lkdp;

    .line 18325
    :cond_1
    iget-object v0, p0, Lkdg;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 18329
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 18330
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 18333
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkdg;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 18339
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkdg;->b:Ljava/lang/String;

    goto :goto_0

    .line 18343
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkdg;->c:Ljava/lang/String;

    goto :goto_0

    .line 18347
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkdg;->e:Ljava/lang/Integer;

    goto :goto_0

    .line 18351
    :sswitch_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkdg;->d:Ljava/lang/String;

    goto :goto_0

    .line 18312
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x2a -> :sswitch_4
        0x30 -> :sswitch_5
        0x3a -> :sswitch_6
    .end sparse-switch

    .line 18330
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 17255
    iget-object v0, p0, Lkdg;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 17256
    const/4 v0, 0x1

    iget-object v1, p0, Lkdg;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 17258
    :cond_0
    iget-object v0, p0, Lkdg;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 17259
    const/4 v0, 0x2

    iget-object v1, p0, Lkdg;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 17261
    :cond_1
    iget-object v0, p0, Lkdg;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 17262
    const/4 v0, 0x3

    iget-object v1, p0, Lkdg;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 17264
    :cond_2
    iget-object v0, p0, Lkdg;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 17265
    const/4 v0, 0x5

    iget-object v1, p0, Lkdg;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 17267
    :cond_3
    iget-object v0, p0, Lkdg;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 17268
    const/4 v0, 0x6

    iget-object v1, p0, Lkdg;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 17270
    :cond_4
    iget-object v0, p0, Lkdg;->d:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 17271
    const/4 v0, 0x7

    iget-object v1, p0, Lkdg;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 17273
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 17274
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 17278
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 17279
    iget-object v1, p0, Lkdg;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 17280
    const/4 v1, 0x1

    iget-object v2, p0, Lkdg;->responseHeader:Lkdp;

    .line 17281
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17283
    :cond_0
    iget-object v1, p0, Lkdg;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 17284
    const/4 v1, 0x2

    iget-object v2, p0, Lkdg;->a:Ljava/lang/Integer;

    .line 17285
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 17287
    :cond_1
    iget-object v1, p0, Lkdg;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 17288
    const/4 v1, 0x3

    iget-object v2, p0, Lkdg;->b:Ljava/lang/String;

    .line 17289
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17291
    :cond_2
    iget-object v1, p0, Lkdg;->c:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 17292
    const/4 v1, 0x5

    iget-object v2, p0, Lkdg;->c:Ljava/lang/String;

    .line 17293
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17295
    :cond_3
    iget-object v1, p0, Lkdg;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 17296
    const/4 v1, 0x6

    iget-object v2, p0, Lkdg;->e:Ljava/lang/Integer;

    .line 17297
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 17299
    :cond_4
    iget-object v1, p0, Lkdg;->d:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 17300
    const/4 v1, 0x7

    iget-object v2, p0, Lkdg;->d:Ljava/lang/String;

    .line 17301
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17303
    :cond_5
    return v0
.end method
