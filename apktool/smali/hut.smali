.class public final Lhut;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhut;",
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

    .line 21
    sput v3, Lhut;->a:I

    .line 22
    sput v4, Lhut;->b:I

    .line 23
    sput v0, Lhut;->c:I

    .line 20
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lhut;->a:I

    aput v2, v0, v1

    sget v1, Lhut;->b:I

    aput v1, v0, v3

    sget v1, Lhut;->c:I

    aput v1, v0, v4

    sput-object v0, Lhut;->d:[I

    return-void
.end method
