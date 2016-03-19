.class public final Liyi;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liyi;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lizd;

.field public apiHeader:Liye;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2183
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3188
    iput-object v0, p0, Liyi;->apiHeader:Liye;

    .line 3189
    iput-object v0, p0, Liyi;->a:Lizd;

    .line 3190
    iput-object v0, p0, Liyi;->eD:Llyd;

    .line 3191
    const/4 v0, -0x1

    iput v0, p0, Liyi;->eE:I

    .line 2185
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3226
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3227
    sparse-switch v0, :sswitch_data_0

    .line 3231
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3232
    :sswitch_0
    return-object p0

    .line 3237
    :sswitch_1
    iget-object v0, p0, Liyi;->apiHeader:Liye;

    if-nez v0, :cond_1

    .line 3238
    new-instance v0, Liye;

    invoke-direct {v0}, Liye;-><init>()V

    iput-object v0, p0, Liyi;->apiHeader:Liye;

    .line 3240
    :cond_1
    iget-object v0, p0, Liyi;->apiHeader:Liye;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3244
    :sswitch_2
    iget-object v0, p0, Liyi;->a:Lizd;

    if-nez v0, :cond_2

    .line 3245
    new-instance v0, Lizd;

    invoke-direct {v0}, Lizd;-><init>()V

    iput-object v0, p0, Liyi;->a:Lizd;

    .line 3247
    :cond_2
    iget-object v0, p0, Liyi;->a:Lizd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3227
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
    .line 2198
    iget-object v0, p0, Liyi;->apiHeader:Liye;

    if-eqz v0, :cond_0

    .line 2199
    const/4 v0, 0x1

    iget-object v1, p0, Liyi;->apiHeader:Liye;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2201
    :cond_0
    iget-object v0, p0, Liyi;->a:Lizd;

    if-eqz v0, :cond_1

    .line 2202
    const/4 v0, 0x2

    iget-object v1, p0, Liyi;->a:Lizd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2204
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2205
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2209
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2210
    iget-object v1, p0, Liyi;->apiHeader:Liye;

    if-eqz v1, :cond_0

    .line 2211
    const/4 v1, 0x1

    iget-object v2, p0, Liyi;->apiHeader:Liye;

    .line 2212
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2214
    :cond_0
    iget-object v1, p0, Liyi;->a:Lizd;

    if-eqz v1, :cond_1

    .line 2215
    const/4 v1, 0x2

    iget-object v2, p0, Liyi;->a:Lizd;

    .line 2216
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2218
    :cond_1
    return v0
.end method
