.class public final Lace;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lace;",
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

    .line 35
    sput v3, Lace;->a:I

    sput v4, Lace;->b:I

    sput v5, Lace;->c:I

    sput v0, Lace;->d:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lace;->a:I

    aput v2, v0, v1

    sget v1, Lace;->b:I

    aput v1, v0, v3

    sget v1, Lace;->c:I

    aput v1, v0, v4

    sget v1, Lace;->d:I

    aput v1, v0, v5

    sput-object v0, Lace;->e:[I

    return-void
.end method
