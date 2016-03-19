.class public final Llyj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llyj;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Llyk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Llyb;-><init>()V

    .line 129
    invoke-static {}, Llyk;->d()[Llyk;

    move-result-object v0

    iput-object v0, p0, Llyj;->a:[Llyk;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Llyj;->eD:Llyd;

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Llyj;->eE:I

    .line 132
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

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
    const/16 v0, 0xa

    .line 1180
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1181
    iget-object v0, p0, Llyj;->a:[Llyk;

    if-nez v0, :cond_2

    move v0, v1

    .line 1182
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llyk;

    .line 1184
    if-eqz v0, :cond_1

    .line 1185
    iget-object v3, p0, Llyj;->a:[Llyk;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1187
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1188
    new-instance v3, Llyk;

    invoke-direct {v3}, Llyk;-><init>()V

    aput-object v3, v2, v0

    .line 1189
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1190
    invoke-virtual {p1}, Llxy;->a()I

    .line 1187
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1181
    :cond_2
    iget-object v0, p0, Llyj;->a:[Llyk;

    array-length v0, v0

    goto :goto_1

    .line 1193
    :cond_3
    new-instance v3, Llyk;

    invoke-direct {v3}, Llyk;-><init>()V

    aput-object v3, v2, v0

    .line 1194
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1195
    iput-object v2, p0, Llyj;->a:[Llyk;

    goto :goto_0

    .line 1169
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Llyj;->a:[Llyk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llyj;->a:[Llyk;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 138
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llyj;->a:[Llyk;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 139
    iget-object v1, p0, Llyj;->a:[Llyk;

    aget-object v1, v1, v0

    .line 140
    if-eqz v1, :cond_0

    .line 141
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 138
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 146
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 150
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 151
    iget-object v0, p0, Llyj;->a:[Llyk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llyj;->a:[Llyk;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 152
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Llyj;->a:[Llyk;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 153
    iget-object v2, p0, Llyj;->a:[Llyk;

    aget-object v2, v2, v0

    .line 154
    if-eqz v2, :cond_0

    .line 155
    const/4 v3, 0x1

    .line 156
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 152
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_1
    return v1
.end method
