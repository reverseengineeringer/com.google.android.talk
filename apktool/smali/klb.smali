.class public final Lklb;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lklb;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lklb;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1210
    iput-object v0, p0, Lklb;->a:Ljava/lang/Integer;

    .line 1211
    iput-object v0, p0, Lklb;->b:Ljava/lang/Integer;

    .line 1212
    iput-object v0, p0, Lklb;->c:Ljava/lang/Boolean;

    .line 1213
    iput-object v0, p0, Lklb;->eD:Llyd;

    .line 1214
    const/4 v0, -0x1

    iput v0, p0, Lklb;->eE:I

    .line 207
    return-void
.end method

.method public static d()[Lklb;
    .locals 2

    .prologue
    .line 183
    sget-object v0, Lklb;->d:[Lklb;

    if-nez v0, :cond_1

    .line 184
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 186
    :try_start_0
    sget-object v0, Lklb;->d:[Lklb;

    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x0

    new-array v0, v0, [Lklb;

    sput-object v0, Lklb;->d:[Lklb;

    .line 189
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_1
    sget-object v0, Lklb;->d:[Lklb;

    return-object v0

    .line 189
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
    .line 2256
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2257
    sparse-switch v0, :sswitch_data_0

    .line 2261
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2262
    :sswitch_0
    return-object p0

    .line 2267
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lklb;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 2271
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lklb;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 2275
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lklb;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 2257
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lklb;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 222
    const/4 v0, 0x1

    iget-object v1, p0, Lklb;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 224
    :cond_0
    iget-object v0, p0, Lklb;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 225
    const/4 v0, 0x2

    iget-object v1, p0, Lklb;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 227
    :cond_1
    iget-object v0, p0, Lklb;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 228
    const/4 v0, 0x3

    iget-object v1, p0, Lklb;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 230
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 231
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 235
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 236
    iget-object v1, p0, Lklb;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 237
    const/4 v1, 0x1

    iget-object v2, p0, Lklb;->a:Ljava/lang/Integer;

    .line 238
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 240
    :cond_0
    iget-object v1, p0, Lklb;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 241
    const/4 v1, 0x2

    iget-object v2, p0, Lklb;->b:Ljava/lang/Integer;

    .line 242
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 244
    :cond_1
    iget-object v1, p0, Lklb;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 245
    const/4 v1, 0x3

    iget-object v2, p0, Lklb;->c:Ljava/lang/Boolean;

    .line 246
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 246
    add-int/2addr v0, v1

    .line 248
    :cond_2
    return v0
.end method
