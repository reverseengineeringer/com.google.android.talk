.class public final Lliq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lliq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Llip;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3145
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4150
    invoke-static {}, Llip;->d()[Llip;

    move-result-object v0

    iput-object v0, p0, Lliq;->a:[Llip;

    .line 4151
    const/4 v0, 0x0

    iput-object v0, p0, Lliq;->eD:Llyd;

    .line 4152
    const/4 v0, -0x1

    iput v0, p0, Lliq;->eE:I

    .line 3147
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4190
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4191
    sparse-switch v0, :sswitch_data_0

    .line 4195
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4196
    :sswitch_0
    return-object p0

    .line 4201
    :sswitch_1
    const/16 v0, 0xa

    .line 4202
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4203
    iget-object v0, p0, Lliq;->a:[Llip;

    if-nez v0, :cond_2

    move v0, v1

    .line 4204
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llip;

    .line 4206
    if-eqz v0, :cond_1

    .line 4207
    iget-object v3, p0, Lliq;->a:[Llip;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4209
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 4210
    new-instance v3, Llip;

    invoke-direct {v3}, Llip;-><init>()V

    aput-object v3, v2, v0

    .line 4211
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 4212
    invoke-virtual {p1}, Llxy;->a()I

    .line 4209
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4203
    :cond_2
    iget-object v0, p0, Lliq;->a:[Llip;

    array-length v0, v0

    goto :goto_1

    .line 4215
    :cond_3
    new-instance v3, Llip;

    invoke-direct {v3}, Llip;-><init>()V

    aput-object v3, v2, v0

    .line 4216
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 4217
    iput-object v2, p0, Lliq;->a:[Llip;

    goto :goto_0

    .line 4191
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 3159
    iget-object v0, p0, Lliq;->a:[Llip;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lliq;->a:[Llip;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 3160
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lliq;->a:[Llip;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 3161
    iget-object v1, p0, Lliq;->a:[Llip;

    aget-object v1, v1, v0

    .line 3162
    if-eqz v1, :cond_0

    .line 3163
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 3160
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3167
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3168
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 3172
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 3173
    iget-object v0, p0, Lliq;->a:[Llip;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lliq;->a:[Llip;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 3174
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lliq;->a:[Llip;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 3175
    iget-object v2, p0, Lliq;->a:[Llip;

    aget-object v2, v2, v0

    .line 3176
    if-eqz v2, :cond_0

    .line 3177
    const/4 v3, 0x1

    .line 3178
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 3174
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3182
    :cond_1
    return v1
.end method
