.class public abstract enum Lkqd;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkqd;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lkqd;

.field public static final enum b:Lkqd;

.field public static final enum c:Lkqd;

.field public static final enum d:Lkqd;

.field public static final enum e:Lkqd;

.field private static final synthetic f:[Lkqd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lkqe;

    const-string v1, "EXPLICIT"

    invoke-direct {v0, v1}, Lkqe;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkqd;->a:Lkqd;

    .line 51
    new-instance v0, Lkqf;

    const-string v1, "REPLACED"

    invoke-direct {v0, v1}, Lkqf;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkqd;->b:Lkqd;

    .line 63
    new-instance v0, Lkqg;

    const-string v1, "COLLECTED"

    invoke-direct {v0, v1}, Lkqg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkqd;->c:Lkqd;

    .line 74
    new-instance v0, Lkqh;

    const-string v1, "EXPIRED"

    invoke-direct {v0, v1}, Lkqh;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkqd;->d:Lkqd;

    .line 85
    new-instance v0, Lkqi;

    const-string v1, "SIZE"

    invoke-direct {v0, v1}, Lkqi;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkqd;->e:Lkqd;

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Lkqd;

    const/4 v1, 0x0

    sget-object v2, Lkqd;->a:Lkqd;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lkqd;->b:Lkqd;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lkqd;->c:Lkqd;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lkqd;->d:Lkqd;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lkqd;->e:Lkqd;

    aput-object v2, v0, v1

    sput-object v0, Lkqd;->f:[Lkqd;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkqd;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lkqd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkqd;

    return-object v0
.end method

.method public static values()[Lkqd;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lkqd;->f:[Lkqd;

    invoke-virtual {v0}, [Lkqd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkqd;

    return-object v0
.end method


# virtual methods
.method abstract a()Z
.end method
