.class public final Lmlx;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmlx;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmmm;

.field public b:[Lmlw;

.field public c:Lmks;

.field public d:Lmmb;

.field public e:Lmla;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1049
    iput-object v1, p0, Lmlx;->a:Lmmm;

    .line 1050
    invoke-static {}, Lmlw;->d()[Lmlw;

    move-result-object v0

    iput-object v0, p0, Lmlx;->b:[Lmlw;

    .line 1051
    iput-object v1, p0, Lmlx;->c:Lmks;

    .line 1052
    iput-object v1, p0, Lmlx;->d:Lmmb;

    .line 1053
    iput-object v1, p0, Lmlx;->e:Lmla;

    .line 1054
    iput-object v1, p0, Lmlx;->eD:Llyd;

    .line 1055
    const/4 v0, -0x1

    iput v0, p0, Lmlx;->eE:I

    .line 46
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1121
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1122
    sparse-switch v0, :sswitch_data_0

    .line 1126
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1127
    :sswitch_0
    return-object p0

    .line 1132
    :sswitch_1
    iget-object v0, p0, Lmlx;->a:Lmmm;

    if-nez v0, :cond_1

    .line 1133
    new-instance v0, Lmmm;

    invoke-direct {v0}, Lmmm;-><init>()V

    iput-object v0, p0, Lmlx;->a:Lmmm;

    .line 1135
    :cond_1
    iget-object v0, p0, Lmlx;->a:Lmmm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1139
    :sswitch_2
    const/16 v0, 0x12

    .line 1140
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1141
    iget-object v0, p0, Lmlx;->b:[Lmlw;

    if-nez v0, :cond_3

    move v0, v1

    .line 1142
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmlw;

    .line 1144
    if-eqz v0, :cond_2

    .line 1145
    iget-object v3, p0, Lmlx;->b:[Lmlw;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1147
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 1148
    new-instance v3, Lmlw;

    invoke-direct {v3}, Lmlw;-><init>()V

    aput-object v3, v2, v0

    .line 1149
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1150
    invoke-virtual {p1}, Llxy;->a()I

    .line 1147
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1141
    :cond_3
    iget-object v0, p0, Lmlx;->b:[Lmlw;

    array-length v0, v0

    goto :goto_1

    .line 1153
    :cond_4
    new-instance v3, Lmlw;

    invoke-direct {v3}, Lmlw;-><init>()V

    aput-object v3, v2, v0

    .line 1154
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1155
    iput-object v2, p0, Lmlx;->b:[Lmlw;

    goto :goto_0

    .line 1159
    :sswitch_3
    iget-object v0, p0, Lmlx;->c:Lmks;

    if-nez v0, :cond_5

    .line 1160
    new-instance v0, Lmks;

    invoke-direct {v0}, Lmks;-><init>()V

    iput-object v0, p0, Lmlx;->c:Lmks;

    .line 1162
    :cond_5
    iget-object v0, p0, Lmlx;->c:Lmks;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1166
    :sswitch_4
    iget-object v0, p0, Lmlx;->d:Lmmb;

    if-nez v0, :cond_6

    .line 1167
    new-instance v0, Lmmb;

    invoke-direct {v0}, Lmmb;-><init>()V

    iput-object v0, p0, Lmlx;->d:Lmmb;

    .line 1169
    :cond_6
    iget-object v0, p0, Lmlx;->d:Lmmb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1173
    :sswitch_5
    iget-object v0, p0, Lmlx;->e:Lmla;

    if-nez v0, :cond_7

    .line 1174
    new-instance v0, Lmla;

    invoke-direct {v0}, Lmla;-><init>()V

    iput-object v0, p0, Lmlx;->e:Lmla;

    .line 1176
    :cond_7
    iget-object v0, p0, Lmlx;->e:Lmla;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1122
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
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lmlx;->a:Lmmm;

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x1

    iget-object v1, p0, Lmlx;->a:Lmmm;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lmlx;->b:[Lmlw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmlx;->b:[Lmlw;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 66
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmlx;->b:[Lmlw;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 67
    iget-object v1, p0, Lmlx;->b:[Lmlw;

    aget-object v1, v1, v0

    .line 68
    if-eqz v1, :cond_1

    .line 69
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 66
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, p0, Lmlx;->c:Lmks;

    if-eqz v0, :cond_3

    .line 74
    const/4 v0, 0x3

    iget-object v1, p0, Lmlx;->c:Lmks;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 76
    :cond_3
    iget-object v0, p0, Lmlx;->d:Lmmb;

    if-eqz v0, :cond_4

    .line 77
    const/4 v0, 0x4

    iget-object v1, p0, Lmlx;->d:Lmmb;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 79
    :cond_4
    iget-object v0, p0, Lmlx;->e:Lmla;

    if-eqz v0, :cond_5

    .line 80
    const/4 v0, 0x5

    iget-object v1, p0, Lmlx;->e:Lmla;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 82
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 83
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 87
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 88
    iget-object v1, p0, Lmlx;->a:Lmmm;

    if-eqz v1, :cond_0

    .line 89
    const/4 v1, 0x1

    iget-object v2, p0, Lmlx;->a:Lmmm;

    .line 90
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    :cond_0
    iget-object v1, p0, Lmlx;->b:[Lmlw;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmlx;->b:[Lmlw;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 93
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lmlx;->b:[Lmlw;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 94
    iget-object v2, p0, Lmlx;->b:[Lmlw;

    aget-object v2, v2, v0

    .line 95
    if-eqz v2, :cond_1

    .line 96
    const/4 v3, 0x2

    .line 97
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 93
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 101
    :cond_3
    iget-object v1, p0, Lmlx;->c:Lmks;

    if-eqz v1, :cond_4

    .line 102
    const/4 v1, 0x3

    iget-object v2, p0, Lmlx;->c:Lmks;

    .line 103
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_4
    iget-object v1, p0, Lmlx;->d:Lmmb;

    if-eqz v1, :cond_5

    .line 106
    const/4 v1, 0x4

    iget-object v2, p0, Lmlx;->d:Lmmb;

    .line 107
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 109
    :cond_5
    iget-object v1, p0, Lmlx;->e:Lmla;

    if-eqz v1, :cond_6

    .line 110
    const/4 v1, 0x5

    iget-object v2, p0, Lmlx;->e:Lmla;

    .line 111
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    :cond_6
    return v0
.end method
