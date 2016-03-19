.class public final Ljka;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljka;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10324
    invoke-direct {p0}, Llyb;-><init>()V

    .line 11329
    iput-object v0, p0, Ljka;->a:Ljava/lang/Integer;

    .line 11330
    iput-object v0, p0, Ljka;->b:Ljava/lang/String;

    .line 11331
    iput-object v0, p0, Ljka;->eD:Llyd;

    .line 11332
    const/4 v0, -0x1

    iput v0, p0, Ljka;->eE:I

    .line 10326
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 11367
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 11368
    sparse-switch v0, :sswitch_data_0

    .line 11372
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11373
    :sswitch_0
    return-object p0

    .line 11378
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 11379
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 11384
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljka;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 11390
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljka;->b:Ljava/lang/String;

    goto :goto_0

    .line 11368
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 11379
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 10339
    iget-object v0, p0, Ljka;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 10340
    const/4 v0, 0x1

    iget-object v1, p0, Ljka;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 10342
    :cond_0
    iget-object v0, p0, Ljka;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 10343
    const/4 v0, 0x2

    iget-object v1, p0, Ljka;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 10345
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 10346
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 10350
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 10351
    iget-object v1, p0, Ljka;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 10352
    const/4 v1, 0x1

    iget-object v2, p0, Ljka;->a:Ljava/lang/Integer;

    .line 10353
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10355
    :cond_0
    iget-object v1, p0, Ljka;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 10356
    const/4 v1, 0x2

    iget-object v2, p0, Ljka;->b:Ljava/lang/String;

    .line 10357
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10359
    :cond_1
    return v0
.end method
