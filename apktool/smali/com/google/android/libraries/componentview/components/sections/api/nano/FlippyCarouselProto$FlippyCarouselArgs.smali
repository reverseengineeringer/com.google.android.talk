.class public final Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;",
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
            "Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:[Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;


# instance fields
.field public b:[Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 17
    const-class v0, Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;

    const-wide/32 v2, 0x33af3d8a

    .line 18
    invoke-static {v0, v2, v3}, Llyc;->a(Ljava/lang/Class;J)Llyc;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;->a:Llyc;

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;

    sput-object v0, Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;->c:[Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Llyb;-><init>()V

    .line 55
    iput v1, p0, Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;->d:I

    .line 56
    invoke-static {}, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->d()[Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;->b:[Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    .line 57
    iput v1, p0, Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;->e:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;->eD:Llyd;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;->eE:I

    .line 60
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1103
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1104
    sparse-switch v0, :sswitch_data_0

    .line 1108
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1109
    :sswitch_0
    return-object p0

    .line 1114
    :sswitch_1
    const/16 v0, 0xa

    .line 1115
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1116
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;->b:[Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    if-nez v0, :cond_2

    move v0, v1

    .line 1117
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    .line 1119
    if-eqz v0, :cond_1

    .line 1120
    iget-object v3, p0, Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;->b:[Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1122
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1123
    new-instance v3, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    invoke-direct {v3}, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;-><init>()V

    aput-object v3, v2, v0

    .line 1124
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1125
    invoke-virtual {p1}, Llxy;->a()I

    .line 1122
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1116
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;->b:[Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    array-length v0, v0

    goto :goto_1

    .line 1128
    :cond_3
    new-instance v3, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    invoke-direct {v3}, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;-><init>()V

    aput-object v3, v2, v0

    .line 1129
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1130
    iput-object v2, p0, Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;->b:[Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    goto :goto_0

    .line 1134
    :sswitch_2
    invoke-virtual {p1}, Llxy;->l()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;->e:I

    .line 1135
    iget v0, p0, Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;->d:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;->d:I

    goto :goto_0

    .line 1104
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;->b:[Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;->b:[Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 66
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;->b:[Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;->b:[Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    aget-object v1, v1, v0

    .line 68
    if-eqz v1, :cond_0

    .line 69
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 66
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_1
    iget v0, p0, Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 74
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;->e:I

    invoke-virtual {p1, v0, v1}, Llxz;->c(II)V

    .line 76
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 77
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 81
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 82
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;->b:[Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;->b:[Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 83
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;->b:[Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;->b:[Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    aget-object v2, v2, v0

    .line 85
    if-eqz v2, :cond_0

    .line 86
    const/4 v3, 0x1

    .line 87
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 83
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    iget v0, p0, Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 92
    const/4 v0, 0x2

    iget v2, p0, Lcom/google/android/libraries/componentview/components/sections/api/nano/FlippyCarouselProto$FlippyCarouselArgs;->e:I

    .line 93
    invoke-static {v0, v2}, Llxz;->f(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 95
    :cond_2
    return v1
.end method
