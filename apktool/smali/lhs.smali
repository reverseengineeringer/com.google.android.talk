.class public final Llhs;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llhs;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Llht;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1062
    iput-object v0, p0, Llhs;->a:Ljava/lang/Integer;

    .line 1063
    iput-object v0, p0, Llhs;->b:Ljava/lang/Integer;

    .line 1064
    iput-object v0, p0, Llhs;->c:Llht;

    .line 1065
    iput-object v0, p0, Llhs;->d:Ljava/lang/String;

    .line 1066
    iput-object v0, p0, Llhs;->eD:Llyd;

    .line 1067
    const/4 v0, -0x1

    iput v0, p0, Llhs;->eE:I

    .line 59
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1116
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1117
    sparse-switch v0, :sswitch_data_0

    .line 1121
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1122
    :sswitch_0
    return-object p0

    .line 1127
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1128
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1134
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llhs;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1140
    :sswitch_2
    iget-object v0, p0, Llhs;->c:Llht;

    if-nez v0, :cond_1

    .line 1141
    new-instance v0, Llht;

    invoke-direct {v0}, Llht;-><init>()V

    iput-object v0, p0, Llhs;->c:Llht;

    .line 1143
    :cond_1
    iget-object v0, p0, Llhs;->c:Llht;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1147
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llhs;->d:Ljava/lang/String;

    goto :goto_0

    .line 1151
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1152
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1156
    :pswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llhs;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 1117
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 1128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1152
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Llhs;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x1

    iget-object v1, p0, Llhs;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 77
    :cond_0
    iget-object v0, p0, Llhs;->c:Llht;

    if-eqz v0, :cond_1

    .line 78
    const/4 v0, 0x2

    iget-object v1, p0, Llhs;->c:Llht;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 80
    :cond_1
    iget-object v0, p0, Llhs;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 81
    const/4 v0, 0x3

    iget-object v1, p0, Llhs;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 83
    :cond_2
    iget-object v0, p0, Llhs;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 84
    const/4 v0, 0x4

    iget-object v1, p0, Llhs;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 86
    :cond_3
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
    iget-object v1, p0, Llhs;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 93
    const/4 v1, 0x1

    iget-object v2, p0, Llhs;->a:Ljava/lang/Integer;

    .line 94
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    :cond_0
    iget-object v1, p0, Llhs;->c:Llht;

    if-eqz v1, :cond_1

    .line 97
    const/4 v1, 0x2

    iget-object v2, p0, Llhs;->c:Llht;

    .line 98
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 100
    :cond_1
    iget-object v1, p0, Llhs;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 101
    const/4 v1, 0x3

    iget-object v2, p0, Llhs;->d:Ljava/lang/String;

    .line 102
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    :cond_2
    iget-object v1, p0, Llhs;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 105
    const/4 v1, 0x4

    iget-object v2, p0, Llhs;->b:Ljava/lang/Integer;

    .line 106
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    :cond_3
    return v0
.end method
