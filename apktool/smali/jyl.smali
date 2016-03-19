.class public final Ljyl;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljyl;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Ljyl;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Long;

.field public d:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31131
    invoke-direct {p0}, Llyb;-><init>()V

    .line 32136
    iput-object v1, p0, Ljyl;->a:Ljava/lang/Integer;

    .line 32137
    iput-object v1, p0, Ljyl;->b:Ljava/lang/Long;

    .line 32138
    iput-object v1, p0, Ljyl;->c:Ljava/lang/Long;

    .line 32139
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Ljyl;->d:[Ljava/lang/String;

    .line 32140
    iput-object v1, p0, Ljyl;->eD:Llyd;

    .line 32141
    const/4 v0, -0x1

    iput v0, p0, Ljyl;->eE:I

    .line 31133
    return-void
.end method

.method public static d()[Ljyl;
    .locals 2

    .prologue
    .line 31106
    sget-object v0, Ljyl;->e:[Ljyl;

    if-nez v0, :cond_1

    .line 31107
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 31109
    :try_start_0
    sget-object v0, Ljyl;->e:[Ljyl;

    if-nez v0, :cond_0

    .line 31110
    const/4 v0, 0x0

    new-array v0, v0, [Ljyl;

    sput-object v0, Ljyl;->e:[Ljyl;

    .line 31112
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31114
    :cond_1
    sget-object v0, Ljyl;->e:[Ljyl;

    return-object v0

    .line 31112
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
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 32205
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 32206
    sparse-switch v0, :sswitch_data_0

    .line 32210
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32211
    :sswitch_0
    return-object p0

    .line 32216
    :sswitch_1
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljyl;->b:Ljava/lang/Long;

    goto :goto_0

    .line 32220
    :sswitch_2
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljyl;->c:Ljava/lang/Long;

    goto :goto_0

    .line 32224
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 32225
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 32229
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljyl;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 32235
    :sswitch_4
    const/16 v0, 0x22

    .line 32236
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 32237
    iget-object v0, p0, Ljyl;->d:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 32238
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 32239
    if-eqz v0, :cond_1

    .line 32240
    iget-object v3, p0, Ljyl;->d:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32242
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 32243
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 32244
    invoke-virtual {p1}, Llxy;->a()I

    .line 32242
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 32237
    :cond_2
    iget-object v0, p0, Ljyl;->d:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 32247
    :cond_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 32248
    iput-object v2, p0, Ljyl;->d:[Ljava/lang/String;

    goto :goto_0

    .line 32206
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch

    .line 32225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 31148
    iget-object v0, p0, Ljyl;->b:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 31149
    const/4 v0, 0x1

    iget-object v1, p0, Ljyl;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 31151
    :cond_0
    iget-object v0, p0, Ljyl;->c:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 31152
    const/4 v0, 0x2

    iget-object v1, p0, Ljyl;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 31154
    :cond_1
    iget-object v0, p0, Ljyl;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 31155
    const/4 v0, 0x3

    iget-object v1, p0, Ljyl;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 31157
    :cond_2
    iget-object v0, p0, Ljyl;->d:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljyl;->d:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 31158
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljyl;->d:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 31159
    iget-object v1, p0, Ljyl;->d:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 31160
    if-eqz v1, :cond_3

    .line 31161
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 31158
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31165
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 31166
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 31170
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 31171
    iget-object v2, p0, Ljyl;->b:Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 31172
    const/4 v2, 0x1

    iget-object v3, p0, Ljyl;->b:Ljava/lang/Long;

    .line 31173
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 31175
    :cond_0
    iget-object v2, p0, Ljyl;->c:Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 31176
    const/4 v2, 0x2

    iget-object v3, p0, Ljyl;->c:Ljava/lang/Long;

    .line 31177
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 31179
    :cond_1
    iget-object v2, p0, Ljyl;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 31180
    const/4 v2, 0x3

    iget-object v3, p0, Ljyl;->a:Ljava/lang/Integer;

    .line 31181
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 31183
    :cond_2
    iget-object v2, p0, Ljyl;->d:[Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ljyl;->d:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v1

    move v3, v1

    .line 31186
    :goto_0
    iget-object v4, p0, Ljyl;->d:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_4

    .line 31187
    iget-object v4, p0, Ljyl;->d:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 31188
    if-eqz v4, :cond_3

    .line 31189
    add-int/lit8 v3, v3, 0x1

    .line 31191
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 31186
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31194
    :cond_4
    add-int/2addr v0, v2

    .line 31195
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 31197
    :cond_5
    return v0
.end method
