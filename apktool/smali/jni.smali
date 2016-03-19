.class public final Ljni;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljni;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1232
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1233
    const/high16 v0, -0x80000000

    iput v0, p0, Ljni;->a:I

    .line 1234
    const/4 v0, 0x0

    iput-object v0, p0, Ljni;->eD:Llyd;

    .line 1235
    const/4 v0, -0x1

    iput v0, p0, Ljni;->eE:I

    .line 1236
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2262
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2263
    sparse-switch v0, :sswitch_data_0

    .line 2267
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2268
    :sswitch_0
    return-object p0

    .line 2273
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2274
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2276
    :pswitch_0
    iput v0, p0, Ljni;->a:I

    goto :goto_0

    .line 2263
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    .line 2274
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1241
    iget v0, p0, Ljni;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 1242
    const/4 v0, 0x1

    iget v1, p0, Ljni;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1244
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1245
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1249
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1250
    iget v1, p0, Ljni;->a:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 1251
    const/4 v1, 0x1

    iget v2, p0, Ljni;->a:I

    .line 1252
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1254
    :cond_0
    return v0
.end method
