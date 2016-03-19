.class public final Liav;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Liav;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field private static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    .line 30
    sput v3, Liav;->a:I

    .line 31
    sput v0, Liav;->b:I

    .line 29
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Liav;->a:I

    aput v2, v0, v1

    sget v1, Liav;->b:I

    aput v1, v0, v3

    sput-object v0, Liav;->c:[I

    return-void
.end method
