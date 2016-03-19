.class public final Llqg;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llqg;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Llqk;

.field public c:Llqi;

.field public d:Llqj;

.field public e:Llqe;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1058
    iput-object v0, p0, Llqg;->a:Ljava/lang/Integer;

    .line 1059
    iput-object v0, p0, Llqg;->b:Llqk;

    .line 1060
    iput-object v0, p0, Llqg;->c:Llqi;

    .line 1061
    iput-object v0, p0, Llqg;->d:Llqj;

    .line 1062
    iput-object v0, p0, Llqg;->e:Llqe;

    .line 1063
    iput-object v0, p0, Llqg;->eD:Llyd;

    .line 1064
    const/4 v0, -0x1

    iput v0, p0, Llqg;->eE:I

    .line 55
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
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
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1132
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1138
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llqg;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1144
    :sswitch_2
    iget-object v0, p0, Llqg;->b:Llqk;

    if-nez v0, :cond_1

    .line 1145
    new-instance v0, Llqk;

    invoke-direct {v0}, Llqk;-><init>()V

    iput-object v0, p0, Llqg;->b:Llqk;

    .line 1147
    :cond_1
    iget-object v0, p0, Llqg;->b:Llqk;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1151
    :sswitch_3
    iget-object v0, p0, Llqg;->c:Llqi;

    if-nez v0, :cond_2

    .line 1152
    new-instance v0, Llqi;

    invoke-direct {v0}, Llqi;-><init>()V

    iput-object v0, p0, Llqg;->c:Llqi;

    .line 1154
    :cond_2
    iget-object v0, p0, Llqg;->c:Llqi;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1158
    :sswitch_4
    iget-object v0, p0, Llqg;->d:Llqj;

    if-nez v0, :cond_3

    .line 1159
    new-instance v0, Llqj;

    invoke-direct {v0}, Llqj;-><init>()V

    iput-object v0, p0, Llqg;->d:Llqj;

    .line 1161
    :cond_3
    iget-object v0, p0, Llqg;->d:Llqj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1165
    :sswitch_5
    iget-object v0, p0, Llqg;->e:Llqe;

    if-nez v0, :cond_4

    .line 1166
    new-instance v0, Llqe;

    invoke-direct {v0}, Llqe;-><init>()V

    iput-object v0, p0, Llqg;->e:Llqe;

    .line 1168
    :cond_4
    iget-object v0, p0, Llqg;->e:Llqe;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1121
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch

    .line 1132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Llqg;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x1

    iget-object v1, p0, Llqg;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 74
    :cond_0
    iget-object v0, p0, Llqg;->b:Llqk;

    if-eqz v0, :cond_1

    .line 75
    const/4 v0, 0x2

    iget-object v1, p0, Llqg;->b:Llqk;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 77
    :cond_1
    iget-object v0, p0, Llqg;->c:Llqi;

    if-eqz v0, :cond_2

    .line 78
    const/4 v0, 0x3

    iget-object v1, p0, Llqg;->c:Llqi;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 80
    :cond_2
    iget-object v0, p0, Llqg;->d:Llqj;

    if-eqz v0, :cond_3

    .line 81
    const/4 v0, 0x4

    iget-object v1, p0, Llqg;->d:Llqj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 83
    :cond_3
    iget-object v0, p0, Llqg;->e:Llqe;

    if-eqz v0, :cond_4

    .line 84
    const/4 v0, 0x5

    iget-object v1, p0, Llqg;->e:Llqe;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 86
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 87
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 91
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 92
    iget-object v1, p0, Llqg;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 93
    const/4 v1, 0x1

    iget-object v2, p0, Llqg;->a:Ljava/lang/Integer;

    .line 94
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    :cond_0
    iget-object v1, p0, Llqg;->b:Llqk;

    if-eqz v1, :cond_1

    .line 97
    const/4 v1, 0x2

    iget-object v2, p0, Llqg;->b:Llqk;

    .line 98
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 100
    :cond_1
    iget-object v1, p0, Llqg;->c:Llqi;

    if-eqz v1, :cond_2

    .line 101
    const/4 v1, 0x3

    iget-object v2, p0, Llqg;->c:Llqi;

    .line 102
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    :cond_2
    iget-object v1, p0, Llqg;->d:Llqj;

    if-eqz v1, :cond_3

    .line 105
    const/4 v1, 0x4

    iget-object v2, p0, Llqg;->d:Llqj;

    .line 106
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    :cond_3
    iget-object v1, p0, Llqg;->e:Llqe;

    if-eqz v1, :cond_4

    .line 109
    const/4 v1, 0x5

    iget-object v2, p0, Llqg;->e:Llqe;

    .line 110
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 112
    :cond_4
    return v0
.end method
