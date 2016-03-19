.class public final Llhg;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llhg;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile b:[Llhg;


# instance fields
.field public a:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1195
    iput-object v0, p0, Llhg;->a:Ljava/lang/Integer;

    .line 1196
    iput-object v0, p0, Llhg;->eD:Llyd;

    .line 1197
    const/4 v0, -0x1

    iput v0, p0, Llhg;->eE:I

    .line 192
    return-void
.end method

.method public static d()[Llhg;
    .locals 2

    .prologue
    .line 174
    sget-object v0, Llhg;->b:[Llhg;

    if-nez v0, :cond_1

    .line 175
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 177
    :try_start_0
    sget-object v0, Llhg;->b:[Llhg;

    if-nez v0, :cond_0

    .line 178
    const/4 v0, 0x0

    new-array v0, v0, [Llhg;

    sput-object v0, Llhg;->b:[Llhg;

    .line 180
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :cond_1
    sget-object v0, Llhg;->b:[Llhg;

    return-object v0

    .line 180
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
    .line 1225
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1226
    sparse-switch v0, :sswitch_data_0

    .line 1230
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1231
    :sswitch_0
    return-object p0

    .line 1236
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1237
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1257
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llhg;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1226
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    .line 1237
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
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Llhg;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x1

    iget-object v1, p0, Llhg;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 207
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 208
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 212
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 213
    iget-object v1, p0, Llhg;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 214
    const/4 v1, 0x1

    iget-object v2, p0, Llhg;->a:Ljava/lang/Integer;

    .line 215
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 217
    :cond_0
    return v0
.end method
