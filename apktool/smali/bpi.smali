.class final Lbpi;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbpi;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field private static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1057
    sput v3, Lbpi;->a:I

    .line 1058
    sput v4, Lbpi;->b:I

    .line 1059
    sput v0, Lbpi;->c:I

    .line 1056
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lbpi;->a:I

    aput v2, v0, v1

    sget v1, Lbpi;->b:I

    aput v1, v0, v3

    sget v1, Lbpi;->c:I

    aput v1, v0, v4

    sput-object v0, Lbpi;->d:[I

    return-void
.end method
