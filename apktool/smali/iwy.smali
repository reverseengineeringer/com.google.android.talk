.class public final Liwy;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liwy;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Liwy;


# instance fields
.field public a:Liwx;

.field public b:Liwx;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10137
    invoke-direct {p0}, Llyb;-><init>()V

    .line 11142
    iput-object v0, p0, Liwy;->a:Liwx;

    .line 11143
    iput-object v0, p0, Liwy;->b:Liwx;

    .line 11144
    iput-object v0, p0, Liwy;->eD:Llyd;

    .line 11145
    const/4 v0, -0x1

    iput v0, p0, Liwy;->eE:I

    .line 10139
    return-void
.end method

.method public static d()[Liwy;
    .locals 2

    .prologue
    .line 10118
    sget-object v0, Liwy;->c:[Liwy;

    if-nez v0, :cond_1

    .line 10119
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 10121
    :try_start_0
    sget-object v0, Liwy;->c:[Liwy;

    if-nez v0, :cond_0

    .line 10122
    const/4 v0, 0x0

    new-array v0, v0, [Liwy;

    sput-object v0, Liwy;->c:[Liwy;

    .line 10124
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10126
    :cond_1
    sget-object v0, Liwy;->c:[Liwy;

    return-object v0

    .line 10124
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
    .line 11180
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 11181
    sparse-switch v0, :sswitch_data_0

    .line 11185
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11186
    :sswitch_0
    return-object p0

    .line 11191
    :sswitch_1
    iget-object v0, p0, Liwy;->a:Liwx;

    if-nez v0, :cond_1

    .line 11192
    new-instance v0, Liwx;

    invoke-direct {v0}, Liwx;-><init>()V

    iput-object v0, p0, Liwy;->a:Liwx;

    .line 11194
    :cond_1
    iget-object v0, p0, Liwy;->a:Liwx;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 11198
    :sswitch_2
    iget-object v0, p0, Liwy;->b:Liwx;

    if-nez v0, :cond_2

    .line 11199
    new-instance v0, Liwx;

    invoke-direct {v0}, Liwx;-><init>()V

    iput-object v0, p0, Liwy;->b:Liwx;

    .line 11201
    :cond_2
    iget-object v0, p0, Liwy;->b:Liwx;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 11181
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 10152
    iget-object v0, p0, Liwy;->a:Liwx;

    if-eqz v0, :cond_0

    .line 10153
    const/4 v0, 0x1

    iget-object v1, p0, Liwy;->a:Liwx;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 10155
    :cond_0
    iget-object v0, p0, Liwy;->b:Liwx;

    if-eqz v0, :cond_1

    .line 10156
    const/4 v0, 0x2

    iget-object v1, p0, Liwy;->b:Liwx;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 10158
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 10159
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 10163
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 10164
    iget-object v1, p0, Liwy;->a:Liwx;

    if-eqz v1, :cond_0

    .line 10165
    const/4 v1, 0x1

    iget-object v2, p0, Liwy;->a:Liwx;

    .line 10166
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10168
    :cond_0
    iget-object v1, p0, Liwy;->b:Liwx;

    if-eqz v1, :cond_1

    .line 10169
    const/4 v1, 0x2

    iget-object v2, p0, Liwy;->b:Liwx;

    .line 10170
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10172
    :cond_1
    return v0
.end method
