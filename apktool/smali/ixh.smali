.class public final Lixh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lixh;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9250
    invoke-direct {p0}, Llyb;-><init>()V

    .line 10255
    iput-object v0, p0, Lixh;->a:Ljava/lang/Long;

    .line 10256
    iput-object v0, p0, Lixh;->b:Ljava/lang/Long;

    .line 10257
    iput-object v0, p0, Lixh;->eD:Llyd;

    .line 10258
    const/4 v0, -0x1

    iput v0, p0, Lixh;->eE:I

    .line 9252
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 10293
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 10294
    sparse-switch v0, :sswitch_data_0

    .line 10298
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10299
    :sswitch_0
    return-object p0

    .line 10304
    :sswitch_1
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lixh;->a:Ljava/lang/Long;

    goto :goto_0

    .line 10308
    :sswitch_2
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lixh;->b:Ljava/lang/Long;

    goto :goto_0

    .line 10294
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 9265
    iget-object v0, p0, Lixh;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 9266
    const/4 v0, 0x1

    iget-object v1, p0, Lixh;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 9268
    :cond_0
    iget-object v0, p0, Lixh;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 9269
    const/4 v0, 0x2

    iget-object v1, p0, Lixh;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 9271
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 9272
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 9276
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 9277
    iget-object v1, p0, Lixh;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 9278
    const/4 v1, 0x1

    iget-object v2, p0, Lixh;->a:Ljava/lang/Long;

    .line 9279
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9281
    :cond_0
    iget-object v1, p0, Lixh;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 9282
    const/4 v1, 0x2

    iget-object v2, p0, Lixh;->b:Ljava/lang/Long;

    .line 9283
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9285
    :cond_1
    return v0
.end method
