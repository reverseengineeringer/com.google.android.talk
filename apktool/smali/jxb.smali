.class public final Ljxb;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljxb;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Ljxb;


# instance fields
.field public a:Lkcr;

.field public b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36116
    invoke-direct {p0}, Llyb;-><init>()V

    .line 37121
    iput-object v0, p0, Ljxb;->a:Lkcr;

    .line 37122
    iput-object v0, p0, Ljxb;->b:Ljava/lang/Integer;

    .line 37123
    iput-object v0, p0, Ljxb;->eD:Llyd;

    .line 37124
    const/4 v0, -0x1

    iput v0, p0, Ljxb;->eE:I

    .line 36118
    return-void
.end method

.method public static d()[Ljxb;
    .locals 2

    .prologue
    .line 36097
    sget-object v0, Ljxb;->c:[Ljxb;

    if-nez v0, :cond_1

    .line 36098
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 36100
    :try_start_0
    sget-object v0, Ljxb;->c:[Ljxb;

    if-nez v0, :cond_0

    .line 36101
    const/4 v0, 0x0

    new-array v0, v0, [Ljxb;

    sput-object v0, Ljxb;->c:[Ljxb;

    .line 36103
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36105
    :cond_1
    sget-object v0, Ljxb;->c:[Ljxb;

    return-object v0

    .line 36103
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
    .line 37159
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 37160
    sparse-switch v0, :sswitch_data_0

    .line 37164
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37165
    :sswitch_0
    return-object p0

    .line 37170
    :sswitch_1
    iget-object v0, p0, Ljxb;->a:Lkcr;

    if-nez v0, :cond_1

    .line 37171
    new-instance v0, Lkcr;

    invoke-direct {v0}, Lkcr;-><init>()V

    iput-object v0, p0, Ljxb;->a:Lkcr;

    .line 37173
    :cond_1
    iget-object v0, p0, Ljxb;->a:Lkcr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 37177
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 37178
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 37182
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljxb;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 37160
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 37178
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 36131
    iget-object v0, p0, Ljxb;->a:Lkcr;

    if-eqz v0, :cond_0

    .line 36132
    const/4 v0, 0x1

    iget-object v1, p0, Ljxb;->a:Lkcr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 36134
    :cond_0
    iget-object v0, p0, Ljxb;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 36135
    const/4 v0, 0x2

    iget-object v1, p0, Ljxb;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 36137
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 36138
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 36142
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 36143
    iget-object v1, p0, Ljxb;->a:Lkcr;

    if-eqz v1, :cond_0

    .line 36144
    const/4 v1, 0x1

    iget-object v2, p0, Ljxb;->a:Lkcr;

    .line 36145
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36147
    :cond_0
    iget-object v1, p0, Ljxb;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 36148
    const/4 v1, 0x2

    iget-object v2, p0, Ljxb;->b:Ljava/lang/Integer;

    .line 36149
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 36151
    :cond_1
    return v0
.end method
