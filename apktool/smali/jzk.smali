.class public final Ljzk;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljzk;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Ljzk;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Double;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26253
    invoke-direct {p0}, Llyb;-><init>()V

    .line 27258
    iput-object v0, p0, Ljzk;->a:Ljava/lang/Integer;

    .line 27259
    iput-object v0, p0, Ljzk;->b:Ljava/lang/Double;

    .line 27260
    iput-object v0, p0, Ljzk;->c:Ljava/lang/String;

    .line 27261
    iput-object v0, p0, Ljzk;->eD:Llyd;

    .line 27262
    const/4 v0, -0x1

    iput v0, p0, Ljzk;->eE:I

    .line 26255
    return-void
.end method

.method public static d()[Ljzk;
    .locals 2

    .prologue
    .line 26231
    sget-object v0, Ljzk;->d:[Ljzk;

    if-nez v0, :cond_1

    .line 26232
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 26234
    :try_start_0
    sget-object v0, Ljzk;->d:[Ljzk;

    if-nez v0, :cond_0

    .line 26235
    const/4 v0, 0x0

    new-array v0, v0, [Ljzk;

    sput-object v0, Ljzk;->d:[Ljzk;

    .line 26237
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26239
    :cond_1
    sget-object v0, Ljzk;->d:[Ljzk;

    return-object v0

    .line 26237
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
    .locals 2

    .prologue
    .line 28304
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 28305
    sparse-switch v0, :sswitch_data_0

    .line 28309
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28310
    :sswitch_0
    return-object p0

    .line 28315
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 28316
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 28328
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljzk;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 28334
    :sswitch_2
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Ljzk;->b:Ljava/lang/Double;

    goto :goto_0

    .line 28338
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljzk;->c:Ljava/lang/String;

    goto :goto_0

    .line 28305
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x11 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    .line 28316
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 26269
    iget-object v0, p0, Ljzk;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 26270
    const/4 v0, 0x1

    iget-object v1, p0, Ljzk;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 26272
    :cond_0
    iget-object v0, p0, Ljzk;->b:Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 26273
    const/4 v0, 0x2

    iget-object v1, p0, Ljzk;->b:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 26275
    :cond_1
    iget-object v0, p0, Ljzk;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 26276
    const/4 v0, 0x3

    iget-object v1, p0, Ljzk;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 26278
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 26279
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 26283
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 26284
    iget-object v1, p0, Ljzk;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 26285
    const/4 v1, 0x1

    iget-object v2, p0, Ljzk;->a:Ljava/lang/Integer;

    .line 26286
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 26288
    :cond_0
    iget-object v1, p0, Ljzk;->b:Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 26289
    const/4 v1, 0x2

    iget-object v2, p0, Ljzk;->b:Ljava/lang/Double;

    .line 26290
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 27561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 26290
    add-int/2addr v0, v1

    .line 26292
    :cond_1
    iget-object v1, p0, Ljzk;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 26293
    const/4 v1, 0x3

    iget-object v2, p0, Ljzk;->c:Ljava/lang/String;

    .line 26294
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26296
    :cond_2
    return v0
.end method
