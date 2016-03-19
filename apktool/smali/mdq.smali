.class public final Lmdq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmdq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lmcf;

.field public b:[Lmcf;

.field public c:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Llyb;-><init>()V

    .line 35
    invoke-static {}, Lmcf;->d()[Lmcf;

    move-result-object v0

    iput-object v0, p0, Lmdq;->a:[Lmcf;

    .line 36
    invoke-static {}, Lmcf;->d()[Lmcf;

    move-result-object v0

    iput-object v0, p0, Lmdq;->b:[Lmcf;

    .line 37
    sget-object v0, Llyo;->e:[Z

    iput-object v0, p0, Lmdq;->c:[Z

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lmdq;->eD:Llyd;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lmdq;->eE:I

    .line 40
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1103
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1104
    sparse-switch v0, :sswitch_data_0

    .line 1108
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1109
    :sswitch_0
    return-object p0

    .line 1114
    :sswitch_1
    const/16 v0, 0xa

    .line 1115
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1116
    iget-object v0, p0, Lmdq;->a:[Lmcf;

    if-nez v0, :cond_2

    move v0, v1

    .line 1117
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmcf;

    .line 1119
    if-eqz v0, :cond_1

    .line 1120
    iget-object v3, p0, Lmdq;->a:[Lmcf;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1122
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1123
    new-instance v3, Lmcf;

    invoke-direct {v3}, Lmcf;-><init>()V

    aput-object v3, v2, v0

    .line 1124
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1125
    invoke-virtual {p1}, Llxy;->a()I

    .line 1122
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1116
    :cond_2
    iget-object v0, p0, Lmdq;->a:[Lmcf;

    array-length v0, v0

    goto :goto_1

    .line 1128
    :cond_3
    new-instance v3, Lmcf;

    invoke-direct {v3}, Lmcf;-><init>()V

    aput-object v3, v2, v0

    .line 1129
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1130
    iput-object v2, p0, Lmdq;->a:[Lmcf;

    goto :goto_0

    .line 1134
    :sswitch_2
    const/16 v0, 0x12

    .line 1135
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1136
    iget-object v0, p0, Lmdq;->b:[Lmcf;

    if-nez v0, :cond_5

    move v0, v1

    .line 1137
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lmcf;

    .line 1139
    if-eqz v0, :cond_4

    .line 1140
    iget-object v3, p0, Lmdq;->b:[Lmcf;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1142
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1143
    new-instance v3, Lmcf;

    invoke-direct {v3}, Lmcf;-><init>()V

    aput-object v3, v2, v0

    .line 1144
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1145
    invoke-virtual {p1}, Llxy;->a()I

    .line 1142
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1136
    :cond_5
    iget-object v0, p0, Lmdq;->b:[Lmcf;

    array-length v0, v0

    goto :goto_3

    .line 1148
    :cond_6
    new-instance v3, Lmcf;

    invoke-direct {v3}, Lmcf;-><init>()V

    aput-object v3, v2, v0

    .line 1149
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1150
    iput-object v2, p0, Lmdq;->b:[Lmcf;

    goto/16 :goto_0

    .line 1154
    :sswitch_3
    const/16 v0, 0x18

    .line 1155
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1156
    iget-object v0, p0, Lmdq;->c:[Z

    if-nez v0, :cond_8

    move v0, v1

    .line 1157
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Z

    .line 1158
    if-eqz v0, :cond_7

    .line 1159
    iget-object v3, p0, Lmdq;->c:[Z

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1161
    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 1162
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v3

    aput-boolean v3, v2, v0

    .line 1163
    invoke-virtual {p1}, Llxy;->a()I

    .line 1161
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1156
    :cond_8
    iget-object v0, p0, Lmdq;->c:[Z

    array-length v0, v0

    goto :goto_5

    .line 1166
    :cond_9
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v3

    aput-boolean v3, v2, v0

    .line 1167
    iput-object v2, p0, Lmdq;->c:[Z

    goto/16 :goto_0

    .line 1171
    :sswitch_4
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 1172
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 1175
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 1176
    :goto_7
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_a

    .line 1177
    invoke-virtual {p1}, Llxy;->i()Z

    .line 1178
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1180
    :cond_a
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 1181
    iget-object v2, p0, Lmdq;->c:[Z

    if-nez v2, :cond_c

    move v2, v1

    .line 1182
    :goto_8
    add-int/2addr v0, v2

    new-array v0, v0, [Z

    .line 1183
    if-eqz v2, :cond_b

    .line 1184
    iget-object v4, p0, Lmdq;->c:[Z

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1186
    :cond_b
    :goto_9
    array-length v4, v0

    if-ge v2, v4, :cond_d

    .line 1187
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v4

    aput-boolean v4, v0, v2

    .line 1186
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1181
    :cond_c
    iget-object v2, p0, Lmdq;->c:[Z

    array-length v2, v2

    goto :goto_8

    .line 1189
    :cond_d
    iput-object v0, p0, Lmdq;->c:[Z

    .line 1190
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 1104
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x1a -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 45
    iget-object v0, p0, Lmdq;->a:[Lmcf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmdq;->a:[Lmcf;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 46
    :goto_0
    iget-object v2, p0, Lmdq;->a:[Lmcf;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 47
    iget-object v2, p0, Lmdq;->a:[Lmcf;

    aget-object v2, v2, v0

    .line 48
    if-eqz v2, :cond_0

    .line 49
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 46
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lmdq;->b:[Lmcf;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmdq;->b:[Lmcf;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 54
    :goto_1
    iget-object v2, p0, Lmdq;->b:[Lmcf;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 55
    iget-object v2, p0, Lmdq;->b:[Lmcf;

    aget-object v2, v2, v0

    .line 56
    if-eqz v2, :cond_2

    .line 57
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 54
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 61
    :cond_3
    iget-object v0, p0, Lmdq;->c:[Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmdq;->c:[Z

    array-length v0, v0

    if-lez v0, :cond_4

    .line 62
    :goto_2
    iget-object v0, p0, Lmdq;->c:[Z

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 63
    const/4 v0, 0x3

    iget-object v2, p0, Lmdq;->c:[Z

    aget-boolean v2, v2, v1

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 66
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 67
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 72
    iget-object v2, p0, Lmdq;->a:[Lmcf;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmdq;->a:[Lmcf;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 73
    :goto_0
    iget-object v3, p0, Lmdq;->a:[Lmcf;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 74
    iget-object v3, p0, Lmdq;->a:[Lmcf;

    aget-object v3, v3, v0

    .line 75
    if-eqz v3, :cond_0

    .line 76
    const/4 v4, 0x1

    .line 77
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 73
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 81
    :cond_2
    iget-object v2, p0, Lmdq;->b:[Lmcf;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmdq;->b:[Lmcf;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 82
    :goto_1
    iget-object v2, p0, Lmdq;->b:[Lmcf;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 83
    iget-object v2, p0, Lmdq;->b:[Lmcf;

    aget-object v2, v2, v1

    .line 84
    if-eqz v2, :cond_3

    .line 85
    const/4 v3, 0x2

    .line 86
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 82
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 90
    :cond_4
    iget-object v1, p0, Lmdq;->c:[Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lmdq;->c:[Z

    array-length v1, v1

    if-lez v1, :cond_5

    .line 91
    iget-object v1, p0, Lmdq;->c:[Z

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    .line 92
    add-int/2addr v0, v1

    .line 93
    iget-object v1, p0, Lmdq;->c:[Z

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 95
    :cond_5
    return v0
.end method
