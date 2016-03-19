.class public final Llwe;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llwe;",
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

    .line 148
    sput v3, Llwe;->a:I

    .line 149
    sput v4, Llwe;->b:I

    .line 150
    sput v5, Llwe;->c:I

    .line 151
    sput v6, Llwe;->d:I

    .line 152
    sput v7, Llwe;->e:I

    .line 153
    const/4 v0, 0x6

    sput v0, Llwe;->f:I

    .line 154
    const/4 v0, 0x7

    sput v0, Llwe;->g:I

    .line 155
    const/16 v0, 0x8

    sput v0, Llwe;->h:I

    .line 147
    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Llwe;->a:I

    aput v2, v0, v1

    sget v1, Llwe;->b:I

    aput v1, v0, v3

    sget v1, Llwe;->c:I

    aput v1, v0, v4

    sget v1, Llwe;->d:I

    aput v1, v0, v5

    sget v1, Llwe;->e:I

    aput v1, v0, v6

    sget v1, Llwe;->f:I

    aput v1, v0, v7

    const/4 v1, 0x6

    sget v2, Llwe;->g:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Llwe;->h:I

    aput v2, v0, v1

    sput-object v0, Llwe;->i:[I

    return-void
.end method

.method public static a()[I
    .locals 1

    .prologue
    .line 147
    sget-object v0, Llwe;->i:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
