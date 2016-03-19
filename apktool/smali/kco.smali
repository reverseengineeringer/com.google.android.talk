.class public final Lkco;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkco;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15144
    invoke-direct {p0}, Llyb;-><init>()V

    .line 16149
    iput-object v0, p0, Lkco;->a:Ljava/lang/String;

    .line 16150
    iput-object v0, p0, Lkco;->eD:Llyd;

    .line 16151
    const/4 v0, -0x1

    iput v0, p0, Lkco;->eE:I

    .line 15146
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 16179
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 16180
    sparse-switch v0, :sswitch_data_0

    .line 16184
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16185
    :sswitch_0
    return-object p0

    .line 16190
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkco;->a:Ljava/lang/String;

    goto :goto_0

    .line 16180
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 15158
    iget-object v0, p0, Lkco;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 15159
    const/4 v0, 0x1

    iget-object v1, p0, Lkco;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 15161
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 15162
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 15166
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 15167
    iget-object v1, p0, Lkco;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15168
    const/4 v1, 0x1

    iget-object v2, p0, Lkco;->a:Ljava/lang/String;

    .line 15169
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15171
    :cond_0
    return v0
.end method
