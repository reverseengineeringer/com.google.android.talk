.class enum Lkuh;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkuh;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lkuh;

.field public static final enum b:Lkuh;

.field public static final enum c:Lkuh;

.field public static final enum d:Lkuh;

.field public static final enum e:Lkuh;

.field private static final synthetic f:[Lkuh;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 697
    new-instance v0, Lkui;

    const-string v1, "EXPLICIT"

    invoke-direct {v0, v1}, Lkui;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkuh;->a:Lkuh;

    .line 710
    new-instance v0, Lkuj;

    const-string v1, "REPLACED"

    invoke-direct {v0, v1}, Lkuj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkuh;->b:Lkuh;

    .line 721
    new-instance v0, Lkuk;

    const-string v1, "COLLECTED"

    invoke-direct {v0, v1}, Lkuk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkuh;->c:Lkuh;

    .line 732
    new-instance v0, Lkul;

    const-string v1, "EXPIRED"

    invoke-direct {v0, v1}, Lkul;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkuh;->d:Lkuh;

    .line 743
    new-instance v0, Lkum;

    const-string v1, "SIZE"

    invoke-direct {v0, v1}, Lkum;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkuh;->e:Lkuh;

    .line 692
    const/4 v0, 0x5

    new-array v0, v0, [Lkuh;

    const/4 v1, 0x0

    sget-object v2, Lkuh;->a:Lkuh;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lkuh;->b:Lkuh;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lkuh;->c:Lkuh;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lkuh;->d:Lkuh;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lkuh;->e:Lkuh;

    aput-object v2, v0, v1

    sput-object v0, Lkuh;->f:[Lkuh;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 692
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkuh;
    .locals 1

    .prologue
    .line 692
    const-class v0, Lkuh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkuh;

    return-object v0
.end method

.method public static values()[Lkuh;
    .locals 1

    .prologue
    .line 692
    sget-object v0, Lkuh;->f:[Lkuh;

    invoke-virtual {v0}, [Lkuh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkuh;

    return-object v0
.end method
