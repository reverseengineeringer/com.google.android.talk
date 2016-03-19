.class public final Lmdy;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmdy;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 37
    invoke-direct {p0}, Llyb;-><init>()V

    .line 38
    iput v0, p0, Lmdy;->a:I

    .line 39
    iput v0, p0, Lmdy;->b:I

    .line 40
    iput v0, p0, Lmdy;->c:I

    .line 41
    iput v0, p0, Lmdy;->d:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lmdy;->eD:Llyd;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lmdy;->eE:I

    .line 44
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1091
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1092
    sparse-switch v0, :sswitch_data_0

    .line 1096
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1097
    :sswitch_0
    return-object p0

    .line 1102
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1103
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 1119
    :sswitch_2
    iput v0, p0, Lmdy;->a:I

    goto :goto_0

    .line 1125
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1126
    sparse-switch v0, :sswitch_data_2

    goto :goto_0

    .line 1334
    :sswitch_4
    iput v0, p0, Lmdy;->b:I

    goto :goto_0

    .line 1340
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1341
    sparse-switch v0, :sswitch_data_3

    goto :goto_0

    .line 1347
    :sswitch_6
    iput v0, p0, Lmdy;->c:I

    goto :goto_0

    .line 1353
    :sswitch_7
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1354
    sparse-switch v0, :sswitch_data_4

    goto :goto_0

    .line 1362
    :sswitch_8
    iput v0, p0, Lmdy;->d:I

    goto :goto_0

    .line 1092
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_3
        0x18 -> :sswitch_5
        0x20 -> :sswitch_7
    .end sparse-switch

    .line 1103
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x5 -> :sswitch_2
        0x6 -> :sswitch_2
        0x7 -> :sswitch_2
        0x8 -> :sswitch_2
        0x9 -> :sswitch_2
        0x64 -> :sswitch_2
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_2
        0xca -> :sswitch_2
        0xcb -> :sswitch_2
    .end sparse-switch

    .line 1126
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x3 -> :sswitch_4
        0x4 -> :sswitch_4
        0x5 -> :sswitch_4
        0x6 -> :sswitch_4
        0x7 -> :sswitch_4
        0x8 -> :sswitch_4
        0x9 -> :sswitch_4
        0xa -> :sswitch_4
        0xb -> :sswitch_4
        0xc -> :sswitch_4
        0xd -> :sswitch_4
        0xe -> :sswitch_4
        0x50 -> :sswitch_4
        0x51 -> :sswitch_4
        0x64 -> :sswitch_4
        0x65 -> :sswitch_4
        0x66 -> :sswitch_4
        0x67 -> :sswitch_4
        0x68 -> :sswitch_4
        0x69 -> :sswitch_4
        0x6a -> :sswitch_4
        0x6b -> :sswitch_4
        0x6c -> :sswitch_4
        0x6d -> :sswitch_4
        0x6e -> :sswitch_4
        0x6f -> :sswitch_4
        0x70 -> :sswitch_4
        0x71 -> :sswitch_4
        0x72 -> :sswitch_4
        0x73 -> :sswitch_4
        0x74 -> :sswitch_4
        0x75 -> :sswitch_4
        0x76 -> :sswitch_4
        0x77 -> :sswitch_4
        0x78 -> :sswitch_4
        0x79 -> :sswitch_4
        0x7a -> :sswitch_4
        0x7b -> :sswitch_4
        0x7c -> :sswitch_4
        0x7d -> :sswitch_4
        0x7e -> :sswitch_4
        0x7f -> :sswitch_4
        0x80 -> :sswitch_4
        0x81 -> :sswitch_4
        0x82 -> :sswitch_4
        0x83 -> :sswitch_4
        0x84 -> :sswitch_4
        0x85 -> :sswitch_4
        0x86 -> :sswitch_4
        0x87 -> :sswitch_4
        0x88 -> :sswitch_4
        0x89 -> :sswitch_4
        0x8a -> :sswitch_4
        0x8b -> :sswitch_4
        0x8c -> :sswitch_4
        0x8d -> :sswitch_4
        0x8e -> :sswitch_4
        0x8f -> :sswitch_4
        0x90 -> :sswitch_4
        0x91 -> :sswitch_4
        0x92 -> :sswitch_4
        0x93 -> :sswitch_4
        0x94 -> :sswitch_4
        0x95 -> :sswitch_4
        0x96 -> :sswitch_4
        0x97 -> :sswitch_4
        0x98 -> :sswitch_4
        0x99 -> :sswitch_4
        0x9a -> :sswitch_4
        0x9b -> :sswitch_4
        0x9c -> :sswitch_4
        0x9d -> :sswitch_4
        0x9e -> :sswitch_4
        0x9f -> :sswitch_4
        0xa0 -> :sswitch_4
        0xa1 -> :sswitch_4
        0xa2 -> :sswitch_4
        0xa3 -> :sswitch_4
        0xa4 -> :sswitch_4
        0xa5 -> :sswitch_4
        0xa6 -> :sswitch_4
        0xa7 -> :sswitch_4
        0xa8 -> :sswitch_4
        0xa9 -> :sswitch_4
        0xaa -> :sswitch_4
        0xab -> :sswitch_4
        0xac -> :sswitch_4
        0xad -> :sswitch_4
        0xae -> :sswitch_4
        0xaf -> :sswitch_4
        0xb0 -> :sswitch_4
        0xb1 -> :sswitch_4
        0xb2 -> :sswitch_4
        0xb3 -> :sswitch_4
        0xb4 -> :sswitch_4
        0xb5 -> :sswitch_4
        0xb6 -> :sswitch_4
        0xb7 -> :sswitch_4
        0xb8 -> :sswitch_4
        0xb9 -> :sswitch_4
        0xba -> :sswitch_4
        0xbb -> :sswitch_4
        0xbc -> :sswitch_4
        0xbd -> :sswitch_4
        0xbe -> :sswitch_4
        0xbf -> :sswitch_4
        0xc0 -> :sswitch_4
        0xc1 -> :sswitch_4
        0xc2 -> :sswitch_4
        0xc3 -> :sswitch_4
        0xc4 -> :sswitch_4
        0xc5 -> :sswitch_4
        0xc6 -> :sswitch_4
        0xc7 -> :sswitch_4
        0xc8 -> :sswitch_4
        0xc9 -> :sswitch_4
        0xca -> :sswitch_4
        0xcb -> :sswitch_4
        0xcc -> :sswitch_4
        0xcd -> :sswitch_4
        0xce -> :sswitch_4
        0xcf -> :sswitch_4
        0xd0 -> :sswitch_4
        0xd1 -> :sswitch_4
        0xd2 -> :sswitch_4
        0xd3 -> :sswitch_4
        0xd4 -> :sswitch_4
        0xd5 -> :sswitch_4
        0xd6 -> :sswitch_4
        0xd7 -> :sswitch_4
        0xd8 -> :sswitch_4
        0xd9 -> :sswitch_4
        0xda -> :sswitch_4
        0xdb -> :sswitch_4
        0xdc -> :sswitch_4
        0xdd -> :sswitch_4
        0xde -> :sswitch_4
        0xdf -> :sswitch_4
        0x12c -> :sswitch_4
        0x12d -> :sswitch_4
        0x190 -> :sswitch_4
        0x191 -> :sswitch_4
        0x192 -> :sswitch_4
        0x193 -> :sswitch_4
        0x194 -> :sswitch_4
        0x195 -> :sswitch_4
        0x196 -> :sswitch_4
        0x197 -> :sswitch_4
        0x198 -> :sswitch_4
        0x199 -> :sswitch_4
        0x19a -> :sswitch_4
        0x19b -> :sswitch_4
        0x19c -> :sswitch_4
        0x19d -> :sswitch_4
        0x1f4 -> :sswitch_4
        0x1f5 -> :sswitch_4
        0x1f6 -> :sswitch_4
        0x1f7 -> :sswitch_4
        0x1f8 -> :sswitch_4
        0x1f9 -> :sswitch_4
        0x1fa -> :sswitch_4
        0x1fb -> :sswitch_4
        0x1fc -> :sswitch_4
        0x1fd -> :sswitch_4
        0x1fe -> :sswitch_4
        0x1ff -> :sswitch_4
        0x200 -> :sswitch_4
        0x201 -> :sswitch_4
        0x202 -> :sswitch_4
        0x203 -> :sswitch_4
        0x204 -> :sswitch_4
        0x205 -> :sswitch_4
        0x206 -> :sswitch_4
        0x207 -> :sswitch_4
        0x208 -> :sswitch_4
        0x209 -> :sswitch_4
        0x20a -> :sswitch_4
        0x20b -> :sswitch_4
        0x20c -> :sswitch_4
        0x20d -> :sswitch_4
        0x20e -> :sswitch_4
        0x20f -> :sswitch_4
        0x210 -> :sswitch_4
        0x211 -> :sswitch_4
        0x212 -> :sswitch_4
        0x213 -> :sswitch_4
        0x214 -> :sswitch_4
        0x215 -> :sswitch_4
        0x216 -> :sswitch_4
        0x217 -> :sswitch_4
        0x218 -> :sswitch_4
        0x219 -> :sswitch_4
        0x21a -> :sswitch_4
        0x3e8 -> :sswitch_4
        0x3e9 -> :sswitch_4
        0x3ea -> :sswitch_4
        0x3eb -> :sswitch_4
        0x3ec -> :sswitch_4
        0x3ed -> :sswitch_4
        0x3ee -> :sswitch_4
        0x3ef -> :sswitch_4
        0x3f0 -> :sswitch_4
        0x3f1 -> :sswitch_4
        0x3f2 -> :sswitch_4
    .end sparse-switch

    .line 1341
    :sswitch_data_3
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_6
        0x2 -> :sswitch_6
        0xa -> :sswitch_6
        0x14 -> :sswitch_6
    .end sparse-switch

    .line 1354
    :sswitch_data_4
    .sparse-switch
        0x14 -> :sswitch_8
        0x1e -> :sswitch_8
        0x28 -> :sswitch_8
        0x32 -> :sswitch_8
        0x5a -> :sswitch_8
        0x64 -> :sswitch_8
        0x6e -> :sswitch_8
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    .line 49
    iget v0, p0, Lmdy;->a:I

    if-eq v0, v2, :cond_0

    .line 50
    const/4 v0, 0x1

    iget v1, p0, Lmdy;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 52
    :cond_0
    iget v0, p0, Lmdy;->b:I

    if-eq v0, v2, :cond_1

    .line 53
    const/4 v0, 0x2

    iget v1, p0, Lmdy;->b:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 55
    :cond_1
    iget v0, p0, Lmdy;->c:I

    if-eq v0, v2, :cond_2

    .line 56
    const/4 v0, 0x3

    iget v1, p0, Lmdy;->c:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 58
    :cond_2
    iget v0, p0, Lmdy;->d:I

    if-eq v0, v2, :cond_3

    .line 59
    const/4 v0, 0x4

    iget v1, p0, Lmdy;->d:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 61
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 62
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 66
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 67
    iget v1, p0, Lmdy;->a:I

    if-eq v1, v3, :cond_0

    .line 68
    const/4 v1, 0x1

    iget v2, p0, Lmdy;->a:I

    .line 69
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 71
    :cond_0
    iget v1, p0, Lmdy;->b:I

    if-eq v1, v3, :cond_1

    .line 72
    const/4 v1, 0x2

    iget v2, p0, Lmdy;->b:I

    .line 73
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 75
    :cond_1
    iget v1, p0, Lmdy;->c:I

    if-eq v1, v3, :cond_2

    .line 76
    const/4 v1, 0x3

    iget v2, p0, Lmdy;->c:I

    .line 77
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    :cond_2
    iget v1, p0, Lmdy;->d:I

    if-eq v1, v3, :cond_3

    .line 80
    const/4 v1, 0x4

    iget v2, p0, Lmdy;->d:I

    .line 81
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    :cond_3
    return v0
.end method
