.class public final Lltv;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lltv;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lltv;


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 185
    invoke-direct {p0}, Llyb;-><init>()V

    .line 186
    iput v0, p0, Lltv;->a:I

    .line 187
    iput v0, p0, Lltv;->b:I

    .line 188
    iput v0, p0, Lltv;->c:I

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lltv;->eD:Llyd;

    .line 190
    const/4 v0, -0x1

    iput v0, p0, Lltv;->eE:I

    .line 191
    return-void
.end method

.method public static d()[Lltv;
    .locals 2

    .prologue
    .line 163
    sget-object v0, Lltv;->d:[Lltv;

    if-nez v0, :cond_1

    .line 164
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    :try_start_0
    sget-object v0, Lltv;->d:[Lltv;

    if-nez v0, :cond_0

    .line 167
    const/4 v0, 0x0

    new-array v0, v0, [Lltv;

    sput-object v0, Lltv;->d:[Lltv;

    .line 169
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :cond_1
    sget-object v0, Lltv;->d:[Lltv;

    return-object v0

    .line 169
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
    .line 1231
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1232
    sparse-switch v0, :sswitch_data_0

    .line 1236
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1237
    :sswitch_0
    return-object p0

    .line 1242
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1243
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1246
    :pswitch_0
    iput v0, p0, Lltv;->a:I

    goto :goto_0

    .line 1252
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1253
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1257
    :pswitch_1
    iput v0, p0, Lltv;->b:I

    goto :goto_0

    .line 1263
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1264
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 1269
    :pswitch_2
    iput v0, p0, Lltv;->c:I

    goto :goto_0

    .line 1232
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 1243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1253
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1264
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    .line 196
    iget v0, p0, Lltv;->a:I

    if-eq v0, v2, :cond_0

    .line 197
    const/4 v0, 0x1

    iget v1, p0, Lltv;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 199
    :cond_0
    iget v0, p0, Lltv;->b:I

    if-eq v0, v2, :cond_1

    .line 200
    const/4 v0, 0x2

    iget v1, p0, Lltv;->b:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 202
    :cond_1
    iget v0, p0, Lltv;->c:I

    if-eq v0, v2, :cond_2

    .line 203
    const/4 v0, 0x3

    iget v1, p0, Lltv;->c:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 205
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 206
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 210
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 211
    iget v1, p0, Lltv;->a:I

    if-eq v1, v3, :cond_0

    .line 212
    const/4 v1, 0x1

    iget v2, p0, Lltv;->a:I

    .line 213
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 215
    :cond_0
    iget v1, p0, Lltv;->b:I

    if-eq v1, v3, :cond_1

    .line 216
    const/4 v1, 0x2

    iget v2, p0, Lltv;->b:I

    .line 217
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 219
    :cond_1
    iget v1, p0, Lltv;->c:I

    if-eq v1, v3, :cond_2

    .line 220
    const/4 v1, 0x3

    iget v2, p0, Lltv;->c:I

    .line 221
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 223
    :cond_2
    return v0
.end method
