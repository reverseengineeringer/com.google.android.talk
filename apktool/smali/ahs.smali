.class public final enum Lahs;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lahs;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lahs;

.field public static final enum b:Lahs;

.field public static final enum c:Lahs;

.field public static final enum d:Lahs;

.field private static final synthetic e:[Lahs;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lahs;

    const-string v1, "IMMEDIATE"

    invoke-direct {v0, v1, v2}, Lahs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lahs;->a:Lahs;

    .line 10
    new-instance v0, Lahs;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v3}, Lahs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lahs;->b:Lahs;

    .line 11
    new-instance v0, Lahs;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v4}, Lahs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lahs;->c:Lahs;

    .line 12
    new-instance v0, Lahs;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v5}, Lahs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lahs;->d:Lahs;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lahs;

    sget-object v1, Lahs;->a:Lahs;

    aput-object v1, v0, v2

    sget-object v1, Lahs;->b:Lahs;

    aput-object v1, v0, v3

    sget-object v1, Lahs;->c:Lahs;

    aput-object v1, v0, v4

    sget-object v1, Lahs;->d:Lahs;

    aput-object v1, v0, v5

    sput-object v0, Lahs;->e:[Lahs;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lahs;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lahs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lahs;

    return-object v0
.end method

.method public static values()[Lahs;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lahs;->e:[Lahs;

    invoke-virtual {v0}, [Lahs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lahs;

    return-object v0
.end method
