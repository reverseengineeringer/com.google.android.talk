.class public final Lauo;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lauo;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field public static final enum d:I

.field public static final enum e:I

.field public static final enum f:I

.field public static final enum g:I

.field public static final enum h:I

.field private static final synthetic i:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 50
    sput v3, Lauo;->a:I

    .line 54
    sput v4, Lauo;->b:I

    .line 58
    sput v5, Lauo;->c:I

    .line 62
    sput v6, Lauo;->d:I

    .line 66
    sput v7, Lauo;->e:I

    .line 70
    const/4 v0, 0x6

    sput v0, Lauo;->f:I

    .line 74
    const/4 v0, 0x7

    sput v0, Lauo;->g:I

    .line 78
    const/16 v0, 0x8

    sput v0, Lauo;->h:I

    .line 46
    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lauo;->a:I

    aput v2, v0, v1

    sget v1, Lauo;->b:I

    aput v1, v0, v3

    sget v1, Lauo;->c:I

    aput v1, v0, v4

    sget v1, Lauo;->d:I

    aput v1, v0, v5

    sget v1, Lauo;->e:I

    aput v1, v0, v6

    sget v1, Lauo;->f:I

    aput v1, v0, v7

    const/4 v1, 0x6

    sget v2, Lauo;->g:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lauo;->h:I

    aput v2, v0, v1

    sput-object v0, Lauo;->i:[I

    return-void
.end method
