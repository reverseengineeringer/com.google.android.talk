.class public final Lkhl;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkhl;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lkhl;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1240
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2245
    iput-object v0, p0, Lkhl;->a:Ljava/lang/String;

    .line 2246
    iput-object v0, p0, Lkhl;->b:Ljava/lang/Integer;

    .line 2247
    iput-object v0, p0, Lkhl;->eD:Llyd;

    .line 2248
    const/4 v0, -0x1

    iput v0, p0, Lkhl;->eE:I

    .line 1242
    return-void
.end method

.method public static d()[Lkhl;
    .locals 2

    .prologue
    .line 1221
    sget-object v0, Lkhl;->c:[Lkhl;

    if-nez v0, :cond_1

    .line 1222
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1224
    :try_start_0
    sget-object v0, Lkhl;->c:[Lkhl;

    if-nez v0, :cond_0

    .line 1225
    const/4 v0, 0x0

    new-array v0, v0, [Lkhl;

    sput-object v0, Lkhl;->c:[Lkhl;

    .line 1227
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1229
    :cond_1
    sget-object v0, Lkhl;->c:[Lkhl;

    return-object v0

    .line 1227
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2283
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2284
    sparse-switch v0, :sswitch_data_0

    .line 2288
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2289
    :sswitch_0
    return-object p0

    .line 2294
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkhl;->a:Ljava/lang/String;

    goto :goto_0

    .line 2298
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2299
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2302
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkhl;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 2284
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 2299
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1255
    iget-object v0, p0, Lkhl;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1256
    const/4 v0, 0x1

    iget-object v1, p0, Lkhl;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1258
    :cond_0
    iget-object v0, p0, Lkhl;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 1259
    const/4 v0, 0x2

    iget-object v1, p0, Lkhl;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1261
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1262
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1266
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1267
    iget-object v1, p0, Lkhl;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1268
    const/4 v1, 0x1

    iget-object v2, p0, Lkhl;->a:Ljava/lang/String;

    .line 1269
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1271
    :cond_0
    iget-object v1, p0, Lkhl;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1272
    const/4 v1, 0x2

    iget-object v2, p0, Lkhl;->b:Ljava/lang/Integer;

    .line 1273
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1275
    :cond_1
    return v0
.end method
