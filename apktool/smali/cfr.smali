.class final enum Lcfr;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcfr;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcfr;

.field public static final enum b:Lcfr;

.field public static final enum c:Lcfr;

.field public static final enum d:Lcfr;

.field private static final synthetic e:[Lcfr;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcfr;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcfr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcfr;->a:Lcfr;

    .line 43
    new-instance v0, Lcfr;

    const-string v1, "OUTGOING_AUDIO"

    invoke-direct {v0, v1, v3}, Lcfr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcfr;->b:Lcfr;

    .line 44
    new-instance v0, Lcfr;

    const-string v1, "OUTGOING_VIDEO"

    invoke-direct {v0, v1, v4}, Lcfr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcfr;->c:Lcfr;

    .line 45
    new-instance v0, Lcfr;

    const-string v1, "STILL_JOINING"

    invoke-direct {v0, v1, v5}, Lcfr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcfr;->d:Lcfr;

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Lcfr;

    sget-object v1, Lcfr;->a:Lcfr;

    aput-object v1, v0, v2

    sget-object v1, Lcfr;->b:Lcfr;

    aput-object v1, v0, v3

    sget-object v1, Lcfr;->c:Lcfr;

    aput-object v1, v0, v4

    sget-object v1, Lcfr;->d:Lcfr;

    aput-object v1, v0, v5

    sput-object v0, Lcfr;->e:[Lcfr;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcfr;
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcfr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcfr;

    return-object v0
.end method

.method public static values()[Lcfr;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcfr;->e:[Lcfr;

    invoke-virtual {v0}, [Lcfr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcfr;

    return-object v0
.end method
