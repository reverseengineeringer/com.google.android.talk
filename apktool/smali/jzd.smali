.class public final Ljzd;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljzd;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkcr;

.field public b:Ljxw;

.field public c:Ljzc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10317
    invoke-direct {p0}, Llyb;-><init>()V

    .line 11322
    iput-object v0, p0, Ljzd;->a:Lkcr;

    .line 11323
    iput-object v0, p0, Ljzd;->b:Ljxw;

    .line 11324
    iput-object v0, p0, Ljzd;->c:Ljzc;

    .line 11325
    iput-object v0, p0, Ljzd;->eD:Llyd;

    .line 11326
    const/4 v0, -0x1

    iput v0, p0, Ljzd;->eE:I

    .line 10319
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 11368
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 11369
    sparse-switch v0, :sswitch_data_0

    .line 11373
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11374
    :sswitch_0
    return-object p0

    .line 11379
    :sswitch_1
    iget-object v0, p0, Ljzd;->a:Lkcr;

    if-nez v0, :cond_1

    .line 11380
    new-instance v0, Lkcr;

    invoke-direct {v0}, Lkcr;-><init>()V

    iput-object v0, p0, Ljzd;->a:Lkcr;

    .line 11382
    :cond_1
    iget-object v0, p0, Ljzd;->a:Lkcr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 11386
    :sswitch_2
    iget-object v0, p0, Ljzd;->b:Ljxw;

    if-nez v0, :cond_2

    .line 11387
    new-instance v0, Ljxw;

    invoke-direct {v0}, Ljxw;-><init>()V

    iput-object v0, p0, Ljzd;->b:Ljxw;

    .line 11389
    :cond_2
    iget-object v0, p0, Ljzd;->b:Ljxw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 11393
    :sswitch_3
    iget-object v0, p0, Ljzd;->c:Ljzc;

    if-nez v0, :cond_3

    .line 11394
    new-instance v0, Ljzc;

    invoke-direct {v0}, Ljzc;-><init>()V

    iput-object v0, p0, Ljzd;->c:Ljzc;

    .line 11396
    :cond_3
    iget-object v0, p0, Ljzd;->c:Ljzc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 11369
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 10333
    iget-object v0, p0, Ljzd;->a:Lkcr;

    if-eqz v0, :cond_0

    .line 10334
    const/4 v0, 0x1

    iget-object v1, p0, Ljzd;->a:Lkcr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 10336
    :cond_0
    iget-object v0, p0, Ljzd;->b:Ljxw;

    if-eqz v0, :cond_1

    .line 10337
    const/4 v0, 0x2

    iget-object v1, p0, Ljzd;->b:Ljxw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 10339
    :cond_1
    iget-object v0, p0, Ljzd;->c:Ljzc;

    if-eqz v0, :cond_2

    .line 10340
    const/4 v0, 0x3

    iget-object v1, p0, Ljzd;->c:Ljzc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 10342
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 10343
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 10347
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 10348
    iget-object v1, p0, Ljzd;->a:Lkcr;

    if-eqz v1, :cond_0

    .line 10349
    const/4 v1, 0x1

    iget-object v2, p0, Ljzd;->a:Lkcr;

    .line 10350
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10352
    :cond_0
    iget-object v1, p0, Ljzd;->b:Ljxw;

    if-eqz v1, :cond_1

    .line 10353
    const/4 v1, 0x2

    iget-object v2, p0, Ljzd;->b:Ljxw;

    .line 10354
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10356
    :cond_1
    iget-object v1, p0, Ljzd;->c:Ljzc;

    if-eqz v1, :cond_2

    .line 10357
    const/4 v1, 0x3

    iget-object v2, p0, Ljzd;->c:Ljzc;

    .line 10358
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10360
    :cond_2
    return v0
.end method
