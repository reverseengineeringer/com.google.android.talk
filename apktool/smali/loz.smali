.class public final Lloz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lloz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lllj;

.field public c:Ljava/lang/Integer;

.field public d:Llpb;

.field public e:Ljava/lang/String;

.field public f:Llpa;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1062
    iput-object v0, p0, Lloz;->a:Ljava/lang/String;

    .line 1063
    iput-object v0, p0, Lloz;->b:Lllj;

    .line 1064
    iput-object v0, p0, Lloz;->c:Ljava/lang/Integer;

    .line 1065
    iput-object v0, p0, Lloz;->d:Llpb;

    .line 1066
    iput-object v0, p0, Lloz;->e:Ljava/lang/String;

    .line 1067
    iput-object v0, p0, Lloz;->f:Llpa;

    .line 1068
    iput-object v0, p0, Lloz;->eD:Llyd;

    .line 1069
    const/4 v0, -0x1

    iput v0, p0, Lloz;->eE:I

    .line 59
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1132
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1133
    sparse-switch v0, :sswitch_data_0

    .line 1137
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1138
    :sswitch_0
    return-object p0

    .line 1143
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lloz;->a:Ljava/lang/String;

    goto :goto_0

    .line 1147
    :sswitch_2
    iget-object v0, p0, Lloz;->b:Lllj;

    if-nez v0, :cond_1

    .line 1148
    new-instance v0, Lllj;

    invoke-direct {v0}, Lllj;-><init>()V

    iput-object v0, p0, Lloz;->b:Lllj;

    .line 1150
    :cond_1
    iget-object v0, p0, Lloz;->b:Lllj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1154
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1155
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1162
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lloz;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 1168
    :sswitch_4
    iget-object v0, p0, Lloz;->d:Llpb;

    if-nez v0, :cond_2

    .line 1169
    new-instance v0, Llpb;

    invoke-direct {v0}, Llpb;-><init>()V

    iput-object v0, p0, Lloz;->d:Llpb;

    .line 1171
    :cond_2
    iget-object v0, p0, Lloz;->d:Llpb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1175
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lloz;->e:Ljava/lang/String;

    goto :goto_0

    .line 1179
    :sswitch_6
    iget-object v0, p0, Lloz;->f:Llpa;

    if-nez v0, :cond_3

    .line 1180
    new-instance v0, Llpa;

    invoke-direct {v0}, Llpa;-><init>()V

    iput-object v0, p0, Lloz;->f:Llpa;

    .line 1182
    :cond_3
    iget-object v0, p0, Lloz;->f:Llpa;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1133
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch

    .line 1155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
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
    .line 76
    iget-object v0, p0, Lloz;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x1

    iget-object v1, p0, Lloz;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 79
    :cond_0
    iget-object v0, p0, Lloz;->b:Lllj;

    if-eqz v0, :cond_1

    .line 80
    const/4 v0, 0x2

    iget-object v1, p0, Lloz;->b:Lllj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 82
    :cond_1
    iget-object v0, p0, Lloz;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 83
    const/4 v0, 0x3

    iget-object v1, p0, Lloz;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 85
    :cond_2
    iget-object v0, p0, Lloz;->d:Llpb;

    if-eqz v0, :cond_3

    .line 86
    const/4 v0, 0x4

    iget-object v1, p0, Lloz;->d:Llpb;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 88
    :cond_3
    iget-object v0, p0, Lloz;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 89
    const/4 v0, 0x5

    iget-object v1, p0, Lloz;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 91
    :cond_4
    iget-object v0, p0, Lloz;->f:Llpa;

    if-eqz v0, :cond_5

    .line 92
    const/4 v0, 0x6

    iget-object v1, p0, Lloz;->f:Llpa;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 94
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 95
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 99
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 100
    iget-object v1, p0, Lloz;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 101
    const/4 v1, 0x1

    iget-object v2, p0, Lloz;->a:Ljava/lang/String;

    .line 102
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    :cond_0
    iget-object v1, p0, Lloz;->b:Lllj;

    if-eqz v1, :cond_1

    .line 105
    const/4 v1, 0x2

    iget-object v2, p0, Lloz;->b:Lllj;

    .line 106
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    :cond_1
    iget-object v1, p0, Lloz;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 109
    const/4 v1, 0x3

    iget-object v2, p0, Lloz;->c:Ljava/lang/Integer;

    .line 110
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 112
    :cond_2
    iget-object v1, p0, Lloz;->d:Llpb;

    if-eqz v1, :cond_3

    .line 113
    const/4 v1, 0x4

    iget-object v2, p0, Lloz;->d:Llpb;

    .line 114
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 116
    :cond_3
    iget-object v1, p0, Lloz;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 117
    const/4 v1, 0x5

    iget-object v2, p0, Lloz;->e:Ljava/lang/String;

    .line 118
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 120
    :cond_4
    iget-object v1, p0, Lloz;->f:Llpa;

    if-eqz v1, :cond_5

    .line 121
    const/4 v1, 0x6

    iget-object v2, p0, Lloz;->f:Llpa;

    .line 122
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 124
    :cond_5
    return v0
.end method
