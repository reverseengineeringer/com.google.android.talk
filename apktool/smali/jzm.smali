.class public final Ljzm;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljzm;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkcr;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Integer;

.field public d:Lkfi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15243
    invoke-direct {p0}, Llyb;-><init>()V

    .line 16248
    iput-object v0, p0, Ljzm;->a:Lkcr;

    .line 16249
    iput-object v0, p0, Ljzm;->b:Ljava/lang/Long;

    .line 16250
    iput-object v0, p0, Ljzm;->c:Ljava/lang/Integer;

    .line 16251
    iput-object v0, p0, Ljzm;->d:Lkfi;

    .line 16252
    iput-object v0, p0, Ljzm;->eD:Llyd;

    .line 16253
    const/4 v0, -0x1

    iput v0, p0, Ljzm;->eE:I

    .line 15245
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 16302
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 16303
    sparse-switch v0, :sswitch_data_0

    .line 16307
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16308
    :sswitch_0
    return-object p0

    .line 16313
    :sswitch_1
    iget-object v0, p0, Ljzm;->a:Lkcr;

    if-nez v0, :cond_1

    .line 16314
    new-instance v0, Lkcr;

    invoke-direct {v0}, Lkcr;-><init>()V

    iput-object v0, p0, Ljzm;->a:Lkcr;

    .line 16316
    :cond_1
    iget-object v0, p0, Ljzm;->a:Lkcr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 16320
    :sswitch_2
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljzm;->b:Ljava/lang/Long;

    goto :goto_0

    .line 16324
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 16325
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 16329
    :sswitch_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljzm;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 16335
    :sswitch_5
    iget-object v0, p0, Ljzm;->d:Lkfi;

    if-nez v0, :cond_2

    .line 16336
    new-instance v0, Lkfi;

    invoke-direct {v0}, Lkfi;-><init>()V

    iput-object v0, p0, Ljzm;->d:Lkfi;

    .line 16338
    :cond_2
    iget-object v0, p0, Ljzm;->d:Lkfi;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 16303
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_5
    .end sparse-switch

    .line 16325
    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_4
        0x14 -> :sswitch_4
        0x1e -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 15260
    iget-object v0, p0, Ljzm;->a:Lkcr;

    if-eqz v0, :cond_0

    .line 15261
    const/4 v0, 0x1

    iget-object v1, p0, Ljzm;->a:Lkcr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 15263
    :cond_0
    iget-object v0, p0, Ljzm;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 15264
    const/4 v0, 0x2

    iget-object v1, p0, Ljzm;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 15266
    :cond_1
    iget-object v0, p0, Ljzm;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 15267
    const/4 v0, 0x3

    iget-object v1, p0, Ljzm;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 15269
    :cond_2
    iget-object v0, p0, Ljzm;->d:Lkfi;

    if-eqz v0, :cond_3

    .line 15270
    const/4 v0, 0x4

    iget-object v1, p0, Ljzm;->d:Lkfi;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 15272
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 15273
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 15277
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 15278
    iget-object v1, p0, Ljzm;->a:Lkcr;

    if-eqz v1, :cond_0

    .line 15279
    const/4 v1, 0x1

    iget-object v2, p0, Ljzm;->a:Lkcr;

    .line 15280
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15282
    :cond_0
    iget-object v1, p0, Ljzm;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 15283
    const/4 v1, 0x2

    iget-object v2, p0, Ljzm;->b:Ljava/lang/Long;

    .line 15284
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 15286
    :cond_1
    iget-object v1, p0, Ljzm;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 15287
    const/4 v1, 0x3

    iget-object v2, p0, Ljzm;->c:Ljava/lang/Integer;

    .line 15288
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15290
    :cond_2
    iget-object v1, p0, Ljzm;->d:Lkfi;

    if-eqz v1, :cond_3

    .line 15291
    const/4 v1, 0x4

    iget-object v2, p0, Ljzm;->d:Lkfi;

    .line 15292
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15294
    :cond_3
    return v0
.end method
