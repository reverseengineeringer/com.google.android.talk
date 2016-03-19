.class public enum Lanq;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lanq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lanq;

.field public static final enum b:Lanq;

.field public static final enum c:Lanq;

.field public static final d:Lanq;

.field private static final synthetic e:[Lanq;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    new-instance v0, Lanq;

    const-string v1, "IGNORE"

    invoke-direct {v0, v1, v2}, Lanq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanq;->a:Lanq;

    .line 203
    new-instance v0, Lanr;

    const-string v1, "LOG"

    invoke-direct {v0, v1}, Lanr;-><init>(Ljava/lang/String;)V

    sput-object v0, Lanq;->b:Lanq;

    .line 214
    new-instance v0, Lans;

    const-string v1, "THROW"

    invoke-direct {v0, v1}, Lans;-><init>(Ljava/lang/String;)V

    sput-object v0, Lanq;->c:Lanq;

    .line 195
    const/4 v0, 0x3

    new-array v0, v0, [Lanq;

    sget-object v1, Lanq;->a:Lanq;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lanq;->b:Lanq;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lanq;->c:Lanq;

    aput-object v2, v0, v1

    sput-object v0, Lanq;->e:[Lanq;

    .line 225
    sget-object v0, Lanq;->b:Lanq;

    sput-object v0, Lanq;->d:Lanq;

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
    .line 195
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lanq;
    .locals 1

    .prologue
    .line 195
    const-class v0, Lanq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lanq;

    return-object v0
.end method

.method public static values()[Lanq;
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lanq;->e:[Lanq;

    invoke-virtual {v0}, [Lanq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lanq;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 229
    return-void
.end method
