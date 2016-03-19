.class public final Lhor;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhor;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field public static final enum d:I

.field private static final synthetic e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 424
    sput v3, Lhor;->a:I

    .line 425
    sput v4, Lhor;->b:I

    .line 426
    sput v5, Lhor;->c:I

    .line 427
    sput v0, Lhor;->d:I

    .line 423
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lhor;->a:I

    aput v2, v0, v1

    sget v1, Lhor;->b:I

    aput v1, v0, v3

    sget v1, Lhor;->c:I

    aput v1, v0, v4

    sget v1, Lhor;->d:I

    aput v1, v0, v5

    sput-object v0, Lhor;->e:[I

    return-void
.end method
