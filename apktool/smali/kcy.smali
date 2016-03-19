.class public final Lkcy;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkcy;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lkcy;


# instance fields
.field public a:Lkcr;

.field public b:Lkcv;

.field public c:Lkcw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18223
    invoke-direct {p0}, Llyb;-><init>()V

    .line 19228
    iput-object v0, p0, Lkcy;->a:Lkcr;

    .line 19229
    iput-object v0, p0, Lkcy;->b:Lkcv;

    .line 19230
    iput-object v0, p0, Lkcy;->c:Lkcw;

    .line 19231
    iput-object v0, p0, Lkcy;->eD:Llyd;

    .line 19232
    const/4 v0, -0x1

    iput v0, p0, Lkcy;->eE:I

    .line 18225
    return-void
.end method

.method public static d()[Lkcy;
    .locals 2

    .prologue
    .line 18201
    sget-object v0, Lkcy;->d:[Lkcy;

    if-nez v0, :cond_1

    .line 18202
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 18204
    :try_start_0
    sget-object v0, Lkcy;->d:[Lkcy;

    if-nez v0, :cond_0

    .line 18205
    const/4 v0, 0x0

    new-array v0, v0, [Lkcy;

    sput-object v0, Lkcy;->d:[Lkcy;

    .line 18207
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18209
    :cond_1
    sget-object v0, Lkcy;->d:[Lkcy;

    return-object v0

    .line 18207
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
    .line 19274
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 19275
    sparse-switch v0, :sswitch_data_0

    .line 19279
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19280
    :sswitch_0
    return-object p0

    .line 19285
    :sswitch_1
    iget-object v0, p0, Lkcy;->a:Lkcr;

    if-nez v0, :cond_1

    .line 19286
    new-instance v0, Lkcr;

    invoke-direct {v0}, Lkcr;-><init>()V

    iput-object v0, p0, Lkcy;->a:Lkcr;

    .line 19288
    :cond_1
    iget-object v0, p0, Lkcy;->a:Lkcr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 19292
    :sswitch_2
    iget-object v0, p0, Lkcy;->b:Lkcv;

    if-nez v0, :cond_2

    .line 19293
    new-instance v0, Lkcv;

    invoke-direct {v0}, Lkcv;-><init>()V

    iput-object v0, p0, Lkcy;->b:Lkcv;

    .line 19295
    :cond_2
    iget-object v0, p0, Lkcy;->b:Lkcv;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 19299
    :sswitch_3
    iget-object v0, p0, Lkcy;->c:Lkcw;

    if-nez v0, :cond_3

    .line 19300
    new-instance v0, Lkcw;

    invoke-direct {v0}, Lkcw;-><init>()V

    iput-object v0, p0, Lkcy;->c:Lkcw;

    .line 19302
    :cond_3
    iget-object v0, p0, Lkcy;->c:Lkcw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 19275
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
    .line 18239
    iget-object v0, p0, Lkcy;->a:Lkcr;

    if-eqz v0, :cond_0

    .line 18240
    const/4 v0, 0x1

    iget-object v1, p0, Lkcy;->a:Lkcr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 18242
    :cond_0
    iget-object v0, p0, Lkcy;->b:Lkcv;

    if-eqz v0, :cond_1

    .line 18243
    const/4 v0, 0x2

    iget-object v1, p0, Lkcy;->b:Lkcv;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 18245
    :cond_1
    iget-object v0, p0, Lkcy;->c:Lkcw;

    if-eqz v0, :cond_2

    .line 18246
    const/4 v0, 0x3

    iget-object v1, p0, Lkcy;->c:Lkcw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 18248
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 18249
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 18253
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 18254
    iget-object v1, p0, Lkcy;->a:Lkcr;

    if-eqz v1, :cond_0

    .line 18255
    const/4 v1, 0x1

    iget-object v2, p0, Lkcy;->a:Lkcr;

    .line 18256
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18258
    :cond_0
    iget-object v1, p0, Lkcy;->b:Lkcv;

    if-eqz v1, :cond_1

    .line 18259
    const/4 v1, 0x2

    iget-object v2, p0, Lkcy;->b:Lkcv;

    .line 18260
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18262
    :cond_1
    iget-object v1, p0, Lkcy;->c:Lkcw;

    if-eqz v1, :cond_2

    .line 18263
    const/4 v1, 0x3

    iget-object v2, p0, Lkcy;->c:Lkcw;

    .line 18264
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18266
    :cond_2
    return v0
.end method
