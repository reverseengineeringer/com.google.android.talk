.class public final Ljdl;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljdl;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljdm;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Llyb;-><init>()V

    .line 139
    const/high16 v0, -0x80000000

    iput v0, p0, Ljdl;->a:I

    .line 140
    iput-object v1, p0, Ljdl;->b:Ljdm;

    .line 141
    iput-object v1, p0, Ljdl;->eD:Llyd;

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Ljdl;->eE:I

    .line 143
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1176
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1177
    sparse-switch v0, :sswitch_data_0

    .line 1181
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1182
    :sswitch_0
    return-object p0

    .line 1187
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1188
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1195
    :pswitch_0
    iput v0, p0, Ljdl;->a:I

    goto :goto_0

    .line 1201
    :sswitch_2
    iget-object v0, p0, Ljdl;->b:Ljdm;

    if-nez v0, :cond_1

    .line 1202
    new-instance v0, Ljdm;

    invoke-direct {v0}, Ljdm;-><init>()V

    iput-object v0, p0, Ljdl;->b:Ljdm;

    .line 1204
    :cond_1
    iget-object v0, p0, Ljdl;->b:Ljdm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1177
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 1188
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
    .line 148
    iget v0, p0, Ljdl;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 149
    const/4 v0, 0x1

    iget v1, p0, Ljdl;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 151
    :cond_0
    iget-object v0, p0, Ljdl;->b:Ljdm;

    if-eqz v0, :cond_1

    .line 152
    const/4 v0, 0x2

    iget-object v1, p0, Ljdl;->b:Ljdm;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 154
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 155
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 159
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 160
    iget v1, p0, Ljdl;->a:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 161
    const/4 v1, 0x1

    iget v2, p0, Ljdl;->a:I

    .line 162
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 164
    :cond_0
    iget-object v1, p0, Ljdl;->b:Ljdm;

    if-eqz v1, :cond_1

    .line 165
    const/4 v1, 0x2

    iget-object v2, p0, Ljdl;->b:Ljdm;

    .line 166
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 168
    :cond_1
    return v0
.end method
