.class public final Lcom/google/android/libraries/componentview/components/base/api/nano/ImageButtonProto$ImageButtonArgs;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lcom/google/android/libraries/componentview/components/base/api/nano/ImageButtonProto$ImageButtonArgs;",
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
            "Lcom/google/android/libraries/componentview/components/base/api/nano/ImageButtonProto$ImageButtonArgs;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:[Lcom/google/android/libraries/componentview/components/base/api/nano/ImageButtonProto$ImageButtonArgs;


# instance fields
.field public b:Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 17
    const-class v0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageButtonProto$ImageButtonArgs;

    const-wide/32 v2, 0x33a4266a

    .line 18
    invoke-static {v0, v2, v3}, Llyc;->a(Ljava/lang/Class;J)Llyc;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageButtonProto$ImageButtonArgs;->a:Llyc;

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/libraries/componentview/components/base/api/nano/ImageButtonProto$ImageButtonArgs;

    sput-object v0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageButtonProto$ImageButtonArgs;->c:[Lcom/google/android/libraries/componentview/components/base/api/nano/ImageButtonProto$ImageButtonArgs;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Llyb;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageButtonProto$ImageButtonArgs;->b:Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;

    .line 35
    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageButtonProto$ImageButtonArgs;->eD:Llyd;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageButtonProto$ImageButtonArgs;->eE:I

    .line 37
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1063
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1064
    sparse-switch v0, :sswitch_data_0

    .line 1068
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1069
    :sswitch_0
    return-object p0

    .line 1074
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageButtonProto$ImageButtonArgs;->b:Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;

    if-nez v0, :cond_1

    .line 1075
    new-instance v0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;

    invoke-direct {v0}, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageButtonProto$ImageButtonArgs;->b:Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;

    .line 1077
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageButtonProto$ImageButtonArgs;->b:Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1064
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageButtonProto$ImageButtonArgs;->b:Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageButtonProto$ImageButtonArgs;->b:Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 45
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 46
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 50
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 51
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageButtonProto$ImageButtonArgs;->b:Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;

    if-eqz v1, :cond_0

    .line 52
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/ImageButtonProto$ImageButtonArgs;->b:Lcom/google/android/libraries/componentview/components/base/api/nano/ImageProto$ImageArgs;

    .line 53
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    :cond_0
    return v0
.end method
