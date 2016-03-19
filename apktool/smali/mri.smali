.class public final Lmri;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmri;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile f:[Lmri;


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

    .line 44
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1049
    sget-object v0, Llyo;->c:[F

    iput-object v0, p0, Lmri;->a:[F

    .line 1050
    sget-object v0, Llyo;->c:[F

    iput-object v0, p0, Lmri;->b:[F

    .line 1051
    sget-object v0, Llyo;->c:[F

    iput-object v0, p0, Lmri;->c:[F

    .line 1052
    iput-object v1, p0, Lmri;->d:Ljava/lang/Integer;

    .line 1053
    iput-object v1, p0, Lmri;->e:Ljava/lang/Integer;

    .line 1054
    iput-object v1, p0, Lmri;->eD:Llyd;

    .line 1055
    const/4 v0, -0x1

    iput v0, p0, Lmri;->eE:I

    .line 46
    return-void
.end method

.method public static d()[Lmri;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lmri;->f:[Lmri;

    if-nez v0, :cond_1

    .line 17
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lmri;->f:[Lmri;

    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x0

    new-array v0, v0, [Lmri;

    sput-object v0, Lmri;->f:[Lmri;

    .line 22
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_1
    sget-object v0, Lmri;->f:[Lmri;

    return-object v0

    .line 22
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

    .line 1120
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1121
    sparse-switch v0, :sswitch_data_0

    .line 1125
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1126
    :sswitch_0
    return-object p0

    .line 1131
    :sswitch_1
    const/16 v0, 0xd

    .line 1132
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1133
    iget-object v0, p0, Lmri;->a:[F

    if-nez v0, :cond_2

    move v0, v1

    .line 1134
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [F

    .line 1135
    if-eqz v0, :cond_1

    .line 1136
    iget-object v3, p0, Lmri;->a:[F

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1138
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1139
    invoke-virtual {p1}, Llxy;->c()F

    move-result v3

    aput v3, v2, v0

    .line 1140
    invoke-virtual {p1}, Llxy;->a()I

    .line 1138
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1133
    :cond_2
    iget-object v0, p0, Lmri;->a:[F

    array-length v0, v0

    goto :goto_1

    .line 1143
    :cond_3
    invoke-virtual {p1}, Llxy;->c()F

    move-result v3

    aput v3, v2, v0

    .line 1144
    iput-object v2, p0, Lmri;->a:[F

    goto :goto_0

    .line 1148
    :sswitch_2
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 1149
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v2

    .line 1150
    div-int/lit8 v3, v0, 0x4

    .line 1151
    iget-object v0, p0, Lmri;->a:[F

    if-nez v0, :cond_5

    move v0, v1

    .line 1152
    :goto_3
    add-int/2addr v3, v0

    new-array v3, v3, [F

    .line 1153
    if-eqz v0, :cond_4

    .line 1154
    iget-object v4, p0, Lmri;->a:[F

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1156
    :cond_4
    :goto_4
    array-length v4, v3

    if-ge v0, v4, :cond_6

    .line 1157
    invoke-virtual {p1}, Llxy;->c()F

    move-result v4

    aput v4, v3, v0

    .line 1156
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1151
    :cond_5
    iget-object v0, p0, Lmri;->a:[F

    array-length v0, v0

    goto :goto_3

    .line 1159
    :cond_6
    iput-object v3, p0, Lmri;->a:[F

    .line 1160
    invoke-virtual {p1, v2}, Llxy;->d(I)V

    goto :goto_0

    .line 1164
    :sswitch_3
    const/16 v0, 0x15

    .line 1165
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1166
    iget-object v0, p0, Lmri;->b:[F

    if-nez v0, :cond_8

    move v0, v1

    .line 1167
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [F

    .line 1168
    if-eqz v0, :cond_7

    .line 1169
    iget-object v3, p0, Lmri;->b:[F

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1171
    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 1172
    invoke-virtual {p1}, Llxy;->c()F

    move-result v3

    aput v3, v2, v0

    .line 1173
    invoke-virtual {p1}, Llxy;->a()I

    .line 1171
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1166
    :cond_8
    iget-object v0, p0, Lmri;->b:[F

    array-length v0, v0

    goto :goto_5

    .line 1176
    :cond_9
    invoke-virtual {p1}, Llxy;->c()F

    move-result v3

    aput v3, v2, v0

    .line 1177
    iput-object v2, p0, Lmri;->b:[F

    goto/16 :goto_0

    .line 1181
    :sswitch_4
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 1182
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v2

    .line 1183
    div-int/lit8 v3, v0, 0x4

    .line 1184
    iget-object v0, p0, Lmri;->b:[F

    if-nez v0, :cond_b

    move v0, v1

    .line 1185
    :goto_7
    add-int/2addr v3, v0

    new-array v3, v3, [F

    .line 1186
    if-eqz v0, :cond_a

    .line 1187
    iget-object v4, p0, Lmri;->b:[F

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1189
    :cond_a
    :goto_8
    array-length v4, v3

    if-ge v0, v4, :cond_c

    .line 1190
    invoke-virtual {p1}, Llxy;->c()F

    move-result v4

    aput v4, v3, v0

    .line 1189
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1184
    :cond_b
    iget-object v0, p0, Lmri;->b:[F

    array-length v0, v0

    goto :goto_7

    .line 1192
    :cond_c
    iput-object v3, p0, Lmri;->b:[F

    .line 1193
    invoke-virtual {p1, v2}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 1197
    :sswitch_5
    const/16 v0, 0x1d

    .line 1198
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1199
    iget-object v0, p0, Lmri;->c:[F

    if-nez v0, :cond_e

    move v0, v1

    .line 1200
    :goto_9
    add-int/2addr v2, v0

    new-array v2, v2, [F

    .line 1201
    if-eqz v0, :cond_d

    .line 1202
    iget-object v3, p0, Lmri;->c:[F

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1204
    :cond_d
    :goto_a
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_f

    .line 1205
    invoke-virtual {p1}, Llxy;->c()F

    move-result v3

    aput v3, v2, v0

    .line 1206
    invoke-virtual {p1}, Llxy;->a()I

    .line 1204
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1199
    :cond_e
    iget-object v0, p0, Lmri;->c:[F

    array-length v0, v0

    goto :goto_9

    .line 1209
    :cond_f
    invoke-virtual {p1}, Llxy;->c()F

    move-result v3

    aput v3, v2, v0

    .line 1210
    iput-object v2, p0, Lmri;->c:[F

    goto/16 :goto_0

    .line 1214
    :sswitch_6
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 1215
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v2

    .line 1216
    div-int/lit8 v3, v0, 0x4

    .line 1217
    iget-object v0, p0, Lmri;->c:[F

    if-nez v0, :cond_11

    move v0, v1

    .line 1218
    :goto_b
    add-int/2addr v3, v0

    new-array v3, v3, [F

    .line 1219
    if-eqz v0, :cond_10

    .line 1220
    iget-object v4, p0, Lmri;->c:[F

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1222
    :cond_10
    :goto_c
    array-length v4, v3

    if-ge v0, v4, :cond_12

    .line 1223
    invoke-virtual {p1}, Llxy;->c()F

    move-result v4

    aput v4, v3, v0

    .line 1222
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1217
    :cond_11
    iget-object v0, p0, Lmri;->c:[F

    array-length v0, v0

    goto :goto_b

    .line 1225
    :cond_12
    iput-object v3, p0, Lmri;->c:[F

    .line 1226
    invoke-virtual {p1, v2}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 1230
    :sswitch_7
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmri;->d:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1234
    :sswitch_8
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmri;->e:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1121
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

    .line 62
    iget-object v0, p0, Lmri;->a:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmri;->a:[F

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    .line 63
    :goto_0
    iget-object v2, p0, Lmri;->a:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 64
    const/4 v2, 0x1

    iget-object v3, p0, Lmri;->a:[F

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Llxz;->a(IF)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lmri;->b:[F

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmri;->b:[F

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 68
    :goto_1
    iget-object v2, p0, Lmri;->b:[F

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 69
    const/4 v2, 0x2

    iget-object v3, p0, Lmri;->b:[F

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Llxz;->a(IF)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 72
    :cond_1
    iget-object v0, p0, Lmri;->c:[F

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmri;->c:[F

    array-length v0, v0

    if-lez v0, :cond_2

    .line 73
    :goto_2
    iget-object v0, p0, Lmri;->c:[F

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 74
    const/4 v0, 0x3

    iget-object v2, p0, Lmri;->c:[F

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Llxz;->a(IF)V

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 77
    :cond_2
    iget-object v0, p0, Lmri;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 78
    const/4 v0, 0x4

    iget-object v1, p0, Lmri;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 80
    :cond_3
    iget-object v0, p0, Lmri;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 81
    const/4 v0, 0x5

    iget-object v1, p0, Lmri;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 83
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 84
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 88
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 89
    iget-object v1, p0, Lmri;->a:[F

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmri;->a:[F

    array-length v1, v1

    if-lez v1, :cond_0

    .line 90
    iget-object v1, p0, Lmri;->a:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 91
    add-int/2addr v0, v1

    .line 92
    iget-object v1, p0, Lmri;->a:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 94
    :cond_0
    iget-object v1, p0, Lmri;->b:[F

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmri;->b:[F

    array-length v1, v1

    if-lez v1, :cond_1

    .line 95
    iget-object v1, p0, Lmri;->b:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 96
    add-int/2addr v0, v1

    .line 97
    iget-object v1, p0, Lmri;->b:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 99
    :cond_1
    iget-object v1, p0, Lmri;->c:[F

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmri;->c:[F

    array-length v1, v1

    if-lez v1, :cond_2

    .line 100
    iget-object v1, p0, Lmri;->c:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 101
    add-int/2addr v0, v1

    .line 102
    iget-object v1, p0, Lmri;->c:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 104
    :cond_2
    iget-object v1, p0, Lmri;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 105
    const/4 v1, 0x4

    iget-object v2, p0, Lmri;->d:Ljava/lang/Integer;

    .line 106
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    :cond_3
    iget-object v1, p0, Lmri;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 109
    const/4 v1, 0x5

    iget-object v2, p0, Lmri;->e:Ljava/lang/Integer;

    .line 110
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 112
    :cond_4
    return v0
.end method
