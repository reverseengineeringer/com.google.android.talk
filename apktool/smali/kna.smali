.class final Lkna;
.super Lkmn;
.source "SourceFile"


# static fields
.field static final o:Lkna;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1410
    new-instance v0, Lkna;

    invoke-direct {v0}, Lkna;-><init>()V

    sput-object v0, Lkna;->o:Lkna;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1408
    invoke-direct {p0}, Lkmn;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1408
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lkmn;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public b(C)Z
    .locals 1

    .prologue
    .line 1414
    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1419
    const-string v0, "CharMatcher.javaUpperCase()"

    return-object v0
.end method
