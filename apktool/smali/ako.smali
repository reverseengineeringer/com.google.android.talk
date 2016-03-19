.class final enum Lako;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lako;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lako;

.field public static final enum b:Lako;

.field public static final enum c:Lako;

.field public static final enum d:Lako;

.field public static final enum e:Lako;

.field public static final enum f:Lako;

.field private static final synthetic g:[Lako;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 627
    new-instance v0, Lako;

    const-string v1, "INITIALIZE"

    invoke-direct {v0, v1, v3}, Lako;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lako;->a:Lako;

    .line 629
    new-instance v0, Lako;

    const-string v1, "RESOURCE_CACHE"

    invoke-direct {v0, v1, v4}, Lako;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lako;->b:Lako;

    .line 631
    new-instance v0, Lako;

    const-string v1, "DATA_CACHE"

    invoke-direct {v0, v1, v5}, Lako;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lako;->c:Lako;

    .line 633
    new-instance v0, Lako;

    const-string v1, "SOURCE"

    invoke-direct {v0, v1, v6}, Lako;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lako;->d:Lako;

    .line 635
    new-instance v0, Lako;

    const-string v1, "ENCODE"

    invoke-direct {v0, v1, v7}, Lako;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lako;->e:Lako;

    .line 637
    new-instance v0, Lako;

    const-string v1, "FINISHED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lako;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lako;->f:Lako;

    .line 625
    const/4 v0, 0x6

    new-array v0, v0, [Lako;

    sget-object v1, Lako;->a:Lako;

    aput-object v1, v0, v3

    sget-object v1, Lako;->b:Lako;

    aput-object v1, v0, v4

    sget-object v1, Lako;->c:Lako;

    aput-object v1, v0, v5

    sget-object v1, Lako;->d:Lako;

    aput-object v1, v0, v6

    sget-object v1, Lako;->e:Lako;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lako;->f:Lako;

    aput-object v2, v0, v1

    sput-object v0, Lako;->g:[Lako;

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
    .line 625
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lako;
    .locals 1

    .prologue
    .line 625
    const-class v0, Lako;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lako;

    return-object v0
.end method

.method public static values()[Lako;
    .locals 1

    .prologue
    .line 625
    sget-object v0, Lako;->g:[Lako;

    invoke-virtual {v0}, [Lako;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lako;

    return-object v0
.end method
