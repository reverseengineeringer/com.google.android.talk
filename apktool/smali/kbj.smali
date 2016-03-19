.class public final Lkbj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkbj;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lkbj;


# instance fields
.field public a:Lkbm;

.field public b:Lkbk;

.field public c:Lkbl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2139
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3144
    iput-object v0, p0, Lkbj;->a:Lkbm;

    .line 3145
    iput-object v0, p0, Lkbj;->b:Lkbk;

    .line 3146
    iput-object v0, p0, Lkbj;->c:Lkbl;

    .line 3147
    iput-object v0, p0, Lkbj;->eD:Llyd;

    .line 3148
    const/4 v0, -0x1

    iput v0, p0, Lkbj;->eE:I

    .line 2141
    return-void
.end method

.method public static d()[Lkbj;
    .locals 2

    .prologue
    .line 2117
    sget-object v0, Lkbj;->d:[Lkbj;

    if-nez v0, :cond_1

    .line 2118
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2120
    :try_start_0
    sget-object v0, Lkbj;->d:[Lkbj;

    if-nez v0, :cond_0

    .line 2121
    const/4 v0, 0x0

    new-array v0, v0, [Lkbj;

    sput-object v0, Lkbj;->d:[Lkbj;

    .line 2123
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2125
    :cond_1
    sget-object v0, Lkbj;->d:[Lkbj;

    return-object v0

    .line 2123
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
    .line 3190
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3191
    sparse-switch v0, :sswitch_data_0

    .line 3195
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3196
    :sswitch_0
    return-object p0

    .line 3201
    :sswitch_1
    iget-object v0, p0, Lkbj;->a:Lkbm;

    if-nez v0, :cond_1

    .line 3202
    new-instance v0, Lkbm;

    invoke-direct {v0}, Lkbm;-><init>()V

    iput-object v0, p0, Lkbj;->a:Lkbm;

    .line 3204
    :cond_1
    iget-object v0, p0, Lkbj;->a:Lkbm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3208
    :sswitch_2
    iget-object v0, p0, Lkbj;->b:Lkbk;

    if-nez v0, :cond_2

    .line 3209
    new-instance v0, Lkbk;

    invoke-direct {v0}, Lkbk;-><init>()V

    iput-object v0, p0, Lkbj;->b:Lkbk;

    .line 3211
    :cond_2
    iget-object v0, p0, Lkbj;->b:Lkbk;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3215
    :sswitch_3
    iget-object v0, p0, Lkbj;->c:Lkbl;

    if-nez v0, :cond_3

    .line 3216
    new-instance v0, Lkbl;

    invoke-direct {v0}, Lkbl;-><init>()V

    iput-object v0, p0, Lkbj;->c:Lkbl;

    .line 3218
    :cond_3
    iget-object v0, p0, Lkbj;->c:Lkbl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3191
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
    .line 2155
    iget-object v0, p0, Lkbj;->a:Lkbm;

    if-eqz v0, :cond_0

    .line 2156
    const/4 v0, 0x1

    iget-object v1, p0, Lkbj;->a:Lkbm;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2158
    :cond_0
    iget-object v0, p0, Lkbj;->b:Lkbk;

    if-eqz v0, :cond_1

    .line 2159
    const/4 v0, 0x2

    iget-object v1, p0, Lkbj;->b:Lkbk;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2161
    :cond_1
    iget-object v0, p0, Lkbj;->c:Lkbl;

    if-eqz v0, :cond_2

    .line 2162
    const/4 v0, 0x3

    iget-object v1, p0, Lkbj;->c:Lkbl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2164
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2165
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2169
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2170
    iget-object v1, p0, Lkbj;->a:Lkbm;

    if-eqz v1, :cond_0

    .line 2171
    const/4 v1, 0x1

    iget-object v2, p0, Lkbj;->a:Lkbm;

    .line 2172
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2174
    :cond_0
    iget-object v1, p0, Lkbj;->b:Lkbk;

    if-eqz v1, :cond_1

    .line 2175
    const/4 v1, 0x2

    iget-object v2, p0, Lkbj;->b:Lkbk;

    .line 2176
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2178
    :cond_1
    iget-object v1, p0, Lkbj;->c:Lkbl;

    if-eqz v1, :cond_2

    .line 2179
    const/4 v1, 0x3

    iget-object v2, p0, Lkbj;->c:Lkbl;

    .line 2180
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2182
    :cond_2
    return v0
.end method
