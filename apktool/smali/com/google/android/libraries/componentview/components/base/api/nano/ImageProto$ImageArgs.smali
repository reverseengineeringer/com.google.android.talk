.class public final Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Llyc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llyc",
            "<",
            "Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;",
            "Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:[Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;


# instance fields
.field public b:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewArgs;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:[B

.field private g:I

.field private h:I

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 17
    const-class v0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;

    const-wide/32 v2, 0x33af3e12

    .line 18
    invoke-static {v0, v2, v3}, Llyc;->a(Ljava/lang/Class;J)Llyc;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->a:Llyc;

    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;

    sput-object v0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->c:[Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 156
    invoke-direct {p0}, Llyb;-><init>()V

    .line 157
    iput v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->d:I

    .line 158
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->e:Ljava/lang/String;

    .line 159
    sget-object v0, Llyo;->h:[B

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->f:[B

    .line 160
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->g:I

    .line 161
    iput-object v2, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->b:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewArgs;

    .line 162
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->h:I

    .line 163
    iput-boolean v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->i:Z

    .line 164
    iput-object v2, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->eD:Llyd;

    .line 165
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->eE:I

    .line 166
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2227
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2228
    sparse-switch v0, :sswitch_data_0

    .line 2232
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2233
    :sswitch_0
    return-object p0

    .line 2238
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->e:Ljava/lang/String;

    .line 2239
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->d:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->d:I

    goto :goto_0

    .line 2243
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2244
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2248
    :pswitch_0
    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->g:I

    .line 2249
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->d:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->d:I

    goto :goto_0

    .line 2255
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->b:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewArgs;

    if-nez v0, :cond_1

    .line 2256
    new-instance v0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewArgs;

    invoke-direct {v0}, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewArgs;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->b:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewArgs;

    .line 2258
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->b:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewArgs;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2262
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2263
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 2273
    :pswitch_1
    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->h:I

    .line 2274
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->d:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->d:I

    goto :goto_0

    .line 2280
    :sswitch_5
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->i:Z

    .line 2281
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->d:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->d:I

    goto :goto_0

    .line 2285
    :sswitch_6
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->f:[B

    .line 2286
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->d:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->d:I

    goto :goto_0

    .line 2228
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x20 -> :sswitch_2
        0x2a -> :sswitch_3
        0x30 -> :sswitch_4
        0x38 -> :sswitch_5
        0x42 -> :sswitch_6
    .end sparse-switch

    .line 2244
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2263
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 171
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 174
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->d:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 175
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->g:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->b:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewArgs;

    if-eqz v0, :cond_2

    .line 178
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->b:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewArgs;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 180
    :cond_2
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->d:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 181
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->h:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 183
    :cond_3
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->d:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 184
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->i:Z

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 186
    :cond_4
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 187
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->f:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 189
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 190
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 194
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 195
    iget v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 196
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->e:Ljava/lang/String;

    .line 197
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 199
    :cond_0
    iget v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->d:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 200
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->g:I

    .line 201
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->b:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewArgs;

    if-eqz v1, :cond_2

    .line 204
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->b:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewArgs;

    .line 205
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 207
    :cond_2
    iget v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->d:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 208
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->h:I

    .line 209
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 211
    :cond_3
    iget v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->d:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 212
    const/4 v1, 0x7

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 213
    add-int/2addr v0, v1

    .line 215
    :cond_4
    iget v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->d:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    .line 216
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;->f:[B

    .line 217
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 219
    :cond_5
    return v0
.end method
