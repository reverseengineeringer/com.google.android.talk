.class public final enum Ldza;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldza;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ldza;

.field public static final enum b:Ldza;

.field public static final enum c:Ldza;

.field public static final enum d:Ldza;

.field public static final enum e:Ldza;

.field private static final synthetic f:[Ldza;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Ldza;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Ldza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldza;->a:Ldza;

    new-instance v0, Ldza;

    const-string v1, "DEFERRED"

    invoke-direct {v0, v1, v3}, Ldza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldza;->b:Ldza;

    new-instance v0, Ldza;

    const-string v1, "SILENT"

    invoke-direct {v0, v1, v4}, Ldza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldza;->c:Ldza;

    new-instance v0, Ldza;

    const-string v1, "DISPLAYONLY"

    invoke-direct {v0, v1, v5}, Ldza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldza;->d:Ldza;

    new-instance v0, Ldza;

    const-string v1, "LOUD"

    invoke-direct {v0, v1, v6}, Ldza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldza;->e:Ldza;

    const/4 v0, 0x5

    new-array v0, v0, [Ldza;

    sget-object v1, Ldza;->a:Ldza;

    aput-object v1, v0, v2

    sget-object v1, Ldza;->b:Ldza;

    aput-object v1, v0, v3

    sget-object v1, Ldza;->c:Ldza;

    aput-object v1, v0, v4

    sget-object v1, Ldza;->d:Ldza;

    aput-object v1, v0, v5

    sget-object v1, Ldza;->e:Ldza;

    aput-object v1, v0, v6

    sput-object v0, Ldza;->f:[Ldza;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldza;
    .locals 1

    .prologue
    .line 40
    const-class v0, Ldza;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldza;

    return-object v0
.end method

.method public static values()[Ldza;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Ldza;->f:[Ldza;

    invoke-virtual {v0}, [Ldza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldza;

    return-object v0
.end method
