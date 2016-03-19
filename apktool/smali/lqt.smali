.class public final Llqt;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llqt;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Llqt;


# instance fields
.field public a:I

.field public b:I

.field public c:Llqu;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, -0x80000000

    .line 171
    invoke-direct {p0}, Llyb;-><init>()V

    .line 172
    iput v0, p0, Llqt;->a:I

    .line 173
    iput v0, p0, Llqt;->b:I

    .line 174
    iput-object v1, p0, Llqt;->c:Llqu;

    .line 175
    iput-object v1, p0, Llqt;->eD:Llyd;

    .line 176
    const/4 v0, -0x1

    iput v0, p0, Llqt;->eE:I

    .line 177
    return-void
.end method

.method public static d()[Llqt;
    .locals 2

    .prologue
    .line 149
    sget-object v0, Llqt;->d:[Llqt;

    if-nez v0, :cond_1

    .line 150
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_0
    sget-object v0, Llqt;->d:[Llqt;

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x0

    new-array v0, v0, [Llqt;

    sput-object v0, Llqt;->d:[Llqt;

    .line 155
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :cond_1
    sget-object v0, Llqt;->d:[Llqt;

    return-object v0

    .line 155
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
    .line 1217
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1218
    sparse-switch v0, :sswitch_data_0

    .line 1222
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1223
    :sswitch_0
    return-object p0

    .line 1228
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1229
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1234
    :pswitch_0
    iput v0, p0, Llqt;->a:I

    goto :goto_0

    .line 1240
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1241
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1245
    :pswitch_1
    iput v0, p0, Llqt;->b:I

    goto :goto_0

    .line 1251
    :sswitch_3
    iget-object v0, p0, Llqt;->c:Llqu;

    if-nez v0, :cond_1

    .line 1252
    new-instance v0, Llqu;

    invoke-direct {v0}, Llqu;-><init>()V

    iput-object v0, p0, Llqt;->c:Llqu;

    .line 1254
    :cond_1
    iget-object v0, p0, Llqt;->c:Llqu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1218
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    .line 1229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1241
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    .line 182
    iget v0, p0, Llqt;->a:I

    if-eq v0, v2, :cond_0

    .line 183
    const/4 v0, 0x1

    iget v1, p0, Llqt;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 185
    :cond_0
    iget v0, p0, Llqt;->b:I

    if-eq v0, v2, :cond_1

    .line 186
    const/4 v0, 0x2

    iget v1, p0, Llqt;->b:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 188
    :cond_1
    iget-object v0, p0, Llqt;->c:Llqu;

    if-eqz v0, :cond_2

    .line 189
    const/4 v0, 0x3

    iget-object v1, p0, Llqt;->c:Llqu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 191
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 192
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 196
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 197
    iget v1, p0, Llqt;->a:I

    if-eq v1, v3, :cond_0

    .line 198
    const/4 v1, 0x1

    iget v2, p0, Llqt;->a:I

    .line 199
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 201
    :cond_0
    iget v1, p0, Llqt;->b:I

    if-eq v1, v3, :cond_1

    .line 202
    const/4 v1, 0x2

    iget v2, p0, Llqt;->b:I

    .line 203
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 205
    :cond_1
    iget-object v1, p0, Llqt;->c:Llqu;

    if-eqz v1, :cond_2

    .line 206
    const/4 v1, 0x3

    iget-object v2, p0, Llqt;->c:Llqu;

    .line 207
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 209
    :cond_2
    return v0
.end method
