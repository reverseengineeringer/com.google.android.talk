.class public abstract enum Lhoh;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhoh;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lhoh;

.field public static final enum b:Lhoh;

.field public static final enum c:Lhoh;

.field public static final enum d:Lhoh;

.field private static final synthetic e:[Lhoh;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 439
    new-instance v0, Lhoi;

    const-string v1, "POSSIBLE"

    invoke-direct {v0, v1}, Lhoi;-><init>(Ljava/lang/String;)V

    sput-object v0, Lhoh;->a:Lhoh;

    .line 451
    new-instance v0, Lhoj;

    const-string v1, "VALID"

    invoke-direct {v0, v1}, Lhoj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lhoh;->b:Lhoh;

    .line 473
    new-instance v0, Lhok;

    const-string v1, "STRICT_GROUPING"

    invoke-direct {v0, v1}, Lhok;-><init>(Ljava/lang/String;)V

    sput-object v0, Lhoh;->c:Lhoh;

    .line 505
    new-instance v0, Lhom;

    const-string v1, "EXACT_GROUPING"

    invoke-direct {v0, v1}, Lhom;-><init>(Ljava/lang/String;)V

    sput-object v0, Lhoh;->d:Lhoh;

    .line 434
    const/4 v0, 0x4

    new-array v0, v0, [Lhoh;

    const/4 v1, 0x0

    sget-object v2, Lhoh;->a:Lhoh;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lhoh;->b:Lhoh;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lhoh;->c:Lhoh;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lhoh;->d:Lhoh;

    aput-object v2, v0, v1

    sput-object v0, Lhoh;->e:[Lhoh;

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
    .line 434
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhoh;
    .locals 1

    .prologue
    .line 434
    const-class v0, Lhoh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhoh;

    return-object v0
.end method

.method public static values()[Lhoh;
    .locals 1

    .prologue
    .line 434
    sget-object v0, Lhoh;->e:[Lhoh;

    invoke-virtual {v0}, [Lhoh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhoh;

    return-object v0
.end method


# virtual methods
.method abstract a(Lhos;Ljava/lang/String;Lhof;)Z
.end method
