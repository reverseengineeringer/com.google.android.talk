.class public final Lfcj;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfcj;",
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

.field private static final synthetic h:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 40
    sput v3, Lfcj;->a:I

    .line 41
    sput v4, Lfcj;->b:I

    .line 42
    sput v5, Lfcj;->c:I

    .line 43
    sput v6, Lfcj;->d:I

    .line 44
    sput v7, Lfcj;->e:I

    .line 45
    const/4 v0, 0x6

    sput v0, Lfcj;->f:I

    .line 46
    const/4 v0, 0x7

    sput v0, Lfcj;->g:I

    .line 39
    const/4 v0, 0x7

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lfcj;->a:I

    aput v2, v0, v1

    sget v1, Lfcj;->b:I

    aput v1, v0, v3

    sget v1, Lfcj;->c:I

    aput v1, v0, v4

    sget v1, Lfcj;->d:I

    aput v1, v0, v5

    sget v1, Lfcj;->e:I

    aput v1, v0, v6

    sget v1, Lfcj;->f:I

    aput v1, v0, v7

    const/4 v1, 0x6

    sget v2, Lfcj;->g:I

    aput v2, v0, v1

    sput-object v0, Lfcj;->h:[I

    return-void
.end method

.method public static a()[I
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lfcj;->h:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
