.class public final Ljhg;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljhg;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:[Ljhx;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/String;

.field public e:[Ljhb;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Llyb;-><init>()V

    .line 41
    const/high16 v0, -0x80000000

    iput v0, p0, Ljhg;->a:I

    .line 42
    invoke-static {}, Ljhx;->d()[Ljhx;

    move-result-object v0

    iput-object v0, p0, Ljhg;->b:[Ljhx;

    .line 43
    iput-object v1, p0, Ljhg;->c:Ljava/lang/Integer;

    .line 44
    iput-object v1, p0, Ljhg;->d:Ljava/lang/String;

    .line 45
    invoke-static {}, Ljhb;->d()[Ljhb;

    move-result-object v0

    iput-object v0, p0, Ljhg;->e:[Ljhb;

    .line 46
    iput-object v1, p0, Ljhg;->eD:Llyd;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Ljhg;->eE:I

    .line 48
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1122
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1123
    sparse-switch v0, :sswitch_data_0

    .line 1127
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1128
    :sswitch_0
    return-object p0

    .line 1133
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1134
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 1170
    :sswitch_2
    iput v0, p0, Ljhg;->a:I

    goto :goto_0

    .line 1176
    :sswitch_3
    const/16 v0, 0x12

    .line 1177
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1178
    iget-object v0, p0, Ljhg;->b:[Ljhx;

    if-nez v0, :cond_2

    move v0, v1

    .line 1179
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljhx;

    .line 1181
    if-eqz v0, :cond_1

    .line 1182
    iget-object v3, p0, Ljhg;->b:[Ljhx;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1184
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1185
    new-instance v3, Ljhx;

    invoke-direct {v3}, Ljhx;-><init>()V

    aput-object v3, v2, v0

    .line 1186
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1187
    invoke-virtual {p1}, Llxy;->a()I

    .line 1184
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1178
    :cond_2
    iget-object v0, p0, Ljhg;->b:[Ljhx;

    array-length v0, v0

    goto :goto_1

    .line 1190
    :cond_3
    new-instance v3, Ljhx;

    invoke-direct {v3}, Ljhx;-><init>()V

    aput-object v3, v2, v0

    .line 1191
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1192
    iput-object v2, p0, Ljhg;->b:[Ljhx;

    goto :goto_0

    .line 1196
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljhg;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 1200
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljhg;->d:Ljava/lang/String;

    goto :goto_0

    .line 1204
    :sswitch_6
    const/16 v0, 0x2a

    .line 1205
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1206
    iget-object v0, p0, Ljhg;->e:[Ljhb;

    if-nez v0, :cond_5

    move v0, v1

    .line 1207
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljhb;

    .line 1209
    if-eqz v0, :cond_4

    .line 1210
    iget-object v3, p0, Ljhg;->e:[Ljhb;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1212
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1213
    new-instance v3, Ljhb;

    invoke-direct {v3}, Ljhb;-><init>()V

    aput-object v3, v2, v0

    .line 1214
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1215
    invoke-virtual {p1}, Llxy;->a()I

    .line 1212
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1206
    :cond_5
    iget-object v0, p0, Ljhg;->e:[Ljhb;

    array-length v0, v0

    goto :goto_3

    .line 1218
    :cond_6
    new-instance v3, Ljhb;

    invoke-direct {v3}, Ljhb;-><init>()V

    aput-object v3, v2, v0

    .line 1219
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1220
    iput-object v2, p0, Ljhg;->e:[Ljhb;

    goto/16 :goto_0

    .line 1123
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_3
        0x18 -> :sswitch_4
        0x22 -> :sswitch_5
        0x2a -> :sswitch_6
    .end sparse-switch

    .line 1134
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x5 -> :sswitch_2
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_2
        0xca -> :sswitch_2
        0xcb -> :sswitch_2
        0xcc -> :sswitch_2
        0xcd -> :sswitch_2
        0xce -> :sswitch_2
        0xcf -> :sswitch_2
        0x12c -> :sswitch_2
        0x191 -> :sswitch_2
        0x192 -> :sswitch_2
        0x1f4 -> :sswitch_2
        0x258 -> :sswitch_2
        0x259 -> :sswitch_2
        0x25a -> :sswitch_2
        0x25b -> :sswitch_2
        0x25c -> :sswitch_2
        0x25d -> :sswitch_2
        0x25e -> :sswitch_2
        0x2bc -> :sswitch_2
        0x2bd -> :sswitch_2
        0x320 -> :sswitch_2
        0x321 -> :sswitch_2
        0x322 -> :sswitch_2
        0x323 -> :sswitch_2
        0x384 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 53
    iget v0, p0, Ljhg;->a:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_0

    .line 54
    const/4 v0, 0x1

    iget v2, p0, Ljhg;->a:I

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 56
    :cond_0
    iget-object v0, p0, Ljhg;->b:[Ljhx;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljhg;->b:[Ljhx;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 57
    :goto_0
    iget-object v2, p0, Ljhg;->b:[Ljhx;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 58
    iget-object v2, p0, Ljhg;->b:[Ljhx;

    aget-object v2, v2, v0

    .line 59
    if-eqz v2, :cond_1

    .line 60
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 57
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p0, Ljhg;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 65
    const/4 v0, 0x3

    iget-object v2, p0, Ljhg;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 67
    :cond_3
    iget-object v0, p0, Ljhg;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 68
    const/4 v0, 0x4

    iget-object v2, p0, Ljhg;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 70
    :cond_4
    iget-object v0, p0, Ljhg;->e:[Ljhb;

    if-eqz v0, :cond_6

    iget-object v0, p0, Ljhg;->e:[Ljhb;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 71
    :goto_1
    iget-object v0, p0, Ljhg;->e:[Ljhb;

    array-length v0, v0

    if-ge v1, v0, :cond_6

    .line 72
    iget-object v0, p0, Ljhg;->e:[Ljhb;

    aget-object v0, v0, v1

    .line 73
    if-eqz v0, :cond_5

    .line 74
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 71
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 78
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 79
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 84
    iget v2, p0, Ljhg;->a:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    .line 85
    const/4 v2, 0x1

    iget v3, p0, Ljhg;->a:I

    .line 86
    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 88
    :cond_0
    iget-object v2, p0, Ljhg;->b:[Ljhx;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljhg;->b:[Ljhx;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 89
    :goto_0
    iget-object v3, p0, Ljhg;->b:[Ljhx;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 90
    iget-object v3, p0, Ljhg;->b:[Ljhx;

    aget-object v3, v3, v0

    .line 91
    if-eqz v3, :cond_1

    .line 92
    const/4 v4, 0x2

    .line 93
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 89
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 97
    :cond_3
    iget-object v2, p0, Ljhg;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 98
    const/4 v2, 0x3

    iget-object v3, p0, Ljhg;->c:Ljava/lang/Integer;

    .line 99
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 101
    :cond_4
    iget-object v2, p0, Ljhg;->d:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 102
    const/4 v2, 0x4

    iget-object v3, p0, Ljhg;->d:Ljava/lang/String;

    .line 103
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 105
    :cond_5
    iget-object v2, p0, Ljhg;->e:[Ljhb;

    if-eqz v2, :cond_7

    iget-object v2, p0, Ljhg;->e:[Ljhb;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 106
    :goto_1
    iget-object v2, p0, Ljhg;->e:[Ljhb;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 107
    iget-object v2, p0, Ljhg;->e:[Ljhb;

    aget-object v2, v2, v1

    .line 108
    if-eqz v2, :cond_6

    .line 109
    const/4 v3, 0x5

    .line 110
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 106
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 114
    :cond_7
    return v0
.end method
