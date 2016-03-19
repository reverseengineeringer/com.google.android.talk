.class public final Llpa;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llpa;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 229
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1234
    iput-object v0, p0, Llpa;->a:Ljava/lang/String;

    .line 1235
    iput-object v0, p0, Llpa;->b:Ljava/lang/String;

    .line 1236
    iput-object v0, p0, Llpa;->c:Ljava/lang/String;

    .line 1237
    iput-object v0, p0, Llpa;->eD:Llyd;

    .line 1238
    const/4 v0, -0x1

    iput v0, p0, Llpa;->eE:I

    .line 231
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1280
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1281
    sparse-switch v0, :sswitch_data_0

    .line 1285
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1286
    :sswitch_0
    return-object p0

    .line 1291
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llpa;->a:Ljava/lang/String;

    goto :goto_0

    .line 1295
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llpa;->b:Ljava/lang/String;

    goto :goto_0

    .line 1299
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llpa;->c:Ljava/lang/String;

    goto :goto_0

    .line 1281
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
    .line 245
    iget-object v0, p0, Llpa;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x1

    iget-object v1, p0, Llpa;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 248
    :cond_0
    iget-object v0, p0, Llpa;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 249
    const/4 v0, 0x2

    iget-object v1, p0, Llpa;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 251
    :cond_1
    iget-object v0, p0, Llpa;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 252
    const/4 v0, 0x3

    iget-object v1, p0, Llpa;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 254
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 255
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 259
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 260
    iget-object v1, p0, Llpa;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 261
    const/4 v1, 0x1

    iget-object v2, p0, Llpa;->a:Ljava/lang/String;

    .line 262
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 264
    :cond_0
    iget-object v1, p0, Llpa;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 265
    const/4 v1, 0x2

    iget-object v2, p0, Llpa;->b:Ljava/lang/String;

    .line 266
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 268
    :cond_1
    iget-object v1, p0, Llpa;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 269
    const/4 v1, 0x3

    iget-object v2, p0, Llpa;->c:Ljava/lang/String;

    .line 270
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 272
    :cond_2
    return v0
.end method
