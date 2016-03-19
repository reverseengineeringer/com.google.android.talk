.class public final Lmkk;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmkk;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile f:[Lmkk;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lmks;

.field public c:[Lmkt;

.field public d:Lmkt;

.field public e:[Lmkm;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1049
    iput-object v1, p0, Lmkk;->a:Ljava/lang/String;

    .line 1050
    iput-object v1, p0, Lmkk;->b:Lmks;

    .line 1051
    invoke-static {}, Lmkt;->d()[Lmkt;

    move-result-object v0

    iput-object v0, p0, Lmkk;->c:[Lmkt;

    .line 1052
    iput-object v1, p0, Lmkk;->d:Lmkt;

    .line 1053
    invoke-static {}, Lmkm;->d()[Lmkm;

    move-result-object v0

    iput-object v0, p0, Lmkk;->e:[Lmkm;

    .line 1054
    iput-object v1, p0, Lmkk;->eD:Llyd;

    .line 1055
    const/4 v0, -0x1

    iput v0, p0, Lmkk;->eE:I

    .line 46
    return-void
.end method

.method public static d()[Lmkk;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lmkk;->f:[Lmkk;

    if-nez v0, :cond_1

    .line 17
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lmkk;->f:[Lmkk;

    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x0

    new-array v0, v0, [Lmkk;

    sput-object v0, Lmkk;->f:[Lmkk;

    .line 22
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_1
    sget-object v0, Lmkk;->f:[Lmkk;

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
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1131
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1132
    sparse-switch v0, :sswitch_data_0

    .line 1136
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1137
    :sswitch_0
    return-object p0

    .line 1142
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmkk;->a:Ljava/lang/String;

    goto :goto_0

    .line 1146
    :sswitch_2
    iget-object v0, p0, Lmkk;->b:Lmks;

    if-nez v0, :cond_1

    .line 1147
    new-instance v0, Lmks;

    invoke-direct {v0}, Lmks;-><init>()V

    iput-object v0, p0, Lmkk;->b:Lmks;

    .line 1149
    :cond_1
    iget-object v0, p0, Lmkk;->b:Lmks;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1153
    :sswitch_3
    const/16 v0, 0x1a

    .line 1154
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1155
    iget-object v0, p0, Lmkk;->c:[Lmkt;

    if-nez v0, :cond_3

    move v0, v1

    .line 1156
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmkt;

    .line 1158
    if-eqz v0, :cond_2

    .line 1159
    iget-object v3, p0, Lmkk;->c:[Lmkt;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1161
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 1162
    new-instance v3, Lmkt;

    invoke-direct {v3}, Lmkt;-><init>()V

    aput-object v3, v2, v0

    .line 1163
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1164
    invoke-virtual {p1}, Llxy;->a()I

    .line 1161
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1155
    :cond_3
    iget-object v0, p0, Lmkk;->c:[Lmkt;

    array-length v0, v0

    goto :goto_1

    .line 1167
    :cond_4
    new-instance v3, Lmkt;

    invoke-direct {v3}, Lmkt;-><init>()V

    aput-object v3, v2, v0

    .line 1168
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1169
    iput-object v2, p0, Lmkk;->c:[Lmkt;

    goto :goto_0

    .line 1173
    :sswitch_4
    iget-object v0, p0, Lmkk;->d:Lmkt;

    if-nez v0, :cond_5

    .line 1174
    new-instance v0, Lmkt;

    invoke-direct {v0}, Lmkt;-><init>()V

    iput-object v0, p0, Lmkk;->d:Lmkt;

    .line 1176
    :cond_5
    iget-object v0, p0, Lmkk;->d:Lmkt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1180
    :sswitch_5
    const/16 v0, 0x2a

    .line 1181
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1182
    iget-object v0, p0, Lmkk;->e:[Lmkm;

    if-nez v0, :cond_7

    move v0, v1

    .line 1183
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lmkm;

    .line 1185
    if-eqz v0, :cond_6

    .line 1186
    iget-object v3, p0, Lmkk;->e:[Lmkm;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1188
    :cond_6
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_8

    .line 1189
    new-instance v3, Lmkm;

    invoke-direct {v3}, Lmkm;-><init>()V

    aput-object v3, v2, v0

    .line 1190
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1191
    invoke-virtual {p1}, Llxy;->a()I

    .line 1188
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1182
    :cond_7
    iget-object v0, p0, Lmkk;->e:[Lmkm;

    array-length v0, v0

    goto :goto_3

    .line 1194
    :cond_8
    new-instance v3, Lmkm;

    invoke-direct {v3}, Lmkm;-><init>()V

    aput-object v3, v2, v0

    .line 1195
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1196
    iput-object v2, p0, Lmkk;->e:[Lmkm;

    goto/16 :goto_0

    .line 1132
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lmkk;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x1

    iget-object v2, p0, Lmkk;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lmkk;->b:Lmks;

    if-eqz v0, :cond_1

    .line 66
    const/4 v0, 0x2

    iget-object v2, p0, Lmkk;->b:Lmks;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 68
    :cond_1
    iget-object v0, p0, Lmkk;->c:[Lmkt;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmkk;->c:[Lmkt;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 69
    :goto_0
    iget-object v2, p0, Lmkk;->c:[Lmkt;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 70
    iget-object v2, p0, Lmkk;->c:[Lmkt;

    aget-object v2, v2, v0

    .line 71
    if-eqz v2, :cond_2

    .line 72
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 69
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_3
    iget-object v0, p0, Lmkk;->d:Lmkt;

    if-eqz v0, :cond_4

    .line 77
    const/4 v0, 0x4

    iget-object v2, p0, Lmkk;->d:Lmkt;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 79
    :cond_4
    iget-object v0, p0, Lmkk;->e:[Lmkm;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lmkk;->e:[Lmkm;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 80
    :goto_1
    iget-object v0, p0, Lmkk;->e:[Lmkm;

    array-length v0, v0

    if-ge v1, v0, :cond_6

    .line 81
    iget-object v0, p0, Lmkk;->e:[Lmkm;

    aget-object v0, v0, v1

    .line 82
    if-eqz v0, :cond_5

    .line 83
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 80
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 87
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 88
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 93
    iget-object v2, p0, Lmkk;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 94
    const/4 v2, 0x1

    iget-object v3, p0, Lmkk;->a:Ljava/lang/String;

    .line 95
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 97
    :cond_0
    iget-object v2, p0, Lmkk;->b:Lmks;

    if-eqz v2, :cond_1

    .line 98
    const/4 v2, 0x2

    iget-object v3, p0, Lmkk;->b:Lmks;

    .line 99
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 101
    :cond_1
    iget-object v2, p0, Lmkk;->c:[Lmkt;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmkk;->c:[Lmkt;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v0

    move v0, v1

    .line 102
    :goto_0
    iget-object v3, p0, Lmkk;->c:[Lmkt;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 103
    iget-object v3, p0, Lmkk;->c:[Lmkt;

    aget-object v3, v3, v0

    .line 104
    if-eqz v3, :cond_2

    .line 105
    const/4 v4, 0x3

    .line 106
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 102
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 110
    :cond_4
    iget-object v2, p0, Lmkk;->d:Lmkt;

    if-eqz v2, :cond_5

    .line 111
    const/4 v2, 0x4

    iget-object v3, p0, Lmkk;->d:Lmkt;

    .line 112
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 114
    :cond_5
    iget-object v2, p0, Lmkk;->e:[Lmkm;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lmkk;->e:[Lmkm;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 115
    :goto_1
    iget-object v2, p0, Lmkk;->e:[Lmkm;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 116
    iget-object v2, p0, Lmkk;->e:[Lmkm;

    aget-object v2, v2, v1

    .line 117
    if-eqz v2, :cond_6

    .line 118
    const/4 v3, 0x5

    .line 119
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 115
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 123
    :cond_7
    return v0
.end method
