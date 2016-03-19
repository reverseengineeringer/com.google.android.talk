.class public final enum Lair;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lair;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lair;

.field public static final enum b:Lair;

.field public static final enum c:Lair;

.field public static final enum d:Lair;

.field public static final enum e:Lair;

.field private static final synthetic f:[Lair;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lair;

    const-string v1, "LOCAL"

    invoke-direct {v0, v1, v2}, Lair;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lair;->a:Lair;

    .line 15
    new-instance v0, Lair;

    const-string v1, "REMOTE"

    invoke-direct {v0, v1, v3}, Lair;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lair;->b:Lair;

    .line 19
    new-instance v0, Lair;

    const-string v1, "DATA_DISK_CACHE"

    invoke-direct {v0, v1, v4}, Lair;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lair;->c:Lair;

    .line 23
    new-instance v0, Lair;

    const-string v1, "RESOURCE_DISK_CACHE"

    invoke-direct {v0, v1, v5}, Lair;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lair;->d:Lair;

    .line 27
    new-instance v0, Lair;

    const-string v1, "MEMORY_CACHE"

    invoke-direct {v0, v1, v6}, Lair;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lair;->e:Lair;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lair;

    sget-object v1, Lair;->a:Lair;

    aput-object v1, v0, v2

    sget-object v1, Lair;->b:Lair;

    aput-object v1, v0, v3

    sget-object v1, Lair;->c:Lair;

    aput-object v1, v0, v4

    sget-object v1, Lair;->d:Lair;

    aput-object v1, v0, v5

    sget-object v1, Lair;->e:Lair;

    aput-object v1, v0, v6

    sput-object v0, Lair;->f:[Lair;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lair;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lair;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lair;

    return-object v0
.end method

.method public static values()[Lair;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lair;->f:[Lair;

    invoke-virtual {v0}, [Lair;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lair;

    return-object v0
.end method
