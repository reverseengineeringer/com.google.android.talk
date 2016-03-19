.class public final Liyn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liyn;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljqp;

.field public apiHeader:Liyd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1211
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2216
    iput-object v0, p0, Liyn;->apiHeader:Liyd;

    .line 2217
    iput-object v0, p0, Liyn;->a:Ljqp;

    .line 2218
    iput-object v0, p0, Liyn;->eD:Llyd;

    .line 2219
    const/4 v0, -0x1

    iput v0, p0, Liyn;->eE:I

    .line 1213
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2254
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2255
    sparse-switch v0, :sswitch_data_0

    .line 2259
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2260
    :sswitch_0
    return-object p0

    .line 2265
    :sswitch_1
    iget-object v0, p0, Liyn;->apiHeader:Liyd;

    if-nez v0, :cond_1

    .line 2266
    new-instance v0, Liyd;

    invoke-direct {v0}, Liyd;-><init>()V

    iput-object v0, p0, Liyn;->apiHeader:Liyd;

    .line 2268
    :cond_1
    iget-object v0, p0, Liyn;->apiHeader:Liyd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2272
    :sswitch_2
    iget-object v0, p0, Liyn;->a:Ljqp;

    if-nez v0, :cond_2

    .line 2273
    new-instance v0, Ljqp;

    invoke-direct {v0}, Ljqp;-><init>()V

    iput-object v0, p0, Liyn;->a:Ljqp;

    .line 2275
    :cond_2
    iget-object v0, p0, Liyn;->a:Ljqp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2255
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1226
    iget-object v0, p0, Liyn;->apiHeader:Liyd;

    if-eqz v0, :cond_0

    .line 1227
    const/4 v0, 0x1

    iget-object v1, p0, Liyn;->apiHeader:Liyd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1229
    :cond_0
    iget-object v0, p0, Liyn;->a:Ljqp;

    if-eqz v0, :cond_1

    .line 1230
    const/4 v0, 0x2

    iget-object v1, p0, Liyn;->a:Ljqp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1232
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1233
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1237
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1238
    iget-object v1, p0, Liyn;->apiHeader:Liyd;

    if-eqz v1, :cond_0

    .line 1239
    const/4 v1, 0x1

    iget-object v2, p0, Liyn;->apiHeader:Liyd;

    .line 1240
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1242
    :cond_0
    iget-object v1, p0, Liyn;->a:Ljqp;

    if-eqz v1, :cond_1

    .line 1243
    const/4 v1, 0x2

    iget-object v2, p0, Liyn;->a:Ljqp;

    .line 1244
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1246
    :cond_1
    return v0
.end method
