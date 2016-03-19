.class public final enum Lcey;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcey;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcey;

.field public static final enum b:Lcey;

.field public static final enum c:Lcey;

.field public static final enum d:Lcey;

.field private static final synthetic e:[Lcey;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcey;

    const-string v1, "BATTERY_LOW"

    invoke-direct {v0, v1, v2}, Lcey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcey;->a:Lcey;

    .line 29
    new-instance v0, Lcey;

    const-string v1, "BATTERY_OKAY_AFTER_LOW"

    invoke-direct {v0, v1, v3}, Lcey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcey;->b:Lcey;

    .line 31
    new-instance v0, Lcey;

    const-string v1, "POWER_SAVE_MODE_ACTIVATED"

    invoke-direct {v0, v1, v4}, Lcey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcey;->c:Lcey;

    .line 36
    new-instance v0, Lcey;

    const-string v1, "POWER_SAVE_MODE_DEACTIVATED"

    invoke-direct {v0, v1, v5}, Lcey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcey;->d:Lcey;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Lcey;

    sget-object v1, Lcey;->a:Lcey;

    aput-object v1, v0, v2

    sget-object v1, Lcey;->b:Lcey;

    aput-object v1, v0, v3

    sget-object v1, Lcey;->c:Lcey;

    aput-object v1, v0, v4

    sget-object v1, Lcey;->d:Lcey;

    aput-object v1, v0, v5

    sput-object v0, Lcey;->e:[Lcey;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcey;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcey;

    return-object v0
.end method

.method public static values()[Lcey;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcey;->e:[Lcey;

    invoke-virtual {v0}, [Lcey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcey;

    return-object v0
.end method
