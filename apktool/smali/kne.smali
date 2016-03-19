.class final Lkne;
.super Lknd;
.source "SourceFile"


# static fields
.field static final o:Lkne;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1477
    new-instance v0, Lkne;

    invoke-direct {v0}, Lkne;-><init>()V

    sput-object v0, Lkne;->o:Lkne;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 1480
    const-string v0, "CharMatcher.singleWidth()"

    const-string v1, "\u0000\u05be\u05d0\u05f3\u0600\u0750\u0e00\u1e00\u2100\ufb50\ufe70\uff61"

    .line 1482
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const-string v2, "\u04f9\u05be\u05ea\u05f4\u06ff\u077f\u0e7f\u20af\u213a\ufdff\ufeff\uffdc"

    .line 1483
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 1480
    invoke-direct {p0, v0, v1, v2}, Lknd;-><init>(Ljava/lang/String;[C[C)V

    .line 1484
    return-void
.end method
