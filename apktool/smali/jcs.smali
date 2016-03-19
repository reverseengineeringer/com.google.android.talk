.class public final Ljcs;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljcs;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Ljcs;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[Ljco;

.field public c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1136
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2141
    iput-object v1, p0, Ljcs;->a:Ljava/lang/Integer;

    .line 2142
    invoke-static {}, Ljco;->d()[Ljco;

    move-result-object v0

    iput-object v0, p0, Ljcs;->b:[Ljco;

    .line 2143
    iput-object v1, p0, Ljcs;->c:Ljava/lang/Boolean;

    .line 2144
    iput-object v1, p0, Ljcs;->eD:Llyd;

    .line 2145
    const/4 v0, -0x1

    iput v0, p0, Ljcs;->eE:I

    .line 1138
    return-void
.end method

.method public static d()[Ljcs;
    .locals 2

    .prologue
    .line 1114
    sget-object v0, Ljcs;->d:[Ljcs;

    if-nez v0, :cond_1

    .line 1115
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1117
    :try_start_0
    sget-object v0, Ljcs;->d:[Ljcs;

    if-nez v0, :cond_0

    .line 1118
    const/4 v0, 0x0

    new-array v0, v0, [Ljcs;

    sput-object v0, Ljcs;->d:[Ljcs;

    .line 1120
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1122
    :cond_1
    sget-object v0, Ljcs;->d:[Ljcs;

    return-object v0

    .line 1120
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

    .line 3193
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3194
    sparse-switch v0, :sswitch_data_0

    .line 3198
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3199
    :sswitch_0
    return-object p0

    .line 3204
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3205
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3213
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljcs;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 3219
    :sswitch_2
    const/16 v0, 0x12

    .line 3220
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3221
    iget-object v0, p0, Ljcs;->b:[Ljco;

    if-nez v0, :cond_2

    move v0, v1

    .line 3222
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljco;

    .line 3224
    if-eqz v0, :cond_1

    .line 3225
    iget-object v3, p0, Ljcs;->b:[Ljco;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3227
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 3228
    new-instance v3, Ljco;

    invoke-direct {v3}, Ljco;-><init>()V

    aput-object v3, v2, v0

    .line 3229
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 3230
    invoke-virtual {p1}, Llxy;->a()I

    .line 3227
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3221
    :cond_2
    iget-object v0, p0, Ljcs;->b:[Ljco;

    array-length v0, v0

    goto :goto_1

    .line 3233
    :cond_3
    new-instance v3, Ljco;

    invoke-direct {v3}, Ljco;-><init>()V

    aput-object v3, v2, v0

    .line 3234
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 3235
    iput-object v2, p0, Ljcs;->b:[Ljco;

    goto :goto_0

    .line 3239
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljcs;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 3194
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 3205
    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 3

    .prologue
    .line 1152
    const/4 v0, 0x1

    iget-object v1, p0, Ljcs;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1153
    iget-object v0, p0, Ljcs;->b:[Ljco;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljcs;->b:[Ljco;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1154
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljcs;->b:[Ljco;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1155
    iget-object v1, p0, Ljcs;->b:[Ljco;

    aget-object v1, v1, v0

    .line 1156
    if-eqz v1, :cond_0

    .line 1157
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 1154
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1161
    :cond_1
    iget-object v0, p0, Ljcs;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 1162
    const/4 v0, 0x3

    iget-object v1, p0, Ljcs;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 1164
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1165
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 1169
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1170
    const/4 v1, 0x1

    iget-object v2, p0, Ljcs;->a:Ljava/lang/Integer;

    .line 1171
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v1, v0

    .line 1172
    iget-object v0, p0, Ljcs;->b:[Ljco;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljcs;->b:[Ljco;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1173
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljcs;->b:[Ljco;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1174
    iget-object v2, p0, Ljcs;->b:[Ljco;

    aget-object v2, v2, v0

    .line 1175
    if-eqz v2, :cond_0

    .line 1176
    const/4 v3, 0x2

    .line 1177
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1173
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1181
    :cond_1
    iget-object v0, p0, Ljcs;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 1182
    const/4 v0, 0x3

    iget-object v2, p0, Ljcs;->c:Ljava/lang/Boolean;

    .line 1183
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v0}, Llxz;->f(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1183
    add-int/2addr v1, v0

    .line 1185
    :cond_2
    return v1
.end method
