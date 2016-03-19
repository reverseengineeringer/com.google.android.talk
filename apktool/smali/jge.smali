.class public final Ljge;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljge;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Ljge;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 178
    invoke-direct {p0}, Llyb;-><init>()V

    .line 179
    iput-object v0, p0, Ljge;->a:Ljava/lang/Integer;

    .line 180
    iput-object v0, p0, Ljge;->b:Ljava/lang/Integer;

    .line 181
    iput-object v0, p0, Ljge;->c:Ljava/lang/Integer;

    .line 182
    iput-object v0, p0, Ljge;->d:Ljava/lang/String;

    .line 183
    iput-object v0, p0, Ljge;->eD:Llyd;

    .line 184
    const/4 v0, -0x1

    iput v0, p0, Ljge;->eE:I

    .line 185
    return-void
.end method

.method public static d()[Ljge;
    .locals 2

    .prologue
    .line 153
    sget-object v0, Ljge;->e:[Ljge;

    if-nez v0, :cond_1

    .line 154
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_0
    sget-object v0, Ljge;->e:[Ljge;

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x0

    new-array v0, v0, [Ljge;

    sput-object v0, Ljge;->e:[Ljge;

    .line 159
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_1
    sget-object v0, Ljge;->e:[Ljge;

    return-object v0

    .line 159
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
    .line 1220
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1221
    sparse-switch v0, :sswitch_data_0

    .line 1225
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1226
    :sswitch_0
    return-object p0

    .line 1231
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljge;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1235
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljge;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 1239
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljge;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 1243
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljge;->d:Ljava/lang/String;

    goto :goto_0

    .line 1221
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 190
    const/4 v0, 0x1

    iget-object v1, p0, Ljge;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 191
    const/4 v0, 0x2

    iget-object v1, p0, Ljge;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 192
    const/4 v0, 0x3

    iget-object v1, p0, Ljge;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 193
    iget-object v0, p0, Ljge;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x4

    iget-object v1, p0, Ljge;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 196
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 197
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 201
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 202
    const/4 v1, 0x1

    iget-object v2, p0, Ljge;->a:Ljava/lang/Integer;

    .line 203
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 204
    const/4 v1, 0x2

    iget-object v2, p0, Ljge;->b:Ljava/lang/Integer;

    .line 205
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 206
    const/4 v1, 0x3

    iget-object v2, p0, Ljge;->c:Ljava/lang/Integer;

    .line 207
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 208
    iget-object v1, p0, Ljge;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 209
    const/4 v1, 0x4

    iget-object v2, p0, Ljge;->d:Ljava/lang/String;

    .line 210
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 212
    :cond_0
    return v0
.end method
