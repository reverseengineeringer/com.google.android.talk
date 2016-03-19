.class public final enum Lagt;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lagt;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lagt;

.field public static final enum b:Lagt;

.field public static final enum c:Lagt;

.field public static final enum d:Lagt;

.field private static final synthetic e:[Lagt;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 494
    new-instance v0, Lagt;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, Lagt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lagt;->a:Lagt;

    .line 495
    new-instance v0, Lagt;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lagt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lagt;->b:Lagt;

    .line 496
    new-instance v0, Lagt;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lagt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lagt;->c:Lagt;

    .line 497
    new-instance v0, Lagt;

    const-string v1, "IMMEDIATE"

    invoke-direct {v0, v1, v5}, Lagt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lagt;->d:Lagt;

    .line 493
    const/4 v0, 0x4

    new-array v0, v0, [Lagt;

    sget-object v1, Lagt;->a:Lagt;

    aput-object v1, v0, v2

    sget-object v1, Lagt;->b:Lagt;

    aput-object v1, v0, v3

    sget-object v1, Lagt;->c:Lagt;

    aput-object v1, v0, v4

    sget-object v1, Lagt;->d:Lagt;

    aput-object v1, v0, v5

    sput-object v0, Lagt;->e:[Lagt;

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
    .line 493
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lagt;
    .locals 1

    .prologue
    .line 493
    const-class v0, Lagt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lagt;

    return-object v0
.end method

.method public static values()[Lagt;
    .locals 1

    .prologue
    .line 493
    sget-object v0, Lagt;->e:[Lagt;

    invoke-virtual {v0}, [Lagt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lagt;

    return-object v0
.end method
