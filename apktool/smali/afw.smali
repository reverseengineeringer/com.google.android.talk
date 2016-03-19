.class public final Lafw;
.super Lafr;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lafu;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1e

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "BEGIN"

    aput-object v2, v1, v4

    const-string v2, "END"

    aput-object v2, v1, v5

    const-string v2, "LOGO"

    aput-object v2, v1, v6

    const-string v2, "PHOTO"

    aput-object v2, v1, v7

    const-string v2, "LABEL"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "FN"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "TITLE"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "SOUND"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "VERSION"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "TEL"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "EMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "TZ"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "GEO"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "NOTE"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "URL"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "BDAY"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "ROLE"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "REV"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "UID"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "KEY"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "MAILER"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "NAME"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "PROFILE"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "SOURCE"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "NICKNAME"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "CLASS"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "SORT-STRING"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "CATEGORIES"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "PRODID"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "IMPP"

    aput-object v3, v1, v2

    .line 43
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lafw;->a:Ljava/util/Set;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "7BIT"

    aput-object v2, v1, v4

    const-string v2, "8BIT"

    aput-object v2, v1, v5

    const-string v2, "BASE64"

    aput-object v2, v1, v6

    const-string v2, "B"

    aput-object v2, v1, v7

    .line 64
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lafw;->b:Ljava/util/Set;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lafr;-><init>()V

    .line 73
    new-instance v0, Lafu;

    invoke-direct {v0}, Lafu;-><init>()V

    iput-object v0, p0, Lafw;->c:Lafu;

    .line 74
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Lafr;-><init>()V

    .line 77
    new-instance v0, Lafu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lafu;-><init>(B)V

    iput-object v0, p0, Lafw;->c:Lafu;

    .line 78
    return-void
.end method


# virtual methods
.method public a(Lafq;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lafw;->c:Lafu;

    invoke-virtual {v0, p1}, Lafu;->a(Lafq;)V

    .line 83
    return-void
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lafw;->c:Lafu;

    invoke-virtual {v0, p1}, Lafu;->a(Ljava/io/InputStream;)V

    .line 88
    return-void
.end method
