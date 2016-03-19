.class public final Ljin;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljin;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljim;

.field public b:I

.field public c:Ljio;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Llyb;-><init>()V

    .line 123
    iput-object v1, p0, Ljin;->a:Ljim;

    .line 124
    const/high16 v0, -0x80000000

    iput v0, p0, Ljin;->b:I

    .line 125
    iput-object v1, p0, Ljin;->c:Ljio;

    .line 126
    iput-object v1, p0, Ljin;->eD:Llyd;

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Ljin;->eE:I

    .line 128
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1168
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1169
    sparse-switch v0, :sswitch_data_0

    .line 1173
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1174
    :sswitch_0
    return-object p0

    .line 1179
    :sswitch_1
    iget-object v0, p0, Ljin;->a:Ljim;

    if-nez v0, :cond_1

    .line 1180
    new-instance v0, Ljim;

    invoke-direct {v0}, Ljim;-><init>()V

    iput-object v0, p0, Ljin;->a:Ljim;

    .line 1182
    :cond_1
    iget-object v0, p0, Ljin;->a:Ljim;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1186
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1187
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1190
    :pswitch_0
    iput v0, p0, Ljin;->b:I

    goto :goto_0

    .line 1196
    :sswitch_3
    iget-object v0, p0, Ljin;->c:Ljio;

    if-nez v0, :cond_2

    .line 1197
    new-instance v0, Ljio;

    invoke-direct {v0}, Ljio;-><init>()V

    iput-object v0, p0, Ljin;->c:Ljio;

    .line 1199
    :cond_2
    iget-object v0, p0, Ljin;->c:Ljio;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1169
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    .line 1187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Ljin;->a:Ljim;

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x1

    iget-object v1, p0, Ljin;->a:Ljim;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 136
    :cond_0
    iget v0, p0, Ljin;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 137
    const/4 v0, 0x2

    iget v1, p0, Ljin;->b:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 139
    :cond_1
    iget-object v0, p0, Ljin;->c:Ljio;

    if-eqz v0, :cond_2

    .line 140
    const/4 v0, 0x3

    iget-object v1, p0, Ljin;->c:Ljio;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 142
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 143
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 147
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 148
    iget-object v1, p0, Ljin;->a:Ljim;

    if-eqz v1, :cond_0

    .line 149
    const/4 v1, 0x1

    iget-object v2, p0, Ljin;->a:Ljim;

    .line 150
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 152
    :cond_0
    iget v1, p0, Ljin;->b:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 153
    const/4 v1, 0x2

    iget v2, p0, Ljin;->b:I

    .line 154
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 156
    :cond_1
    iget-object v1, p0, Ljin;->c:Ljio;

    if-eqz v1, :cond_2

    .line 157
    const/4 v1, 0x3

    iget-object v2, p0, Ljin;->c:Ljio;

    .line 158
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 160
    :cond_2
    return v0
.end method
