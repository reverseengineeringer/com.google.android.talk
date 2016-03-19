.class public final enum Lczd;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lczd;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lczd;

.field public static final enum b:Lczd;

.field public static final enum c:Lczd;

.field public static final enum d:Lczd;

.field private static final synthetic e:[Lczd;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lczd;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lczd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lczd;->a:Lczd;

    .line 10
    new-instance v0, Lczd;

    const-string v1, "PERSON"

    invoke-direct {v0, v1, v3}, Lczd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lczd;->b:Lczd;

    .line 11
    new-instance v0, Lczd;

    const-string v1, "CIRCLE"

    invoke-direct {v0, v1, v4}, Lczd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lczd;->c:Lczd;

    .line 12
    new-instance v0, Lczd;

    const-string v1, "PHONE"

    invoke-direct {v0, v1, v5}, Lczd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lczd;->d:Lczd;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lczd;

    sget-object v1, Lczd;->a:Lczd;

    aput-object v1, v0, v2

    sget-object v1, Lczd;->b:Lczd;

    aput-object v1, v0, v3

    sget-object v1, Lczd;->c:Lczd;

    aput-object v1, v0, v4

    sget-object v1, Lczd;->d:Lczd;

    aput-object v1, v0, v5

    sput-object v0, Lczd;->e:[Lczd;

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

.method public static valueOf(Ljava/lang/String;)Lczd;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lczd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lczd;

    return-object v0
.end method

.method public static values()[Lczd;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lczd;->e:[Lczd;

    invoke-virtual {v0}, [Lczd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lczd;

    return-object v0
.end method
