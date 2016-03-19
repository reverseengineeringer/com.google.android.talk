.class public final Lkba;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkba;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21225
    invoke-direct {p0}, Llyb;-><init>()V

    .line 22230
    iput-object v0, p0, Lkba;->a:Ljava/lang/Integer;

    .line 22231
    iput-object v0, p0, Lkba;->b:Ljava/lang/Long;

    .line 22232
    iput-object v0, p0, Lkba;->eD:Llyd;

    .line 22233
    const/4 v0, -0x1

    iput v0, p0, Lkba;->eE:I

    .line 21227
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 22268
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 22269
    sparse-switch v0, :sswitch_data_0

    .line 22273
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22274
    :sswitch_0
    return-object p0

    .line 22279
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 22280
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 22284
    :sswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkba;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 22290
    :sswitch_3
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkba;->b:Ljava/lang/Long;

    goto :goto_0

    .line 22269
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_3
    .end sparse-switch

    .line 22280
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x64 -> :sswitch_2
        0xc8 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 21240
    iget-object v0, p0, Lkba;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 21241
    const/4 v0, 0x1

    iget-object v1, p0, Lkba;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 21243
    :cond_0
    iget-object v0, p0, Lkba;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 21244
    const/4 v0, 0x2

    iget-object v1, p0, Lkba;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 21246
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 21247
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 21251
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 21252
    iget-object v1, p0, Lkba;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 21253
    const/4 v1, 0x1

    iget-object v2, p0, Lkba;->a:Ljava/lang/Integer;

    .line 21254
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21256
    :cond_0
    iget-object v1, p0, Lkba;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 21257
    const/4 v1, 0x2

    iget-object v2, p0, Lkba;->b:Ljava/lang/Long;

    .line 21258
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 21260
    :cond_1
    return v0
.end method
