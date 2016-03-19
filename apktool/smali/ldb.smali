.class public final Lldb;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lldb;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Lldb;


# instance fields
.field public a:I

.field public b:Lldk;

.field public c:Lldc;

.field public d:Lldd;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Llyb;-><init>()V

    .line 162
    const/high16 v0, -0x80000000

    iput v0, p0, Lldb;->a:I

    .line 163
    iput-object v1, p0, Lldb;->b:Lldk;

    .line 164
    iput-object v1, p0, Lldb;->c:Lldc;

    .line 165
    iput-object v1, p0, Lldb;->d:Lldd;

    .line 166
    iput-object v1, p0, Lldb;->eD:Llyd;

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Lldb;->eE:I

    .line 168
    return-void
.end method

.method public static d()[Lldb;
    .locals 2

    .prologue
    .line 136
    sget-object v0, Lldb;->e:[Lldb;

    if-nez v0, :cond_1

    .line 137
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_0
    sget-object v0, Lldb;->e:[Lldb;

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x0

    new-array v0, v0, [Lldb;

    sput-object v0, Lldb;->e:[Lldb;

    .line 142
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_1
    sget-object v0, Lldb;->e:[Lldb;

    return-object v0

    .line 142
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
    .line 1215
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1216
    sparse-switch v0, :sswitch_data_0

    .line 1220
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1221
    :sswitch_0
    return-object p0

    .line 1226
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1227
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1236
    :pswitch_0
    iput v0, p0, Lldb;->a:I

    goto :goto_0

    .line 1242
    :sswitch_2
    iget-object v0, p0, Lldb;->b:Lldk;

    if-nez v0, :cond_1

    .line 1243
    new-instance v0, Lldk;

    invoke-direct {v0}, Lldk;-><init>()V

    iput-object v0, p0, Lldb;->b:Lldk;

    .line 1245
    :cond_1
    iget-object v0, p0, Lldb;->b:Lldk;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1249
    :sswitch_3
    iget-object v0, p0, Lldb;->c:Lldc;

    if-nez v0, :cond_2

    .line 1250
    new-instance v0, Lldc;

    invoke-direct {v0}, Lldc;-><init>()V

    iput-object v0, p0, Lldb;->c:Lldc;

    .line 1252
    :cond_2
    iget-object v0, p0, Lldb;->c:Lldc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1256
    :sswitch_4
    iget-object v0, p0, Lldb;->d:Lldd;

    if-nez v0, :cond_3

    .line 1257
    new-instance v0, Lldd;

    invoke-direct {v0}, Lldd;-><init>()V

    iput-object v0, p0, Lldb;->d:Lldd;

    .line 1259
    :cond_3
    iget-object v0, p0, Lldb;->d:Lldd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1216
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch

    .line 1227
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
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 173
    iget v0, p0, Lldb;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 174
    const/4 v0, 0x1

    iget v1, p0, Lldb;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 176
    :cond_0
    iget-object v0, p0, Lldb;->b:Lldk;

    if-eqz v0, :cond_1

    .line 177
    const/4 v0, 0x2

    iget-object v1, p0, Lldb;->b:Lldk;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 179
    :cond_1
    iget-object v0, p0, Lldb;->c:Lldc;

    if-eqz v0, :cond_2

    .line 180
    const/4 v0, 0x3

    iget-object v1, p0, Lldb;->c:Lldc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 182
    :cond_2
    iget-object v0, p0, Lldb;->d:Lldd;

    if-eqz v0, :cond_3

    .line 183
    const/4 v0, 0x4

    iget-object v1, p0, Lldb;->d:Lldd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 185
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 186
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 190
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 191
    iget v1, p0, Lldb;->a:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 192
    const/4 v1, 0x1

    iget v2, p0, Lldb;->a:I

    .line 193
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 195
    :cond_0
    iget-object v1, p0, Lldb;->b:Lldk;

    if-eqz v1, :cond_1

    .line 196
    const/4 v1, 0x2

    iget-object v2, p0, Lldb;->b:Lldk;

    .line 197
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 199
    :cond_1
    iget-object v1, p0, Lldb;->c:Lldc;

    if-eqz v1, :cond_2

    .line 200
    const/4 v1, 0x3

    iget-object v2, p0, Lldb;->c:Lldc;

    .line 201
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 203
    :cond_2
    iget-object v1, p0, Lldb;->d:Lldd;

    if-eqz v1, :cond_3

    .line 204
    const/4 v1, 0x4

    iget-object v2, p0, Lldb;->d:Lldd;

    .line 205
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 207
    :cond_3
    return v0
.end method
