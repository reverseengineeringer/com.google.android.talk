.class public final Llgz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llgz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Llhb;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Llyb;-><init>()V

    .line 54
    iput v1, p0, Llgz;->a:I

    .line 55
    iput v1, p0, Llgz;->b:I

    .line 56
    iput-object v0, p0, Llgz;->c:Llhb;

    .line 57
    iput-object v0, p0, Llgz;->d:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Llgz;->eD:Llyd;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Llgz;->eE:I

    .line 60
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1107
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1108
    sparse-switch v0, :sswitch_data_0

    .line 1112
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1113
    :sswitch_0
    return-object p0

    .line 1118
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1119
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1125
    :pswitch_1
    iput v0, p0, Llgz;->a:I

    goto :goto_0

    .line 1131
    :sswitch_2
    iget-object v0, p0, Llgz;->c:Llhb;

    if-nez v0, :cond_1

    .line 1132
    new-instance v0, Llhb;

    invoke-direct {v0}, Llhb;-><init>()V

    iput-object v0, p0, Llgz;->c:Llhb;

    .line 1134
    :cond_1
    iget-object v0, p0, Llgz;->c:Llhb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1138
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llgz;->d:Ljava/lang/String;

    goto :goto_0

    .line 1142
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1143
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1147
    :pswitch_2
    iput v0, p0, Llgz;->b:I

    goto :goto_0

    .line 1108
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 1119
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

    .line 1143
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    .line 65
    iget v0, p0, Llgz;->a:I

    if-eq v0, v2, :cond_0

    .line 66
    const/4 v0, 0x1

    iget v1, p0, Llgz;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 68
    :cond_0
    iget-object v0, p0, Llgz;->c:Llhb;

    if-eqz v0, :cond_1

    .line 69
    const/4 v0, 0x2

    iget-object v1, p0, Llgz;->c:Llhb;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 71
    :cond_1
    iget-object v0, p0, Llgz;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 72
    const/4 v0, 0x3

    iget-object v1, p0, Llgz;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 74
    :cond_2
    iget v0, p0, Llgz;->b:I

    if-eq v0, v2, :cond_3

    .line 75
    const/4 v0, 0x4

    iget v1, p0, Llgz;->b:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 77
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 78
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 82
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 83
    iget v1, p0, Llgz;->a:I

    if-eq v1, v3, :cond_0

    .line 84
    const/4 v1, 0x1

    iget v2, p0, Llgz;->a:I

    .line 85
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    :cond_0
    iget-object v1, p0, Llgz;->c:Llhb;

    if-eqz v1, :cond_1

    .line 88
    const/4 v1, 0x2

    iget-object v2, p0, Llgz;->c:Llhb;

    .line 89
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    :cond_1
    iget-object v1, p0, Llgz;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 92
    const/4 v1, 0x3

    iget-object v2, p0, Llgz;->d:Ljava/lang/String;

    .line 93
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    :cond_2
    iget v1, p0, Llgz;->b:I

    if-eq v1, v3, :cond_3

    .line 96
    const/4 v1, 0x4

    iget v2, p0, Llgz;->b:I

    .line 97
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    :cond_3
    return v0
.end method
