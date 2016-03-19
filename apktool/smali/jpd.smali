.class public final Ljpd;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljpd;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 240
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1245
    iput-object v0, p0, Ljpd;->a:Ljava/lang/Integer;

    .line 1246
    iput-object v0, p0, Ljpd;->b:Ljava/lang/Integer;

    .line 1247
    iput-object v0, p0, Ljpd;->eD:Llyd;

    .line 1248
    const/4 v0, -0x1

    iput v0, p0, Ljpd;->eE:I

    .line 242
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1283
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1284
    sparse-switch v0, :sswitch_data_0

    .line 1288
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1289
    :sswitch_0
    return-object p0

    .line 1294
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1295
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1300
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljpd;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1306
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1307
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1312
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljpd;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 1284
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 1295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1307
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Ljpd;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 256
    const/4 v0, 0x1

    iget-object v1, p0, Ljpd;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 258
    :cond_0
    iget-object v0, p0, Ljpd;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 259
    const/4 v0, 0x2

    iget-object v1, p0, Ljpd;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 261
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 262
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 266
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 267
    iget-object v1, p0, Ljpd;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 268
    const/4 v1, 0x1

    iget-object v2, p0, Ljpd;->a:Ljava/lang/Integer;

    .line 269
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 271
    :cond_0
    iget-object v1, p0, Ljpd;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 272
    const/4 v1, 0x2

    iget-object v2, p0, Ljpd;->b:Ljava/lang/Integer;

    .line 273
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 275
    :cond_1
    return v0
.end method
