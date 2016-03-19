.class public final Liwa;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liwa;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Liwa;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Liwb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11276
    invoke-direct {p0}, Llyb;-><init>()V

    .line 12281
    iput-object v0, p0, Liwa;->a:Ljava/lang/Integer;

    .line 12282
    iput-object v0, p0, Liwa;->b:Liwb;

    .line 12283
    iput-object v0, p0, Liwa;->eD:Llyd;

    .line 12284
    const/4 v0, -0x1

    iput v0, p0, Liwa;->eE:I

    .line 11278
    return-void
.end method

.method public static d()[Liwa;
    .locals 2

    .prologue
    .line 11257
    sget-object v0, Liwa;->c:[Liwa;

    if-nez v0, :cond_1

    .line 11258
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 11260
    :try_start_0
    sget-object v0, Liwa;->c:[Liwa;

    if-nez v0, :cond_0

    .line 11261
    const/4 v0, 0x0

    new-array v0, v0, [Liwa;

    sput-object v0, Liwa;->c:[Liwa;

    .line 11263
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11265
    :cond_1
    sget-object v0, Liwa;->c:[Liwa;

    return-object v0

    .line 11263
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
    .line 12319
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 12320
    sparse-switch v0, :sswitch_data_0

    .line 12324
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12325
    :sswitch_0
    return-object p0

    .line 12330
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 12331
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 12336
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Liwa;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 12342
    :sswitch_2
    iget-object v0, p0, Liwa;->b:Liwb;

    if-nez v0, :cond_1

    .line 12343
    new-instance v0, Liwb;

    invoke-direct {v0}, Liwb;-><init>()V

    iput-object v0, p0, Liwa;->b:Liwb;

    .line 12345
    :cond_1
    iget-object v0, p0, Liwa;->b:Liwb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 12320
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 12331
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 11291
    iget-object v0, p0, Liwa;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 11292
    const/4 v0, 0x1

    iget-object v1, p0, Liwa;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 11294
    :cond_0
    iget-object v0, p0, Liwa;->b:Liwb;

    if-eqz v0, :cond_1

    .line 11295
    const/4 v0, 0x2

    iget-object v1, p0, Liwa;->b:Liwb;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 11297
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 11298
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 11302
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 11303
    iget-object v1, p0, Liwa;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 11304
    const/4 v1, 0x1

    iget-object v2, p0, Liwa;->a:Ljava/lang/Integer;

    .line 11305
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11307
    :cond_0
    iget-object v1, p0, Liwa;->b:Liwb;

    if-eqz v1, :cond_1

    .line 11308
    const/4 v1, 0x2

    iget-object v2, p0, Liwa;->b:Liwb;

    .line 11309
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11311
    :cond_1
    return v0
.end method
