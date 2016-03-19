.class final Lknc;
.super Lknb;
.source "SourceFile"


# static fields
.field static final o:Lknc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1113
    new-instance v0, Lknc;

    invoke-direct {v0}, Lknc;-><init>()V

    sput-object v0, Lknc;->o:Lknc;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1116
    const-string v0, "CharMatcher.none()"

    invoke-direct {p0, v0}, Lknb;-><init>(Ljava/lang/String;)V

    .line 1117
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1187
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(C)Z
    .locals 1

    .prologue
    .line 1121
    const/4 v0, 0x0

    return v0
.end method
