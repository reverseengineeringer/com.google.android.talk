.class public final Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;",
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
            "Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:[Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;


# instance fields
.field public b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

.field public c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

.field public d:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

.field private f:I

.field private g:Z

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 17
    const-class v0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;

    const-wide/32 v2, 0x33af3db2

    .line 18
    invoke-static {v0, v2, v3}, Llyc;->a(Ljava/lang/Class;J)Llyc;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->a:Llyc;

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;

    sput-object v0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->e:[Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Llyb;-><init>()V

    .line 80
    iput v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->f:I

    .line 81
    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    .line 82
    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    .line 83
    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->d:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    .line 84
    iput-boolean v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->g:Z

    .line 85
    iput v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->h:I

    .line 86
    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->eD:Llyd;

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->eE:I

    .line 88
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2142
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2143
    sparse-switch v0, :sswitch_data_0

    .line 2147
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2148
    :sswitch_0
    return-object p0

    .line 2153
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    if-nez v0, :cond_1

    .line 2154
    new-instance v0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    invoke-direct {v0}, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    .line 2156
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2160
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    if-nez v0, :cond_2

    .line 2161
    new-instance v0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    invoke-direct {v0}, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    .line 2163
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2167
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->d:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    if-nez v0, :cond_3

    .line 2168
    new-instance v0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    invoke-direct {v0}, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->d:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    .line 2170
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->d:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2174
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->g:Z

    .line 2175
    iget v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->f:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->f:I

    goto :goto_0

    .line 2179
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->h:I

    .line 2180
    iget v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->f:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->f:I

    goto :goto_0

    .line 2143
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    if-eqz v0, :cond_1

    .line 97
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->d:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    if-eqz v0, :cond_2

    .line 100
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->d:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 102
    :cond_2
    iget v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->f:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 103
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->g:Z

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 105
    :cond_3
    iget v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->f:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 106
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->h:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 108
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 109
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 113
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 114
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    if-eqz v1, :cond_0

    .line 115
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    .line 116
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    if-eqz v1, :cond_1

    .line 119
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    .line 120
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->d:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    if-eqz v1, :cond_2

    .line 123
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->d:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    .line 124
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 126
    :cond_2
    iget v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->f:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 127
    const/4 v1, 0x4

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 128
    add-int/2addr v0, v1

    .line 130
    :cond_3
    iget v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->f:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 131
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardLayoutParamsProto$CardLayoutParamsArgs;->h:I

    .line 132
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 134
    :cond_4
    return v0
.end method
