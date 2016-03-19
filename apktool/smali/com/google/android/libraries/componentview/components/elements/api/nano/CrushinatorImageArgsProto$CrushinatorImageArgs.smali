.class public final Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;",
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
            "Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:[Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;


# instance fields
.field public b:Lmsw;

.field public c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewArgs;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 17
    const-class v0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;

    const-wide/32 v2, 0x34b15ec2

    .line 18
    invoke-static {v0, v2, v3}, Llyc;->a(Ljava/lang/Class;J)Llyc;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->a:Llyc;

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;

    sput-object v0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->d:[Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Llyb;-><init>()V

    .line 118
    iput v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->e:I

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->f:Ljava/lang/String;

    .line 120
    iput-object v2, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->b:Lmsw;

    .line 121
    iput-boolean v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->g:Z

    .line 122
    iput-object v2, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewArgs;

    .line 123
    iput v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->h:I

    .line 124
    iput v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->i:I

    .line 125
    iput-object v2, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->eD:Llyd;

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->eE:I

    .line 127
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2188
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2189
    sparse-switch v0, :sswitch_data_0

    .line 2193
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2194
    :sswitch_0
    return-object p0

    .line 2199
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->f:Ljava/lang/String;

    .line 2200
    iget v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->e:I

    goto :goto_0

    .line 2204
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->b:Lmsw;

    if-nez v0, :cond_1

    .line 2205
    new-instance v0, Lmsw;

    invoke-direct {v0}, Lmsw;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->b:Lmsw;

    .line 2207
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->b:Lmsw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2211
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->g:Z

    .line 2212
    iget v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->e:I

    goto :goto_0

    .line 2216
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewArgs;

    if-nez v0, :cond_2

    .line 2217
    new-instance v0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewArgs;

    invoke-direct {v0}, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewArgs;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewArgs;

    .line 2219
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewArgs;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2223
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->h:I

    .line 2224
    iget v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->e:I

    goto :goto_0

    .line 2228
    :sswitch_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->i:I

    .line 2229
    iget v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->e:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->e:I

    goto :goto_0

    .line 2189
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->e:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->b:Lmsw;

    if-eqz v0, :cond_1

    .line 136
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->b:Lmsw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 138
    :cond_1
    iget v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->e:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 139
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->g:Z

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewArgs;

    if-eqz v0, :cond_3

    .line 142
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewArgs;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 144
    :cond_3
    iget v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->e:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 145
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->h:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 147
    :cond_4
    iget v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->e:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 148
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->i:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 150
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 151
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 155
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 156
    iget v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 157
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->f:Ljava/lang/String;

    .line 158
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->b:Lmsw;

    if-eqz v1, :cond_1

    .line 161
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->b:Lmsw;

    .line 162
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 164
    :cond_1
    iget v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 165
    const/4 v1, 0x3

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 166
    add-int/2addr v0, v1

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewArgs;

    if-eqz v1, :cond_3

    .line 169
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$ViewArgs;

    .line 170
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 172
    :cond_3
    iget v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->e:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 173
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->h:I

    .line 174
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 176
    :cond_4
    iget v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->e:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    .line 177
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->i:I

    .line 178
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 180
    :cond_5
    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CrushinatorImageArgsProto$CrushinatorImageArgs;->g:Z

    return v0
.end method
