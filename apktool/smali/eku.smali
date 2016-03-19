.class public final enum Leku;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Leku;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Leku;

.field public static final enum b:Leku;

.field public static final enum c:Leku;

.field public static final enum d:Leku;

.field private static final synthetic e:[Leku;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Leku;

    const-string v1, "LOCAL_SMS"

    invoke-direct {v0, v1, v2}, Leku;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leku;->a:Leku;

    .line 39
    new-instance v0, Leku;

    const-string v1, "MESSAGE"

    invoke-direct {v0, v1, v3}, Leku;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leku;->b:Leku;

    .line 40
    new-instance v0, Leku;

    const-string v1, "GV_SMS"

    invoke-direct {v0, v1, v4}, Leku;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leku;->c:Leku;

    .line 41
    new-instance v0, Leku;

    const-string v1, "GV_VOICEMAIL"

    invoke-direct {v0, v1, v5}, Leku;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leku;->d:Leku;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Leku;

    sget-object v1, Leku;->a:Leku;

    aput-object v1, v0, v2

    sget-object v1, Leku;->b:Leku;

    aput-object v1, v0, v3

    sget-object v1, Leku;->c:Leku;

    aput-object v1, v0, v4

    sget-object v1, Leku;->d:Leku;

    aput-object v1, v0, v5

    sput-object v0, Leku;->e:[Leku;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Leku;
    .locals 1

    .prologue
    .line 37
    const-class v0, Leku;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Leku;

    return-object v0
.end method

.method public static values()[Leku;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Leku;->e:[Leku;

    invoke-virtual {v0}, [Leku;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leku;

    return-object v0
.end method
