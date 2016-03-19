.class public final Lkhi;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkhi;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkhf;

.field public b:Lkii;

.field public c:[Lkhf;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3103
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4108
    iput-object v1, p0, Lkhi;->requestHeader:Lkdo;

    .line 4109
    iput-object v1, p0, Lkhi;->a:Lkhf;

    .line 4110
    iput-object v1, p0, Lkhi;->b:Lkii;

    .line 4111
    invoke-static {}, Lkhf;->d()[Lkhf;

    move-result-object v0

    iput-object v0, p0, Lkhi;->c:[Lkhf;

    .line 4112
    iput-object v1, p0, Lkhi;->eD:Llyd;

    .line 4113
    const/4 v0, -0x1

    iput v0, p0, Lkhi;->eE:I

    .line 3105
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4172
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4173
    sparse-switch v0, :sswitch_data_0

    .line 4177
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4178
    :sswitch_0
    return-object p0

    .line 4183
    :sswitch_1
    iget-object v0, p0, Lkhi;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 4184
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkhi;->requestHeader:Lkdo;

    .line 4186
    :cond_1
    iget-object v0, p0, Lkhi;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4190
    :sswitch_2
    iget-object v0, p0, Lkhi;->a:Lkhf;

    if-nez v0, :cond_2

    .line 4191
    new-instance v0, Lkhf;

    invoke-direct {v0}, Lkhf;-><init>()V

    iput-object v0, p0, Lkhi;->a:Lkhf;

    .line 4193
    :cond_2
    iget-object v0, p0, Lkhi;->a:Lkhf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4197
    :sswitch_3
    iget-object v0, p0, Lkhi;->b:Lkii;

    if-nez v0, :cond_3

    .line 4198
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkhi;->b:Lkii;

    .line 4200
    :cond_3
    iget-object v0, p0, Lkhi;->b:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4204
    :sswitch_4
    const/16 v0, 0x22

    .line 4205
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4206
    iget-object v0, p0, Lkhi;->c:[Lkhf;

    if-nez v0, :cond_5

    move v0, v1

    .line 4207
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkhf;

    .line 4209
    if-eqz v0, :cond_4

    .line 4210
    iget-object v3, p0, Lkhi;->c:[Lkhf;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4212
    :cond_4
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 4213
    new-instance v3, Lkhf;

    invoke-direct {v3}, Lkhf;-><init>()V

    aput-object v3, v2, v0

    .line 4214
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 4215
    invoke-virtual {p1}, Llxy;->a()I

    .line 4212
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4206
    :cond_5
    iget-object v0, p0, Lkhi;->c:[Lkhf;

    array-length v0, v0

    goto :goto_1

    .line 4218
    :cond_6
    new-instance v3, Lkhf;

    invoke-direct {v3}, Lkhf;-><init>()V

    aput-object v3, v2, v0

    .line 4219
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 4220
    iput-object v2, p0, Lkhi;->c:[Lkhf;

    goto :goto_0

    .line 4173
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 3120
    iget-object v0, p0, Lkhi;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 3121
    const/4 v0, 0x1

    iget-object v1, p0, Lkhi;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3123
    :cond_0
    iget-object v0, p0, Lkhi;->a:Lkhf;

    if-eqz v0, :cond_1

    .line 3124
    const/4 v0, 0x2

    iget-object v1, p0, Lkhi;->a:Lkhf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3126
    :cond_1
    iget-object v0, p0, Lkhi;->b:Lkii;

    if-eqz v0, :cond_2

    .line 3127
    const/4 v0, 0x3

    iget-object v1, p0, Lkhi;->b:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3129
    :cond_2
    iget-object v0, p0, Lkhi;->c:[Lkhf;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkhi;->c:[Lkhf;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 3130
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkhi;->c:[Lkhf;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 3131
    iget-object v1, p0, Lkhi;->c:[Lkhf;

    aget-object v1, v1, v0

    .line 3132
    if-eqz v1, :cond_3

    .line 3133
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 3130
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3137
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3138
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 3142
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3143
    iget-object v1, p0, Lkhi;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 3144
    const/4 v1, 0x1

    iget-object v2, p0, Lkhi;->requestHeader:Lkdo;

    .line 3145
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3147
    :cond_0
    iget-object v1, p0, Lkhi;->a:Lkhf;

    if-eqz v1, :cond_1

    .line 3148
    const/4 v1, 0x2

    iget-object v2, p0, Lkhi;->a:Lkhf;

    .line 3149
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3151
    :cond_1
    iget-object v1, p0, Lkhi;->b:Lkii;

    if-eqz v1, :cond_2

    .line 3152
    const/4 v1, 0x3

    iget-object v2, p0, Lkhi;->b:Lkii;

    .line 3153
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3155
    :cond_2
    iget-object v1, p0, Lkhi;->c:[Lkhf;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lkhi;->c:[Lkhf;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 3156
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkhi;->c:[Lkhf;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 3157
    iget-object v2, p0, Lkhi;->c:[Lkhf;

    aget-object v2, v2, v0

    .line 3158
    if-eqz v2, :cond_3

    .line 3159
    const/4 v3, 0x4

    .line 3160
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 3156
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 3164
    :cond_5
    return v0
.end method
