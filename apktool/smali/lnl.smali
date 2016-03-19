.class public final Llnl;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llnl;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Llnl;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Lloz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2127
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3132
    iput-object v0, p0, Llnl;->a:Ljava/lang/Integer;

    .line 3133
    iput-object v0, p0, Llnl;->b:Lloz;

    .line 3134
    iput-object v0, p0, Llnl;->eD:Llyd;

    .line 3135
    const/4 v0, -0x1

    iput v0, p0, Llnl;->eE:I

    .line 2129
    return-void
.end method

.method public static d()[Llnl;
    .locals 2

    .prologue
    .line 2108
    sget-object v0, Llnl;->c:[Llnl;

    if-nez v0, :cond_1

    .line 2109
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2111
    :try_start_0
    sget-object v0, Llnl;->c:[Llnl;

    if-nez v0, :cond_0

    .line 2112
    const/4 v0, 0x0

    new-array v0, v0, [Llnl;

    sput-object v0, Llnl;->c:[Llnl;

    .line 2114
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2116
    :cond_1
    sget-object v0, Llnl;->c:[Llnl;

    return-object v0

    .line 2114
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
    .line 3170
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3171
    sparse-switch v0, :sswitch_data_0

    .line 3175
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3176
    :sswitch_0
    return-object p0

    .line 3181
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3182
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3185
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llnl;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 3191
    :sswitch_2
    iget-object v0, p0, Llnl;->b:Lloz;

    if-nez v0, :cond_1

    .line 3192
    new-instance v0, Lloz;

    invoke-direct {v0}, Lloz;-><init>()V

    iput-object v0, p0, Llnl;->b:Lloz;

    .line 3194
    :cond_1
    iget-object v0, p0, Llnl;->b:Lloz;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3171
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 3182
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2142
    iget-object v0, p0, Llnl;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2143
    const/4 v0, 0x1

    iget-object v1, p0, Llnl;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2145
    :cond_0
    iget-object v0, p0, Llnl;->b:Lloz;

    if-eqz v0, :cond_1

    .line 2146
    const/4 v0, 0x2

    iget-object v1, p0, Llnl;->b:Lloz;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2148
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2149
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2153
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2154
    iget-object v1, p0, Llnl;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 2155
    const/4 v1, 0x1

    iget-object v2, p0, Llnl;->a:Ljava/lang/Integer;

    .line 2156
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2158
    :cond_0
    iget-object v1, p0, Llnl;->b:Lloz;

    if-eqz v1, :cond_1

    .line 2159
    const/4 v1, 0x2

    iget-object v2, p0, Llnl;->b:Lloz;

    .line 2160
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2162
    :cond_1
    return v0
.end method
