.class public final Llob;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llob;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1129
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2134
    iput-object v0, p0, Llob;->a:Ljava/lang/Integer;

    .line 2135
    iput-object v0, p0, Llob;->b:Ljava/lang/Boolean;

    .line 2136
    iput-object v0, p0, Llob;->eD:Llyd;

    .line 2137
    const/4 v0, -0x1

    iput v0, p0, Llob;->eE:I

    .line 1131
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3172
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3173
    sparse-switch v0, :sswitch_data_0

    .line 3177
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3178
    :sswitch_0
    return-object p0

    .line 3183
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3184
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3188
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llob;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 3194
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llob;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 3173
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 3184
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1144
    iget-object v0, p0, Llob;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1145
    const/4 v0, 0x1

    iget-object v1, p0, Llob;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1147
    :cond_0
    iget-object v0, p0, Llob;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 1148
    const/4 v0, 0x2

    iget-object v1, p0, Llob;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 1150
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1151
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1155
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1156
    iget-object v1, p0, Llob;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1157
    const/4 v1, 0x1

    iget-object v2, p0, Llob;->a:Ljava/lang/Integer;

    .line 1158
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1160
    :cond_0
    iget-object v1, p0, Llob;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 1161
    const/4 v1, 0x2

    iget-object v2, p0, Llob;->b:Ljava/lang/Boolean;

    .line 1162
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1162
    add-int/2addr v0, v1

    .line 1164
    :cond_1
    return v0
.end method
