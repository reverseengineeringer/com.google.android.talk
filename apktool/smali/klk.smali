.class public final Lklk;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lklk;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Lkll;

.field public e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 954
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1959
    iput-object v0, p0, Lklk;->a:Ljava/lang/String;

    .line 1960
    iput-object v0, p0, Lklk;->b:Ljava/lang/Integer;

    .line 1961
    iput-object v0, p0, Lklk;->c:Ljava/lang/Integer;

    .line 1962
    iput-object v0, p0, Lklk;->d:Lkll;

    .line 1963
    iput-object v0, p0, Lklk;->e:Ljava/lang/Integer;

    .line 1964
    iput-object v0, p0, Lklk;->eD:Llyd;

    .line 1965
    const/4 v0, -0x1

    iput v0, p0, Lklk;->eE:I

    .line 956
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2021
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2022
    sparse-switch v0, :sswitch_data_0

    .line 2026
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2027
    :sswitch_0
    return-object p0

    .line 2032
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lklk;->a:Ljava/lang/String;

    goto :goto_0

    .line 2036
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lklk;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 2040
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2041
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2045
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lklk;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 2051
    :sswitch_4
    iget-object v0, p0, Lklk;->d:Lkll;

    if-nez v0, :cond_1

    .line 2052
    new-instance v0, Lkll;

    invoke-direct {v0}, Lkll;-><init>()V

    iput-object v0, p0, Lklk;->d:Lkll;

    .line 2054
    :cond_1
    iget-object v0, p0, Lklk;->d:Lkll;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2058
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2059
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 2175
    :sswitch_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lklk;->e:Ljava/lang/Integer;

    goto :goto_0

    .line 2022
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch

    .line 2041
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2059
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_6
        0x2 -> :sswitch_6
        0x3 -> :sswitch_6
        0x4 -> :sswitch_6
        0x5 -> :sswitch_6
        0x6 -> :sswitch_6
        0x7 -> :sswitch_6
        0x8 -> :sswitch_6
        0x9 -> :sswitch_6
        0x64 -> :sswitch_6
        0x65 -> :sswitch_6
        0x66 -> :sswitch_6
        0x67 -> :sswitch_6
        0x68 -> :sswitch_6
        0x69 -> :sswitch_6
        0x6a -> :sswitch_6
        0x6b -> :sswitch_6
        0x6c -> :sswitch_6
        0x6d -> :sswitch_6
        0x6e -> :sswitch_6
        0x6f -> :sswitch_6
        0x70 -> :sswitch_6
        0x71 -> :sswitch_6
        0x72 -> :sswitch_6
        0xc8 -> :sswitch_6
        0xc9 -> :sswitch_6
        0xca -> :sswitch_6
        0xcb -> :sswitch_6
        0xcc -> :sswitch_6
        0xcd -> :sswitch_6
        0x12c -> :sswitch_6
        0x12d -> :sswitch_6
        0x12e -> :sswitch_6
        0x12f -> :sswitch_6
        0x130 -> :sswitch_6
        0x131 -> :sswitch_6
        0x132 -> :sswitch_6
        0x133 -> :sswitch_6
        0x134 -> :sswitch_6
        0x135 -> :sswitch_6
        0x136 -> :sswitch_6
        0x137 -> :sswitch_6
        0x138 -> :sswitch_6
        0x139 -> :sswitch_6
        0x13a -> :sswitch_6
        0x13b -> :sswitch_6
        0x13c -> :sswitch_6
        0x13d -> :sswitch_6
        0x13e -> :sswitch_6
        0x13f -> :sswitch_6
        0x140 -> :sswitch_6
        0x141 -> :sswitch_6
        0x142 -> :sswitch_6
        0x143 -> :sswitch_6
        0x144 -> :sswitch_6
        0x145 -> :sswitch_6
        0x146 -> :sswitch_6
        0x147 -> :sswitch_6
        0x148 -> :sswitch_6
        0x149 -> :sswitch_6
        0x14a -> :sswitch_6
        0x14b -> :sswitch_6
        0x14c -> :sswitch_6
        0x14d -> :sswitch_6
        0x14e -> :sswitch_6
        0x14f -> :sswitch_6
        0x150 -> :sswitch_6
        0x151 -> :sswitch_6
        0x152 -> :sswitch_6
        0x153 -> :sswitch_6
        0x154 -> :sswitch_6
        0x155 -> :sswitch_6
        0x156 -> :sswitch_6
        0x157 -> :sswitch_6
        0x158 -> :sswitch_6
        0x159 -> :sswitch_6
        0x15a -> :sswitch_6
        0x15b -> :sswitch_6
        0x15c -> :sswitch_6
        0x15d -> :sswitch_6
        0x15e -> :sswitch_6
        0x15f -> :sswitch_6
        0x160 -> :sswitch_6
        0x161 -> :sswitch_6
        0x162 -> :sswitch_6
        0x163 -> :sswitch_6
        0x164 -> :sswitch_6
        0x165 -> :sswitch_6
        0x166 -> :sswitch_6
        0x167 -> :sswitch_6
        0x168 -> :sswitch_6
        0x169 -> :sswitch_6
        0x16a -> :sswitch_6
        0x16b -> :sswitch_6
        0x190 -> :sswitch_6
        0x191 -> :sswitch_6
        0x192 -> :sswitch_6
        0x193 -> :sswitch_6
        0x194 -> :sswitch_6
        0x195 -> :sswitch_6
        0x196 -> :sswitch_6
        0x197 -> :sswitch_6
        0x1f4 -> :sswitch_6
        0x1f5 -> :sswitch_6
        0x1f6 -> :sswitch_6
        0x1f7 -> :sswitch_6
        0x3e8 -> :sswitch_6
        0x3e9 -> :sswitch_6
        0x3ea -> :sswitch_6
        0x3eb -> :sswitch_6
        0x3ec -> :sswitch_6
        0x3ed -> :sswitch_6
        0x44c -> :sswitch_6
        0x44d -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 972
    iget-object v0, p0, Lklk;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 973
    const/4 v0, 0x1

    iget-object v1, p0, Lklk;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 975
    :cond_0
    iget-object v0, p0, Lklk;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 976
    const/4 v0, 0x2

    iget-object v1, p0, Lklk;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 978
    :cond_1
    iget-object v0, p0, Lklk;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 979
    const/4 v0, 0x3

    iget-object v1, p0, Lklk;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 981
    :cond_2
    iget-object v0, p0, Lklk;->d:Lkll;

    if-eqz v0, :cond_3

    .line 982
    const/4 v0, 0x4

    iget-object v1, p0, Lklk;->d:Lkll;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 984
    :cond_3
    iget-object v0, p0, Lklk;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 985
    const/4 v0, 0x5

    iget-object v1, p0, Lklk;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 987
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 988
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 992
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 993
    iget-object v1, p0, Lklk;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 994
    const/4 v1, 0x1

    iget-object v2, p0, Lklk;->a:Ljava/lang/String;

    .line 995
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 997
    :cond_0
    iget-object v1, p0, Lklk;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 998
    const/4 v1, 0x2

    iget-object v2, p0, Lklk;->b:Ljava/lang/Integer;

    .line 999
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1001
    :cond_1
    iget-object v1, p0, Lklk;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 1002
    const/4 v1, 0x3

    iget-object v2, p0, Lklk;->c:Ljava/lang/Integer;

    .line 1003
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1005
    :cond_2
    iget-object v1, p0, Lklk;->d:Lkll;

    if-eqz v1, :cond_3

    .line 1006
    const/4 v1, 0x4

    iget-object v2, p0, Lklk;->d:Lkll;

    .line 1007
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1009
    :cond_3
    iget-object v1, p0, Lklk;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 1010
    const/4 v1, 0x5

    iget-object v2, p0, Lklk;->e:Ljava/lang/Integer;

    .line 1011
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1013
    :cond_4
    return v0
.end method
