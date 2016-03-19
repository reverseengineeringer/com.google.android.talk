.class public final Ljlr;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljlr;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 231
    invoke-direct {p0}, Llyb;-><init>()V

    .line 232
    iput v0, p0, Ljlr;->a:I

    .line 233
    iput v0, p0, Ljlr;->b:I

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Ljlr;->eD:Llyd;

    .line 235
    const/4 v0, -0x1

    iput v0, p0, Ljlr;->eE:I

    .line 236
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1269
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1270
    sparse-switch v0, :sswitch_data_0

    .line 1274
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1275
    :sswitch_0
    return-object p0

    .line 1280
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1281
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1286
    :pswitch_0
    iput v0, p0, Ljlr;->a:I

    goto :goto_0

    .line 1292
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1293
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1298
    :pswitch_1
    iput v0, p0, Ljlr;->b:I

    goto :goto_0

    .line 1270
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 1281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1293
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    .line 241
    iget v0, p0, Ljlr;->a:I

    if-eq v0, v2, :cond_0

    .line 242
    const/4 v0, 0x1

    iget v1, p0, Ljlr;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 244
    :cond_0
    iget v0, p0, Ljlr;->b:I

    if-eq v0, v2, :cond_1

    .line 245
    const/4 v0, 0x2

    iget v1, p0, Ljlr;->b:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 247
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 248
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 252
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 253
    iget v1, p0, Ljlr;->a:I

    if-eq v1, v3, :cond_0

    .line 254
    const/4 v1, 0x1

    iget v2, p0, Ljlr;->a:I

    .line 255
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 257
    :cond_0
    iget v1, p0, Ljlr;->b:I

    if-eq v1, v3, :cond_1

    .line 258
    const/4 v1, 0x2

    iget v2, p0, Ljlr;->b:I

    .line 259
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 261
    :cond_1
    return v0
.end method
