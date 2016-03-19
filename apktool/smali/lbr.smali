.class public final Llbr;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llbr;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile g:[Llbr;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[Llby;

.field public c:Ljava/lang/Integer;

.field public d:Llbu;

.field public e:Llbt;

.field public f:Lmsu;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1064
    iput-object v1, p0, Llbr;->a:Ljava/lang/Integer;

    .line 1065
    invoke-static {}, Llby;->d()[Llby;

    move-result-object v0

    iput-object v0, p0, Llbr;->b:[Llby;

    .line 1066
    iput-object v1, p0, Llbr;->c:Ljava/lang/Integer;

    .line 1067
    iput-object v1, p0, Llbr;->d:Llbu;

    .line 1068
    iput-object v1, p0, Llbr;->e:Llbt;

    .line 1069
    iput-object v1, p0, Llbr;->f:Lmsu;

    .line 1070
    iput-object v1, p0, Llbr;->eD:Llyd;

    .line 1071
    const/4 v0, -0x1

    iput v0, p0, Llbr;->eE:I

    .line 61
    return-void
.end method

.method public static d()[Llbr;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Llbr;->g:[Llbr;

    if-nez v0, :cond_1

    .line 29
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Llbr;->g:[Llbr;

    if-nez v0, :cond_0

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [Llbr;

    sput-object v0, Llbr;->g:[Llbr;

    .line 34
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    sget-object v0, Llbr;->g:[Llbr;

    return-object v0

    .line 34
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

    .line 1144
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1145
    sparse-switch v0, :sswitch_data_0

    .line 1149
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1150
    :sswitch_0
    return-object p0

    .line 1155
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1156
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1165
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llbr;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1171
    :sswitch_2
    const/16 v0, 0x1a

    .line 1172
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1173
    iget-object v0, p0, Llbr;->b:[Llby;

    if-nez v0, :cond_2

    move v0, v1

    .line 1174
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llby;

    .line 1176
    if-eqz v0, :cond_1

    .line 1177
    iget-object v3, p0, Llbr;->b:[Llby;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1179
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1180
    new-instance v3, Llby;

    invoke-direct {v3}, Llby;-><init>()V

    aput-object v3, v2, v0

    .line 1181
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1182
    invoke-virtual {p1}, Llxy;->a()I

    .line 1179
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1173
    :cond_2
    iget-object v0, p0, Llbr;->b:[Llby;

    array-length v0, v0

    goto :goto_1

    .line 1185
    :cond_3
    new-instance v3, Llby;

    invoke-direct {v3}, Llby;-><init>()V

    aput-object v3, v2, v0

    .line 1186
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1187
    iput-object v2, p0, Llbr;->b:[Llby;

    goto :goto_0

    .line 1191
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llbr;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 1195
    :sswitch_4
    iget-object v0, p0, Llbr;->d:Llbu;

    if-nez v0, :cond_4

    .line 1196
    new-instance v0, Llbu;

    invoke-direct {v0}, Llbu;-><init>()V

    iput-object v0, p0, Llbr;->d:Llbu;

    .line 1198
    :cond_4
    iget-object v0, p0, Llbr;->d:Llbu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1202
    :sswitch_5
    iget-object v0, p0, Llbr;->e:Llbt;

    if-nez v0, :cond_5

    .line 1203
    new-instance v0, Llbt;

    invoke-direct {v0}, Llbt;-><init>()V

    iput-object v0, p0, Llbr;->e:Llbt;

    .line 1205
    :cond_5
    iget-object v0, p0, Llbr;->e:Llbt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1209
    :sswitch_6
    iget-object v0, p0, Llbr;->f:Lmsu;

    if-nez v0, :cond_6

    .line 1210
    new-instance v0, Lmsu;

    invoke-direct {v0}, Lmsu;-><init>()V

    iput-object v0, p0, Llbr;->f:Lmsu;

    .line 1212
    :cond_6
    iget-object v0, p0, Llbr;->f:Lmsu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1145
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x1a -> :sswitch_2
        0x20 -> :sswitch_3
        0x2a -> :sswitch_4
        0x32 -> :sswitch_5
        0x7a -> :sswitch_6
    .end sparse-switch

    .line 1156
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Llbr;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x1

    iget-object v1, p0, Llbr;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 81
    :cond_0
    iget-object v0, p0, Llbr;->b:[Llby;

    if-eqz v0, :cond_2

    iget-object v0, p0, Llbr;->b:[Llby;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 82
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llbr;->b:[Llby;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 83
    iget-object v1, p0, Llbr;->b:[Llby;

    aget-object v1, v1, v0

    .line 84
    if-eqz v1, :cond_1

    .line 85
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 82
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Llbr;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 90
    const/4 v0, 0x4

    iget-object v1, p0, Llbr;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 92
    :cond_3
    iget-object v0, p0, Llbr;->d:Llbu;

    if-eqz v0, :cond_4

    .line 93
    const/4 v0, 0x5

    iget-object v1, p0, Llbr;->d:Llbu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 95
    :cond_4
    iget-object v0, p0, Llbr;->e:Llbt;

    if-eqz v0, :cond_5

    .line 96
    const/4 v0, 0x6

    iget-object v1, p0, Llbr;->e:Llbt;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 98
    :cond_5
    iget-object v0, p0, Llbr;->f:Lmsu;

    if-eqz v0, :cond_6

    .line 99
    const/16 v0, 0xf

    iget-object v1, p0, Llbr;->f:Lmsu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 101
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 102
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 106
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 107
    iget-object v1, p0, Llbr;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 108
    const/4 v1, 0x1

    iget-object v2, p0, Llbr;->a:Ljava/lang/Integer;

    .line 109
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    :cond_0
    iget-object v1, p0, Llbr;->b:[Llby;

    if-eqz v1, :cond_3

    iget-object v1, p0, Llbr;->b:[Llby;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 112
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Llbr;->b:[Llby;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 113
    iget-object v2, p0, Llbr;->b:[Llby;

    aget-object v2, v2, v0

    .line 114
    if-eqz v2, :cond_1

    .line 115
    const/4 v3, 0x3

    .line 116
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 112
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 120
    :cond_3
    iget-object v1, p0, Llbr;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 121
    const/4 v1, 0x4

    iget-object v2, p0, Llbr;->c:Ljava/lang/Integer;

    .line 122
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 124
    :cond_4
    iget-object v1, p0, Llbr;->d:Llbu;

    if-eqz v1, :cond_5

    .line 125
    const/4 v1, 0x5

    iget-object v2, p0, Llbr;->d:Llbu;

    .line 126
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 128
    :cond_5
    iget-object v1, p0, Llbr;->e:Llbt;

    if-eqz v1, :cond_6

    .line 129
    const/4 v1, 0x6

    iget-object v2, p0, Llbr;->e:Llbt;

    .line 130
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 132
    :cond_6
    iget-object v1, p0, Llbr;->f:Lmsu;

    if-eqz v1, :cond_7

    .line 133
    const/16 v1, 0xf

    iget-object v2, p0, Llbr;->f:Lmsu;

    .line 134
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 136
    :cond_7
    return v0
.end method
