.class public final Lkaa;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkaa;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lkaa;


# instance fields
.field public a:Lkcr;

.field public b:Ljxw;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29195
    invoke-direct {p0}, Llyb;-><init>()V

    .line 30200
    iput-object v0, p0, Lkaa;->a:Lkcr;

    .line 30201
    iput-object v0, p0, Lkaa;->b:Ljxw;

    .line 30202
    iput-object v0, p0, Lkaa;->c:Ljava/lang/Integer;

    .line 30203
    iput-object v0, p0, Lkaa;->eD:Llyd;

    .line 30204
    const/4 v0, -0x1

    iput v0, p0, Lkaa;->eE:I

    .line 29197
    return-void
.end method

.method public static d()[Lkaa;
    .locals 2

    .prologue
    .line 29173
    sget-object v0, Lkaa;->d:[Lkaa;

    if-nez v0, :cond_1

    .line 29174
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 29176
    :try_start_0
    sget-object v0, Lkaa;->d:[Lkaa;

    if-nez v0, :cond_0

    .line 29177
    const/4 v0, 0x0

    new-array v0, v0, [Lkaa;

    sput-object v0, Lkaa;->d:[Lkaa;

    .line 29179
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29181
    :cond_1
    sget-object v0, Lkaa;->d:[Lkaa;

    return-object v0

    .line 29179
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
    .line 30246
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 30247
    sparse-switch v0, :sswitch_data_0

    .line 30251
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30252
    :sswitch_0
    return-object p0

    .line 30257
    :sswitch_1
    iget-object v0, p0, Lkaa;->a:Lkcr;

    if-nez v0, :cond_1

    .line 30258
    new-instance v0, Lkcr;

    invoke-direct {v0}, Lkcr;-><init>()V

    iput-object v0, p0, Lkaa;->a:Lkcr;

    .line 30260
    :cond_1
    iget-object v0, p0, Lkaa;->a:Lkcr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 30264
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkaa;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 30268
    :sswitch_3
    iget-object v0, p0, Lkaa;->b:Ljxw;

    if-nez v0, :cond_2

    .line 30269
    new-instance v0, Ljxw;

    invoke-direct {v0}, Ljxw;-><init>()V

    iput-object v0, p0, Lkaa;->b:Ljxw;

    .line 30271
    :cond_2
    iget-object v0, p0, Lkaa;->b:Ljxw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 30247
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 29211
    iget-object v0, p0, Lkaa;->a:Lkcr;

    if-eqz v0, :cond_0

    .line 29212
    const/4 v0, 0x1

    iget-object v1, p0, Lkaa;->a:Lkcr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 29214
    :cond_0
    iget-object v0, p0, Lkaa;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 29215
    const/4 v0, 0x2

    iget-object v1, p0, Lkaa;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 29217
    :cond_1
    iget-object v0, p0, Lkaa;->b:Ljxw;

    if-eqz v0, :cond_2

    .line 29218
    const/4 v0, 0x3

    iget-object v1, p0, Lkaa;->b:Ljxw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 29220
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 29221
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 29225
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 29226
    iget-object v1, p0, Lkaa;->a:Lkcr;

    if-eqz v1, :cond_0

    .line 29227
    const/4 v1, 0x1

    iget-object v2, p0, Lkaa;->a:Lkcr;

    .line 29228
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29230
    :cond_0
    iget-object v1, p0, Lkaa;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 29231
    const/4 v1, 0x2

    iget-object v2, p0, Lkaa;->c:Ljava/lang/Integer;

    .line 29232
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 29234
    :cond_1
    iget-object v1, p0, Lkaa;->b:Ljxw;

    if-eqz v1, :cond_2

    .line 29235
    const/4 v1, 0x3

    iget-object v2, p0, Lkaa;->b:Ljxw;

    .line 29236
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29238
    :cond_2
    return v0
.end method
