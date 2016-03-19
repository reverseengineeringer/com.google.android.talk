.class public final Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;",
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
            "Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:[Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;


# instance fields
.field public b:Lcom/google/android/libraries/componentview/components/base/api/nano/TextViewProto$TextViewArgs;

.field public c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$DateFormatSet;

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 17
    const-class v0, Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;

    const-wide/32 v2, 0x33387822

    .line 18
    invoke-static {v0, v2, v3}, Llyc;->a(Ljava/lang/Class;J)Llyc;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;->a:Llyc;

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;

    sput-object v0, Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;->d:[Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Llyb;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;->e:I

    .line 62
    iput-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;->b:Lcom/google/android/libraries/componentview/components/base/api/nano/TextViewProto$TextViewArgs;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;->f:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$DateFormatSet;

    .line 65
    iput-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;->eD:Llyd;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;->eE:I

    .line 67
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1107
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1108
    sparse-switch v0, :sswitch_data_0

    .line 1112
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1113
    :sswitch_0
    return-object p0

    .line 1118
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;->b:Lcom/google/android/libraries/componentview/components/base/api/nano/TextViewProto$TextViewArgs;

    if-nez v0, :cond_1

    .line 1119
    new-instance v0, Lcom/google/android/libraries/componentview/components/base/api/nano/TextViewProto$TextViewArgs;

    invoke-direct {v0}, Lcom/google/android/libraries/componentview/components/base/api/nano/TextViewProto$TextViewArgs;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;->b:Lcom/google/android/libraries/componentview/components/base/api/nano/TextViewProto$TextViewArgs;

    .line 1121
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;->b:Lcom/google/android/libraries/componentview/components/base/api/nano/TextViewProto$TextViewArgs;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1125
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;->f:Ljava/lang/String;

    .line 1126
    iget v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;->e:I

    goto :goto_0

    .line 1130
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$DateFormatSet;

    if-nez v0, :cond_2

    .line 1131
    new-instance v0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$DateFormatSet;

    invoke-direct {v0}, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$DateFormatSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$DateFormatSet;

    .line 1133
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$DateFormatSet;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1108
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;->b:Lcom/google/android/libraries/componentview/components/base/api/nano/TextViewProto$TextViewArgs;

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;->b:Lcom/google/android/libraries/componentview/components/base/api/nano/TextViewProto$TextViewArgs;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 75
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;->e:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 76
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$DateFormatSet;

    if-eqz v0, :cond_2

    .line 79
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$DateFormatSet;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 81
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 82
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 86
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 87
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;->b:Lcom/google/android/libraries/componentview/components/base/api/nano/TextViewProto$TextViewArgs;

    if-eqz v1, :cond_0

    .line 88
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;->b:Lcom/google/android/libraries/componentview/components/base/api/nano/TextViewProto$TextViewArgs;

    .line 89
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    :cond_0
    iget v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 92
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;->f:Ljava/lang/String;

    .line 93
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$DateFormatSet;

    if-eqz v1, :cond_2

    .line 96
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/elements/api/nano/ClockProto$ClockArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$DateFormatSet;

    .line 97
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    :cond_2
    return v0
.end method
