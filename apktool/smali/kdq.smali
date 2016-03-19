.class public final Lkdq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkdq;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lkdq;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20254
    invoke-direct {p0}, Llyb;-><init>()V

    .line 21259
    iput-object v0, p0, Lkdq;->a:Ljava/lang/Integer;

    .line 21260
    iput-object v0, p0, Lkdq;->b:Ljava/lang/Boolean;

    .line 21261
    iput-object v0, p0, Lkdq;->eD:Llyd;

    .line 21262
    const/4 v0, -0x1

    iput v0, p0, Lkdq;->eE:I

    .line 20256
    return-void
.end method

.method public static d()[Lkdq;
    .locals 2

    .prologue
    .line 20235
    sget-object v0, Lkdq;->c:[Lkdq;

    if-nez v0, :cond_1

    .line 20236
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 20238
    :try_start_0
    sget-object v0, Lkdq;->c:[Lkdq;

    if-nez v0, :cond_0

    .line 20239
    const/4 v0, 0x0

    new-array v0, v0, [Lkdq;

    sput-object v0, Lkdq;->c:[Lkdq;

    .line 20241
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20243
    :cond_1
    sget-object v0, Lkdq;->c:[Lkdq;

    return-object v0

    .line 20241
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
    .line 22297
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 22298
    sparse-switch v0, :sswitch_data_0

    .line 22302
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22303
    :sswitch_0
    return-object p0

    .line 22308
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 22309
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 22317
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkdq;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 22323
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkdq;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 22298
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 22309
    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 2

    .prologue
    .line 20269
    iget-object v0, p0, Lkdq;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 20270
    const/4 v0, 0x1

    iget-object v1, p0, Lkdq;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 20272
    :cond_0
    iget-object v0, p0, Lkdq;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 20273
    const/4 v0, 0x2

    iget-object v1, p0, Lkdq;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 20275
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 20276
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 20280
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 20281
    iget-object v1, p0, Lkdq;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 20282
    const/4 v1, 0x1

    iget-object v2, p0, Lkdq;->a:Ljava/lang/Integer;

    .line 20283
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 20285
    :cond_0
    iget-object v1, p0, Lkdq;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 20286
    const/4 v1, 0x2

    iget-object v2, p0, Lkdq;->b:Ljava/lang/Boolean;

    .line 20287
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 20287
    add-int/2addr v0, v1

    .line 20289
    :cond_1
    return v0
.end method
