.class public final Lmdx;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmdx;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1043
    iput-object v0, p0, Lmdx;->a:Ljava/lang/Integer;

    .line 1044
    iput-object v0, p0, Lmdx;->b:Ljava/lang/Integer;

    .line 1045
    iput-object v0, p0, Lmdx;->c:Ljava/lang/Integer;

    .line 1046
    iput-object v0, p0, Lmdx;->eD:Llyd;

    .line 1047
    const/4 v0, -0x1

    iput v0, p0, Lmdx;->eE:I

    .line 40
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1089
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1090
    sparse-switch v0, :sswitch_data_0

    .line 1094
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1095
    :sswitch_0
    return-object p0

    .line 1100
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1101
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 1113
    :sswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmdx;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1119
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1120
    sparse-switch v0, :sswitch_data_2

    goto :goto_0

    .line 1159
    :sswitch_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmdx;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 1165
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1166
    sparse-switch v0, :sswitch_data_3

    goto :goto_0

    .line 1171
    :sswitch_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmdx;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 1090
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_3
        0x18 -> :sswitch_5
    .end sparse-switch

    .line 1101
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
    .end sparse-switch

    .line 1120
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_4
        0x9e -> :sswitch_4
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
        0x19e -> :sswitch_4
        0x19f -> :sswitch_4
        0x1a0 -> :sswitch_4
        0x1a1 -> :sswitch_4
        0x1a2 -> :sswitch_4
        0x1a3 -> :sswitch_4
        0x1a4 -> :sswitch_4
        0x1a5 -> :sswitch_4
        0x258 -> :sswitch_4
        0x25a -> :sswitch_4
        0x25b -> :sswitch_4
        0x25c -> :sswitch_4
        0x25d -> :sswitch_4
        0x25e -> :sswitch_4
        0x25f -> :sswitch_4
        0x260 -> :sswitch_4
        0x384 -> :sswitch_4
        0x385 -> :sswitch_4
        0x386 -> :sswitch_4
        0x387 -> :sswitch_4
        0x388 -> :sswitch_4
        0x389 -> :sswitch_4
    .end sparse-switch

    .line 1166
    :sswitch_data_3
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_6
        0x2 -> :sswitch_6
        0xa -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lmdx;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x1

    iget-object v1, p0, Lmdx;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 57
    :cond_0
    iget-object v0, p0, Lmdx;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 58
    const/4 v0, 0x2

    iget-object v1, p0, Lmdx;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 60
    :cond_1
    iget-object v0, p0, Lmdx;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 61
    const/4 v0, 0x3

    iget-object v1, p0, Lmdx;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 63
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 64
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 69
    iget-object v1, p0, Lmdx;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 70
    const/4 v1, 0x1

    iget-object v2, p0, Lmdx;->a:Ljava/lang/Integer;

    .line 71
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    :cond_0
    iget-object v1, p0, Lmdx;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 74
    const/4 v1, 0x2

    iget-object v2, p0, Lmdx;->b:Ljava/lang/Integer;

    .line 75
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    :cond_1
    iget-object v1, p0, Lmdx;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 78
    const/4 v1, 0x3

    iget-object v2, p0, Lmdx;->c:Ljava/lang/Integer;

    .line 79
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    :cond_2
    return v0
.end method
