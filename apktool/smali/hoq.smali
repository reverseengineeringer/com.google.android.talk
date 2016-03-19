.class public final Lhoq;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhoq;",
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

.field public static final enum i:I

.field public static final enum j:I

.field public static final enum k:I

.field public static final enum l:I

.field private static final synthetic m:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 380
    sput v3, Lhoq;->a:I

    .line 381
    sput v4, Lhoq;->b:I

    .line 384
    sput v5, Lhoq;->c:I

    .line 386
    sput v6, Lhoq;->d:I

    .line 387
    sput v7, Lhoq;->e:I

    .line 391
    const/4 v0, 0x6

    sput v0, Lhoq;->f:I

    .line 393
    const/4 v0, 0x7

    sput v0, Lhoq;->g:I

    .line 397
    const/16 v0, 0x8

    sput v0, Lhoq;->h:I

    .line 398
    const/16 v0, 0x9

    sput v0, Lhoq;->i:I

    .line 401
    const/16 v0, 0xa

    sput v0, Lhoq;->j:I

    .line 403
    const/16 v0, 0xb

    sput v0, Lhoq;->k:I

    .line 406
    const/16 v0, 0xc

    sput v0, Lhoq;->l:I

    .line 379
    const/16 v0, 0xc

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lhoq;->a:I

    aput v2, v0, v1

    sget v1, Lhoq;->b:I

    aput v1, v0, v3

    sget v1, Lhoq;->c:I

    aput v1, v0, v4

    sget v1, Lhoq;->d:I

    aput v1, v0, v5

    sget v1, Lhoq;->e:I

    aput v1, v0, v6

    sget v1, Lhoq;->f:I

    aput v1, v0, v7

    const/4 v1, 0x6

    sget v2, Lhoq;->g:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lhoq;->h:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lhoq;->i:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lhoq;->j:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lhoq;->k:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lhoq;->l:I

    aput v2, v0, v1

    sput-object v0, Lhoq;->m:[I

    return-void
.end method

.method public static a()[I
    .locals 1

    .prologue
    .line 379
    sget-object v0, Lhoq;->m:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
