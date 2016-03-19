.class public final enum Lhot;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhot;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lhot;

.field public static final enum b:Lhot;

.field public static final enum c:Lhot;

.field public static final enum d:Lhot;

.field private static final synthetic e:[Lhot;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lhot;

    const-string v1, "FROM_NUMBER_WITH_PLUS_SIGN"

    invoke-direct {v0, v1, v2}, Lhot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhot;->a:Lhot;

    .line 33
    new-instance v0, Lhot;

    const-string v1, "FROM_NUMBER_WITH_IDD"

    invoke-direct {v0, v1, v3}, Lhot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhot;->b:Lhot;

    .line 34
    new-instance v0, Lhot;

    const-string v1, "FROM_NUMBER_WITHOUT_PLUS_SIGN"

    invoke-direct {v0, v1, v4}, Lhot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhot;->c:Lhot;

    .line 35
    new-instance v0, Lhot;

    const-string v1, "FROM_DEFAULT_COUNTRY"

    invoke-direct {v0, v1, v5}, Lhot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhot;->d:Lhot;

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lhot;

    sget-object v1, Lhot;->a:Lhot;

    aput-object v1, v0, v2

    sget-object v1, Lhot;->b:Lhot;

    aput-object v1, v0, v3

    sget-object v1, Lhot;->c:Lhot;

    aput-object v1, v0, v4

    sget-object v1, Lhot;->d:Lhot;

    aput-object v1, v0, v5

    sput-object v0, Lhot;->e:[Lhot;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhot;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lhot;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhot;

    return-object v0
.end method

.method public static values()[Lhot;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lhot;->e:[Lhot;

    invoke-virtual {v0}, [Lhot;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhot;

    return-object v0
.end method
