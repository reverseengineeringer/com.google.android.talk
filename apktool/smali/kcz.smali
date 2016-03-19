.class public final Lkcz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkcz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20143
    invoke-direct {p0}, Llyb;-><init>()V

    .line 21148
    iput-object v0, p0, Lkcz;->a:Ljava/lang/Long;

    .line 21149
    iput-object v0, p0, Lkcz;->b:Ljava/lang/Integer;

    .line 21150
    iput-object v0, p0, Lkcz;->eD:Llyd;

    .line 21151
    const/4 v0, -0x1

    iput v0, p0, Lkcz;->eE:I

    .line 20145
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 21186
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 21187
    sparse-switch v0, :sswitch_data_0

    .line 21191
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21192
    :sswitch_0
    return-object p0

    .line 21197
    :sswitch_1
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkcz;->a:Ljava/lang/Long;

    goto :goto_0

    .line 21201
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 21202
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 21208
    :sswitch_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkcz;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 21187
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 21202
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0xa -> :sswitch_3
        0x14 -> :sswitch_3
        0x1e -> :sswitch_3
        0x28 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 20158
    iget-object v0, p0, Lkcz;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 20159
    const/4 v0, 0x1

    iget-object v1, p0, Lkcz;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 20161
    :cond_0
    iget-object v0, p0, Lkcz;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 20162
    const/4 v0, 0x2

    iget-object v1, p0, Lkcz;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 20164
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 20165
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 20169
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 20170
    iget-object v1, p0, Lkcz;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 20171
    const/4 v1, 0x1

    iget-object v2, p0, Lkcz;->a:Ljava/lang/Long;

    .line 20172
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 20174
    :cond_0
    iget-object v1, p0, Lkcz;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 20175
    const/4 v1, 0x2

    iget-object v2, p0, Lkcz;->b:Ljava/lang/Integer;

    .line 20176
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 20178
    :cond_1
    return v0
.end method
