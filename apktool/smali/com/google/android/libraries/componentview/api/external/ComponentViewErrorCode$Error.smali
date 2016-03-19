.class public final enum Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;

.field public static final enum b:Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;

.field public static final enum c:Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;

.field public static final enum d:Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;

.field public static final enum e:Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;

.field private static final synthetic g:[Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 13
    new-instance v0, Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;

    const-string v1, "SERVER_ERROR"

    invoke-direct {v0, v1, v7, v3}, Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;->a:Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;

    .line 15
    new-instance v0, Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;->b:Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;

    .line 17
    new-instance v0, Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;

    const-string v1, "EMPTY_RESOURCE"

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;->c:Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;

    .line 19
    new-instance v0, Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;

    const-string v1, "COMPONENT_INFLATION_FAILURE"

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;->d:Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;

    .line 21
    new-instance v0, Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;

    const-string v1, "INVALID_CHILD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;->e:Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;

    .line 11
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;

    sget-object v1, Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;->a:Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;->b:Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;->c:Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;->d:Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;->e:Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;->g:[Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;->f:I

    .line 27
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;

    return-object v0
.end method

.method public static values()[Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;->g:[Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;

    invoke-virtual {v0}, [Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/componentview/api/external/ComponentViewErrorCode$Error;

    return-object v0
.end method
