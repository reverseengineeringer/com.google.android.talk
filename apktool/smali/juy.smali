.class public final Ljuy;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljuy;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6217
    invoke-direct {p0}, Llyb;-><init>()V

    .line 7222
    iput-object v0, p0, Ljuy;->a:Ljava/lang/Integer;

    .line 7223
    iput-object v0, p0, Ljuy;->b:Ljava/lang/Integer;

    .line 7224
    iput-object v0, p0, Ljuy;->c:Ljava/lang/Long;

    .line 7225
    iput-object v0, p0, Ljuy;->d:Ljava/lang/Long;

    .line 7226
    iput-object v0, p0, Ljuy;->eD:Llyd;

    .line 7227
    const/4 v0, -0x1

    iput v0, p0, Ljuy;->eE:I

    .line 6219
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 7276
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 7277
    sparse-switch v0, :sswitch_data_0

    .line 7281
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7282
    :sswitch_0
    return-object p0

    .line 7287
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljuy;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 7291
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljuy;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 7295
    :sswitch_3
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljuy;->c:Ljava/lang/Long;

    goto :goto_0

    .line 7299
    :sswitch_4
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljuy;->d:Ljava/lang/Long;

    goto :goto_0

    .line 7277
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 6234
    iget-object v0, p0, Ljuy;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 6235
    const/4 v0, 0x1

    iget-object v1, p0, Ljuy;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 6237
    :cond_0
    iget-object v0, p0, Ljuy;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 6238
    const/4 v0, 0x2

    iget-object v1, p0, Ljuy;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 6240
    :cond_1
    iget-object v0, p0, Ljuy;->c:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 6241
    const/4 v0, 0x3

    iget-object v1, p0, Ljuy;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 6243
    :cond_2
    iget-object v0, p0, Ljuy;->d:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 6244
    const/4 v0, 0x4

    iget-object v1, p0, Ljuy;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 6246
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 6247
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 6251
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 6252
    iget-object v1, p0, Ljuy;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 6253
    const/4 v1, 0x1

    iget-object v2, p0, Ljuy;->a:Ljava/lang/Integer;

    .line 6254
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6256
    :cond_0
    iget-object v1, p0, Ljuy;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 6257
    const/4 v1, 0x2

    iget-object v2, p0, Ljuy;->b:Ljava/lang/Integer;

    .line 6258
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6260
    :cond_1
    iget-object v1, p0, Ljuy;->c:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 6261
    const/4 v1, 0x3

    iget-object v2, p0, Ljuy;->c:Ljava/lang/Long;

    .line 6262
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6264
    :cond_2
    iget-object v1, p0, Ljuy;->d:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 6265
    const/4 v1, 0x4

    iget-object v2, p0, Ljuy;->d:Ljava/lang/Long;

    .line 6266
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6268
    :cond_3
    return v0
.end method
