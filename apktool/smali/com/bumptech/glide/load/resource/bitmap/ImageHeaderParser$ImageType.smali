.class public final enum Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

.field public static final enum GIF:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

.field public static final enum JPEG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

.field public static final enum PNG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

.field public static final enum PNG_A:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

.field public static final enum UNKNOWN:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

.field public static final enum WEBP:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

.field public static final enum WEBP_A:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;


# instance fields
.field private final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    const-string v1, "GIF"

    invoke-direct {v0, v1, v3, v4}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    .line 38
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    const-string v1, "JPEG"

    invoke-direct {v0, v1, v4, v3}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    .line 40
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    const-string v1, "PNG_A"

    invoke-direct {v0, v1, v5, v4}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    .line 42
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    const-string v1, "PNG"

    invoke-direct {v0, v1, v6, v3}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    .line 44
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    const-string v1, "WEBP_A"

    invoke-direct {v0, v1, v7, v4}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    .line 46
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    const-string v1, "WEBP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    .line 50
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    .line 36
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->$VALUES:[Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput-boolean p3, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->a:Z

    .line 55
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    return-object v0
.end method

.method public static values()[Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->$VALUES:[Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    return-object v0
.end method


# virtual methods
.method public hasAlpha()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->a:Z

    return v0
.end method
