.class public final Ljpx;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljpx;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5101
    invoke-direct {p0}, Llyb;-><init>()V

    .line 6106
    iput-object v0, p0, Ljpx;->a:Ljava/lang/Integer;

    .line 6107
    iput-object v0, p0, Ljpx;->b:Ljava/lang/String;

    .line 6108
    iput-object v0, p0, Ljpx;->c:Ljava/lang/String;

    .line 6109
    iput-object v0, p0, Ljpx;->eD:Llyd;

    .line 6110
    const/4 v0, -0x1

    iput v0, p0, Ljpx;->eE:I

    .line 5103
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 6152
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 6153
    sparse-switch v0, :sswitch_data_0

    .line 6157
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6158
    :sswitch_0
    return-object p0

    .line 6163
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljpx;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 6167
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljpx;->b:Ljava/lang/String;

    goto :goto_0

    .line 6171
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljpx;->c:Ljava/lang/String;

    goto :goto_0

    .line 6153
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 5117
    iget-object v0, p0, Ljpx;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 5118
    const/4 v0, 0x1

    iget-object v1, p0, Ljpx;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 5120
    :cond_0
    iget-object v0, p0, Ljpx;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5121
    const/4 v0, 0x2

    iget-object v1, p0, Ljpx;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5123
    :cond_1
    iget-object v0, p0, Ljpx;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 5124
    const/4 v0, 0x3

    iget-object v1, p0, Ljpx;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5126
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 5127
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 5131
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 5132
    iget-object v1, p0, Ljpx;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 5133
    const/4 v1, 0x1

    iget-object v2, p0, Ljpx;->a:Ljava/lang/Integer;

    .line 5134
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5136
    :cond_0
    iget-object v1, p0, Ljpx;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 5137
    const/4 v1, 0x2

    iget-object v2, p0, Ljpx;->b:Ljava/lang/String;

    .line 5138
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5140
    :cond_1
    iget-object v1, p0, Ljpx;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 5141
    const/4 v1, 0x3

    iget-object v2, p0, Ljpx;->c:Ljava/lang/String;

    .line 5142
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5144
    :cond_2
    return v0
.end method
