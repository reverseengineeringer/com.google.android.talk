.class final Lkmv;
.super Lkmn;
.source "SourceFile"


# static fields
.field static final o:Lkmv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1362
    new-instance v0, Lkmv;

    invoke-direct {v0}, Lkmv;-><init>()V

    sput-object v0, Lkmv;->o:Lkmv;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1360
    invoke-direct {p0}, Lkmn;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1360
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lkmn;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public b(C)Z
    .locals 1

    .prologue
    .line 1366
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1371
    const-string v0, "CharMatcher.javaDigit()"

    return-object v0
.end method
