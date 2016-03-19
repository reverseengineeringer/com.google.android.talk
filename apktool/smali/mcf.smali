.class public final Lmcf;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmcf;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile f:[Lmcf;


# instance fields
.field public a:[F

.field public b:[F

.field public c:[F

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Llyb;-><init>()V

    .line 41
    sget-object v0, Llyo;->c:[F

    iput-object v0, p0, Lmcf;->a:[F

    .line 42
    sget-object v0, Llyo;->c:[F

    iput-object v0, p0, Lmcf;->b:[F

    .line 43
    sget-object v0, Llyo;->c:[F

    iput-object v0, p0, Lmcf;->c:[F

    .line 44
    iput-object v1, p0, Lmcf;->d:Ljava/lang/Integer;

    .line 45
    iput-object v1, p0, Lmcf;->e:Ljava/lang/Integer;

    .line 46
    iput-object v1, p0, Lmcf;->eD:Llyd;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lmcf;->eE:I

    .line 48
    return-void
.end method

.method public static d()[Lmcf;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lmcf;->f:[Lmcf;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lmcf;->f:[Lmcf;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lmcf;

    sput-object v0, Lmcf;->f:[Lmcf;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lmcf;->f:[Lmcf;

    return-object v0

    .line 18
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
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1111
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1112
    sparse-switch v0, :sswitch_data_0

    .line 1116
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1117
    :sswitch_0
    return-object p0

    .line 1122
    :sswitch_1
    const/16 v0, 0xd

    .line 1123
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1124
    iget-object v0, p0, Lmcf;->a:[F

    if-nez v0, :cond_2

    move v0, v1

    .line 1125
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [F

    .line 1126
    if-eqz v0, :cond_1

    .line 1127
    iget-object v3, p0, Lmcf;->a:[F

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1129
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1130
    invoke-virtual {p1}, Llxy;->c()F

    move-result v3

    aput v3, v2, v0

    .line 1131
    invoke-virtual {p1}, Llxy;->a()I

    .line 1129
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1124
    :cond_2
    iget-object v0, p0, Lmcf;->a:[F

    array-length v0, v0

    goto :goto_1

    .line 1134
    :cond_3
    invoke-virtual {p1}, Llxy;->c()F

    move-result v3

    aput v3, v2, v0

    .line 1135
    iput-object v2, p0, Lmcf;->a:[F

    goto :goto_0

    .line 1139
    :sswitch_2
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 1140
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v2

    .line 1141
    div-int/lit8 v3, v0, 0x4

    .line 1142
    iget-object v0, p0, Lmcf;->a:[F

    if-nez v0, :cond_5

    move v0, v1

    .line 1143
    :goto_3
    add-int/2addr v3, v0

    new-array v3, v3, [F

    .line 1144
    if-eqz v0, :cond_4

    .line 1145
    iget-object v4, p0, Lmcf;->a:[F

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1147
    :cond_4
    :goto_4
    array-length v4, v3

    if-ge v0, v4, :cond_6

    .line 1148
    invoke-virtual {p1}, Llxy;->c()F

    move-result v4

    aput v4, v3, v0

    .line 1147
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1142
    :cond_5
    iget-object v0, p0, Lmcf;->a:[F

    array-length v0, v0

    goto :goto_3

    .line 1150
    :cond_6
    iput-object v3, p0, Lmcf;->a:[F

    .line 1151
    invoke-virtual {p1, v2}, Llxy;->d(I)V

    goto :goto_0

    .line 1155
    :sswitch_3
    const/16 v0, 0x15

    .line 1156
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1157
    iget-object v0, p0, Lmcf;->b:[F

    if-nez v0, :cond_8

    move v0, v1

    .line 1158
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [F

    .line 1159
    if-eqz v0, :cond_7

    .line 1160
    iget-object v3, p0, Lmcf;->b:[F

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1162
    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 1163
    invoke-virtual {p1}, Llxy;->c()F

    move-result v3

    aput v3, v2, v0

    .line 1164
    invoke-virtual {p1}, Llxy;->a()I

    .line 1162
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1157
    :cond_8
    iget-object v0, p0, Lmcf;->b:[F

    array-length v0, v0

    goto :goto_5

    .line 1167
    :cond_9
    invoke-virtual {p1}, Llxy;->c()F

    move-result v3

    aput v3, v2, v0

    .line 1168
    iput-object v2, p0, Lmcf;->b:[F

    goto/16 :goto_0

    .line 1172
    :sswitch_4
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 1173
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v2

    .line 1174
    div-int/lit8 v3, v0, 0x4

    .line 1175
    iget-object v0, p0, Lmcf;->b:[F

    if-nez v0, :cond_b

    move v0, v1

    .line 1176
    :goto_7
    add-int/2addr v3, v0

    new-array v3, v3, [F

    .line 1177
    if-eqz v0, :cond_a

    .line 1178
    iget-object v4, p0, Lmcf;->b:[F

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1180
    :cond_a
    :goto_8
    array-length v4, v3

    if-ge v0, v4, :cond_c

    .line 1181
    invoke-virtual {p1}, Llxy;->c()F

    move-result v4

    aput v4, v3, v0

    .line 1180
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1175
    :cond_b
    iget-object v0, p0, Lmcf;->b:[F

    array-length v0, v0

    goto :goto_7

    .line 1183
    :cond_c
    iput-object v3, p0, Lmcf;->b:[F

    .line 1184
    invoke-virtual {p1, v2}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 1188
    :sswitch_5
    const/16 v0, 0x1d

    .line 1189
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1190
    iget-object v0, p0, Lmcf;->c:[F

    if-nez v0, :cond_e

    move v0, v1

    .line 1191
    :goto_9
    add-int/2addr v2, v0

    new-array v2, v2, [F

    .line 1192
    if-eqz v0, :cond_d

    .line 1193
    iget-object v3, p0, Lmcf;->c:[F

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1195
    :cond_d
    :goto_a
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_f

    .line 1196
    invoke-virtual {p1}, Llxy;->c()F

    move-result v3

    aput v3, v2, v0

    .line 1197
    invoke-virtual {p1}, Llxy;->a()I

    .line 1195
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1190
    :cond_e
    iget-object v0, p0, Lmcf;->c:[F

    array-length v0, v0

    goto :goto_9

    .line 1200
    :cond_f
    invoke-virtual {p1}, Llxy;->c()F

    move-result v3

    aput v3, v2, v0

    .line 1201
    iput-object v2, p0, Lmcf;->c:[F

    goto/16 :goto_0

    .line 1205
    :sswitch_6
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 1206
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v2

    .line 1207
    div-int/lit8 v3, v0, 0x4

    .line 1208
    iget-object v0, p0, Lmcf;->c:[F

    if-nez v0, :cond_11

    move v0, v1

    .line 1209
    :goto_b
    add-int/2addr v3, v0

    new-array v3, v3, [F

    .line 1210
    if-eqz v0, :cond_10

    .line 1211
    iget-object v4, p0, Lmcf;->c:[F

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1213
    :cond_10
    :goto_c
    array-length v4, v3

    if-ge v0, v4, :cond_12

    .line 1214
    invoke-virtual {p1}, Llxy;->c()F

    move-result v4

    aput v4, v3, v0

    .line 1213
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1208
    :cond_11
    iget-object v0, p0, Lmcf;->c:[F

    array-length v0, v0

    goto :goto_b

    .line 1216
    :cond_12
    iput-object v3, p0, Lmcf;->c:[F

    .line 1217
    invoke-virtual {p1, v2}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 1221
    :sswitch_7
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmcf;->d:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1225
    :sswitch_8
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmcf;->e:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1112
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x12 -> :sswitch_4
        0x15 -> :sswitch_3
        0x1a -> :sswitch_6
        0x1d -> :sswitch_5
        0x20 -> :sswitch_7
        0x28 -> :sswitch_8
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, Lmcf;->a:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmcf;->a:[F

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    .line 54
    :goto_0
    iget-object v2, p0, Lmcf;->a:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 55
    const/4 v2, 0x1

    iget-object v3, p0, Lmcf;->a:[F

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Llxz;->a(IF)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lmcf;->b:[F

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmcf;->b:[F

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 59
    :goto_1
    iget-object v2, p0, Lmcf;->b:[F

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 60
    const/4 v2, 0x2

    iget-object v3, p0, Lmcf;->b:[F

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Llxz;->a(IF)V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 63
    :cond_1
    iget-object v0, p0, Lmcf;->c:[F

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmcf;->c:[F

    array-length v0, v0

    if-lez v0, :cond_2

    .line 64
    :goto_2
    iget-object v0, p0, Lmcf;->c:[F

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 65
    const/4 v0, 0x3

    iget-object v2, p0, Lmcf;->c:[F

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Llxz;->a(IF)V

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 68
    :cond_2
    iget-object v0, p0, Lmcf;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 69
    const/4 v0, 0x4

    iget-object v1, p0, Lmcf;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 71
    :cond_3
    iget-object v0, p0, Lmcf;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 72
    const/4 v0, 0x5

    iget-object v1, p0, Lmcf;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 74
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 75
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 79
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 80
    iget-object v1, p0, Lmcf;->a:[F

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmcf;->a:[F

    array-length v1, v1

    if-lez v1, :cond_0

    .line 81
    iget-object v1, p0, Lmcf;->a:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 82
    add-int/2addr v0, v1

    .line 83
    iget-object v1, p0, Lmcf;->a:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 85
    :cond_0
    iget-object v1, p0, Lmcf;->b:[F

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmcf;->b:[F

    array-length v1, v1

    if-lez v1, :cond_1

    .line 86
    iget-object v1, p0, Lmcf;->b:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 87
    add-int/2addr v0, v1

    .line 88
    iget-object v1, p0, Lmcf;->b:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 90
    :cond_1
    iget-object v1, p0, Lmcf;->c:[F

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmcf;->c:[F

    array-length v1, v1

    if-lez v1, :cond_2

    .line 91
    iget-object v1, p0, Lmcf;->c:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 92
    add-int/2addr v0, v1

    .line 93
    iget-object v1, p0, Lmcf;->c:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 95
    :cond_2
    iget-object v1, p0, Lmcf;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 96
    const/4 v1, 0x4

    iget-object v2, p0, Lmcf;->d:Ljava/lang/Integer;

    .line 97
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    :cond_3
    iget-object v1, p0, Lmcf;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 100
    const/4 v1, 0x5

    iget-object v2, p0, Lmcf;->e:Ljava/lang/Integer;

    .line 101
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    :cond_4
    return v0
.end method
