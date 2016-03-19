.class public final Liqj;
.super Lipy;
.source "SourceFile"


# instance fields
.field i:Ljava/lang/String;

.field j:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/security/PrivateKey;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 510
    invoke-static {}, Lipv;->a()Lipx;

    move-result-object v0

    invoke-direct {p0, v0}, Lipy;-><init>(Lipx;)V

    .line 511
    const-string v0, "https://accounts.google.com/o/oauth2/token"

    invoke-direct {p0, v0}, Liqj;->b(Ljava/lang/String;)Liqj;

    .line 512
    return-void
.end method

.method private b(Ljava/lang/String;)Liqj;
    .locals 1

    .prologue
    .line 744
    invoke-super {p0, p1}, Lipy;->a(Ljava/lang/String;)Lipy;

    move-result-object v0

    check-cast v0, Liqj;

    return-object v0
.end method


# virtual methods
.method public synthetic a(Ljava/lang/String;)Lipy;
    .locals 1

    .prologue
    .line 487
    invoke-direct {p0, p1}, Liqj;->b(Ljava/lang/String;)Liqj;

    move-result-object v0

    return-object v0
.end method
