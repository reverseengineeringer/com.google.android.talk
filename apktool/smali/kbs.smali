.class public final Lkbs;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkbs;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llzv;

.field public b:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6137
    invoke-direct {p0}, Llyb;-><init>()V

    .line 7142
    iput-object v0, p0, Lkbs;->a:Llzv;

    .line 7143
    iput-object v0, p0, Lkbs;->b:[B

    .line 7144
    iput-object v0, p0, Lkbs;->eD:Llyd;

    .line 7145
    const/4 v0, -0x1

    iput v0, p0, Lkbs;->eE:I

    .line 6139
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 7180
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 7181
    sparse-switch v0, :sswitch_data_0

    .line 7185
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7186
    :sswitch_0
    return-object p0

    .line 7191
    :sswitch_1
    iget-object v0, p0, Lkbs;->a:Llzv;

    if-nez v0, :cond_1

    .line 7192
    new-instance v0, Llzv;

    invoke-direct {v0}, Llzv;-><init>()V

    iput-object v0, p0, Lkbs;->a:Llzv;

    .line 7194
    :cond_1
    iget-object v0, p0, Lkbs;->a:Llzv;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 7198
    :sswitch_2
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Lkbs;->b:[B

    goto :goto_0

    .line 7181
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 6152
    iget-object v0, p0, Lkbs;->a:Llzv;

    if-eqz v0, :cond_0

    .line 6153
    const/4 v0, 0x1

    iget-object v1, p0, Lkbs;->a:Llzv;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 6155
    :cond_0
    iget-object v0, p0, Lkbs;->b:[B

    if-eqz v0, :cond_1

    .line 6156
    const/4 v0, 0x2

    iget-object v1, p0, Lkbs;->b:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 6158
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 6159
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 6163
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 6164
    iget-object v1, p0, Lkbs;->a:Llzv;

    if-eqz v1, :cond_0

    .line 6165
    const/4 v1, 0x1

    iget-object v2, p0, Lkbs;->a:Llzv;

    .line 6166
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6168
    :cond_0
    iget-object v1, p0, Lkbs;->b:[B

    if-eqz v1, :cond_1

    .line 6169
    const/4 v1, 0x2

    iget-object v2, p0, Lkbs;->b:[B

    .line 6170
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 6172
    :cond_1
    return v0
.end method
